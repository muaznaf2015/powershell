#---Display all computers info in WSUS console
[reflection.assembly]::LoadWithPartialName("Microsoft.UpdateServices.Administration")
$wsus = [Microsoft.UpdateServices.Administration.AdminProxy]::getUpdateServer()
foreach( $group in $wsus.GetComputerTargetGroups() ){
  Write-Host "Group: " $group.Name " - " $group.GetComputerTargets().Count " member(s)"
}

#---Display all computers from WSUS Group
Get-WsusComputer -ComputerTargetGroups <group_name>

#---Ex: Assign computer to WSUS Group based on Client version
$GroupName = "G5 - 1909";
$clients = Get-WsusComputer | Where-Object {$_.ClientVersion -like "10.0.18362*"};
ForEach ($client in $clients) {
Add-WsusComputer -Computer $client -TargetGroupName $GroupName
}

#---Ex: Assign computer to WSUS Group based on Client version and OS Architecture
$GroupName = "G5 - 1909";
$clients = Get-WsusComputer | Where-Object {$_.OSArchitecture -like "*64*" -and $_.ClientVersion -like "10.0.17134*"};
ForEach ($client in $clients) {
Add-WsusComputer -Computer $client -TargetGroupName $GroupName
}

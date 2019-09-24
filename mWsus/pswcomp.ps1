#---Display all computers inside WSUS console
Get-WsusComputer

#---Display computer in WSUS from given name
Get-WsusComputer -NameIncludes <computer_name>
#---Example:
Get-WsusComputer -NameIncludes "COMPUTER101"

#---Display computers inside specific group
Get-WsusComputer -ComputerTargetGroups <group_name>
#---Example:
Get-WsusComputer -ComputerTargetGroups "Win10" | Select-Object FullDomainName > C:\Script\Win10.txt
(Get-WsusComputer -ComputerTargetGroups "Win10").Count
Get-WsusComputer

#---Display all computers info in WSUS console
[reflection.assembly]::LoadWithPartialName("Microsoft.UpdateServices.Administration")
$wsus = [Microsoft.UpdateServices.Administration.AdminProxy]::getUpdateServer()
foreach( $group in $wsus.GetComputerTargetGroups() ){
  Write-Host "Group: " $group.Name " - " $group.GetComputerTargets().Count " member(s)"
}

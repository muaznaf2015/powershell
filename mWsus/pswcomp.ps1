#---Display all computers inside WSUS console
Get-WsusComputer

#---Display all computers with all available properties
Get-WsusComputer | Select-Object *
#---Display all computers group by OS Version
Get-WsusComputer | Group-Object -Property ClientVersion | Select Count,Name
#---Display all computers group by Architecture
Get-WsusComputer | Group-Object -Property OSArchitecture | Select Count,Name

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

#---Display all computers, group them by Windows Version(Build Number)
Get-WsusComputer | Group-Object -Property ClientVersion | Select Count,Name

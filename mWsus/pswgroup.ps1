#---Display all computers info in WSUS console
[reflection.assembly]::LoadWithPartialName("Microsoft.UpdateServices.Administration")
$wsus = [Microsoft.UpdateServices.Administration.AdminProxy]::getUpdateServer()
foreach( $group in $wsus.GetComputerTargetGroups() ){
  Write-Host "Group: " $group.Name " - " $group.GetComputerTargets().Count " member(s)"
}

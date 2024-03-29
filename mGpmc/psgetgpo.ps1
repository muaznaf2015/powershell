#---List down all created GPO
Get-GPO -All

#---Search GPO by server/domain
Get-GPO -All -Domain <domain_name> -Server <server_name>

#---Search GPO by name
Get-GPO -All | where{$_.DisplayName -like '*Test*'}
Get-GPO -All | where{$_.DisplayName -like '*Test*'} | Select DisplayName, GPOStatus

#---Once name identified, display the specific GPO
Get-GPO -Name <GPO_name>
Get-GPO -Guid <GUID_number>

#---Get all configured IPv4 Scope
Get-DHCPServer4Scope

#---Get all leased IPv4 to clients
#---First command will run first, second command run need to provide the input, the first run comand will be the input
Get-DHCPServer4Scope | Get-DHCPServerv4Lease


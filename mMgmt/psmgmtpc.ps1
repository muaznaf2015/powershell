#---WMI and CMI is the same, the definition is management information
#---Display installed software
Get-WmiObject win32_product
Get-CimInstance win32_product

#---sid-500.com recommend to stay with Get-CimInstance **https://sid-500.com/2018/04/02/powershell-how-to-get-a-list-of-all-installed-software-on-remote-computers/
#---Use Get-Member to explore all properties
Get-CimInstance win32_product | Get-Member -MemberType Property

#---Display installed software in GridView
Get-CimInstance win32_product | Select-Object Name, PackageName, InstallDate | Out-GridView

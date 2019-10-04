#---WMI and CMI is the same, the definition is management information
#---Display installed software
Get-WmiObject win32_product
Get-CimInstance win32_product

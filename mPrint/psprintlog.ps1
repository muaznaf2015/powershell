#---Check LPD service log
$Begin = Get-Date -Date '10/2/2019 17:00:00'
$End = Get-Date -Date '10/3/2019 14:00:00'
Get-EventLog -LogName System -After $Begin -Before $End | Where {$_.Message -like "*LPD*"}

#---Check Print service
$Begin = Get-Date -Date '10/2/2019 17:00:00'
$End = Get-Date -Date '10/3/2019 14:00:00'
Get-EventLog -LogName System -After $Begin -Before $End | Where {$_.Message -like "*Print*"}

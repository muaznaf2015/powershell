#---How to use basic if else statement
if ($var = 3) {
Write-Host "Yes my friend..";
}
else {
Write-Host "No, you may leave..";
}

#---Use if else statement to check whether in the list array contains string
#$ComputerName = Get-Content "C:\<file_name>" #---If the list inside file
$ComputerName = @{"C101","C102","C103"}
if ($ComputerName.Contains("C110")) {
Write-Host "Yes my friend..";
}
else {
Write-Host "No, you may leave..";
}

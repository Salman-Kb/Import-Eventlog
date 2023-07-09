$Date1 = Get-Date 10/25/2022
$Date2 = Get-Date 11/15/2022
$Computer = Get-Content "E:\list.txt"
Foreach ($Computer in $Computer){
    Get-winEvent -ComputerName $Computer -FilterHashtable @{logName='Security'; StartTime=$Date1; Endtime=$Date2} | Export-CSV "E:\Excel\SecurityEventLogs\$Computer.csv" –NoTypeInformation
    }
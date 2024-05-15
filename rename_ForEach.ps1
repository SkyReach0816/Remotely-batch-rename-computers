$user = "danny"
$password = "d618" | ConvertTo-SecureString -AsPlainText -Force
$Credential = New-object System.Management.Automation.PSCredential($user,$password)
#New-PSSession -ComputerName 192.168.50.105 -Credential  $Credential
$ipnewname = Import-Csv -Path c:\pshell2\ipnewname.csv
$ipnewname|ForEach{
Rename-Computer -ComputerName  $_.ip  -NewName  $_.newname  -LocalCredential  $Credential  -Restart
}
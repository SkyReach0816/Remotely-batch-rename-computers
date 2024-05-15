$user = "user_name"
$password = "password" | ConvertTo-SecureString -AsPlainText -Force
$Credential = New-object System.Management.Automation.PSCredential($user,$password)
$ipnewname = Import-Csv -Path c:\pshell2\ipnewname.csv
$ipnewname|ForEach{
Rename-Computer -ComputerName  $_.ip  -NewName  $_.newname  -LocalCredential  $Credential  -Restart
}

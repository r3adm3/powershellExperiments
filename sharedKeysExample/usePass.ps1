$User = "testdomain\someuser"
$PasswordFile = "Password.txt"
$KeyFile = ".\keys\AES.key"
$key = Get-Content $KeyFile
$MyCredential = New-Object -TypeName System.Management.Automation.PSCredential `
 -ArgumentList $User, (Get-Content $PasswordFile | ConvertTo-SecureString -Key $key)

 write-host $user $MyCredential.GetNetworkCredential().Password

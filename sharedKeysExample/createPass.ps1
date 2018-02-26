$PasswordFile = "Password.txt"
$KeyFile = ".\keys\AES.key"
$Key = Get-Content $KeyFile
$Password = "this.is.my.password" | ConvertTo-SecureString -AsPlainText -Force
$Password | ConvertFrom-SecureString -key $Key | Out-File $PasswordFile
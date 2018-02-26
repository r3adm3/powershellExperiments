#(c) https://www.pdq.com/blog/secure-password-with-powershell-encrypting-credentials-part-2/

#this powershell will create a random 16 bit aes key in a subfolder called keys
$aeskeyfile = ".\keys\aes.key"

$Key = New-Object Byte[] 16   # You can use 16, 24, or 32 for AES

[Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($Key)

#write the file. Secure it with NTFS perms
$Key | out-file $KeyFile
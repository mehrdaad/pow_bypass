$command=Get-Content .\runme.ps1
$bytes=[System.Text.Encoding]::Unicode.GetBytes($command)
$encoded=[Convert]::ToBase64String($bytes)
powershell -EncodedCommand $encoded
#powershell -enc $encoded
<#
$enccom=[Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes((Get-Content .\runme.ps1)))
powershell -enc $enccom
powershell -enc ([Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes((gc .\runme.ps1))))
#>
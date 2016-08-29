Invoke-Command -scriptblock {Write-Host "THIS SENTENCE IS FALSE"}
<#Works with remote execution
Invoke-Command -computername Name -scriptblock {get-executionpolicy} | set-executionpolicy
#>
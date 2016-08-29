#Disables AuthorizationManager by setting to null. Resulting in Exec Policy set to unrestricted for remainder of session
function Disable-ExecutionPolicy {($ctx = $executioncontext.gettype().getfield("_context","nonpublic,instance").getvalue( $executioncontext)).gettype().getfield("_authorizationManager","nonpublic,instance").setvalue($ctx, (new-object System.Management.Automation.AuthorizationManager "Microsoft.PowerShell"))}  
Disable-ExecutionPolicy
.\runme.ps1
<#
Improve the following script on every possible way having in mind the following non-functional requirements:

Scalability
Robustness
Capacity
Reliability
Maintainability
Security
Usability
Interoperability

The idea is that you need to be able to perform reboots, sometimes to multiple servers at the same time.
In case of failure, send an email to systemadmins@diligent.com with the list of servers.
#>
$ScriptPath = Split-Path $MyInvocation.MyCommand.Path
Import-Module $ScriptPath\reboot.psm1
$menu = @”
Press 1 to reboot servera
Press 2 to reboot serverb
Press 3 to reboot servera and serverb

“@

$choice = Read-Host -Prompt $menu

switch ($choice) {
1 {Reboot $servera; break}
2 {Reboot $serverb; break}
3 {
Reboot $servera
Reboot $serverb
break
}
default{Write-Warning "Nothing rebooted"}
}
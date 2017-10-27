$ScriptPath = Split-Path $MyInvocation.MyCommand.Path
Import-Module $ScriptPath\reboot.psm1
$menu = @”
Press 1 to reboot servera
Press 2 to reboot serverb
Press 3 to reboot servera and serverb

“@

$choice = Read-Host -Prompt $menu

switch ($choice) {
    1 {
        Reboot $servera
        break
      }
    2 {
        Reboot $serverb
        break
      }
    3 {
        Reboot $servera
        Reboot $serverb
        break
      }
    default
    {
        Write-Warning "Nothing rebooted"
    }
}
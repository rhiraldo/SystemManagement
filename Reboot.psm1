Function Reboot()
{
    param(
    $Computer
    )
    Write-Host "Rebooting $Computer"
    shutdown /s $computer -r -t 00
}
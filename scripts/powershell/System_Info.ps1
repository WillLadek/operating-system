Write-Output "===== System Health Snapshot ====="
Write-Output "Date & Time: $(Get-Date)"
Write-Output "Hostname: $env:COMPUTERNAME"
Write-Output "Current User: $env:USERNAME"
Write-Output ""

$Disk = Get-PSDrive C
Write-Output "Disk Usage (C: Drive):"
Write-Output ("Free: {0:N2} GB  Total: {1:N2} GB" -f `
    ($Disk.Free / 1GB), `
    (($Disk.Free + $Disk.Used) / 1GB))

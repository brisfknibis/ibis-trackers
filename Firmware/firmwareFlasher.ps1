# Path to your firmware file
$firmwarePath = "D:\STL Files\Bris Trackers\Firmware\SlimeNRF_Tracker_NoSleep_SPI_StackedSmol.uf2"

# List of valid volume labels
$targetLabels = @("SLIMENRFTRK")

# Infinite loop
while ($true) {
    # Get all logical drives that match any of the target labels
    $drives = Get-WmiObject Win32_LogicalDisk | Where-Object { $targetLabels -contains $_.VolumeName }

    foreach ($drive in $drives) {
        $targetPath = Join-Path $drive.DeviceID (Split-Path $firmwarePath -Leaf)

        if (-Not (Test-Path $targetPath)) {
            Write-Host "[$(Get-Date -f 'HH:mm:ss')] Found $($drive.DeviceID) ($($drive.VolumeName)), copying firmware..."
            Copy-Item -Path $firmwarePath -Destination $targetPath -Force
            Write-Host "[$(Get-Date -f 'HH:mm:ss')] Copy complete."
        }
    }

    Start-Sleep -Seconds 2
}

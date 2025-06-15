# Path to your firmware file
# $firmwarePath = "D:\STL Files\Bris Trackers\Firmware\SellSPI30MinSensCal.uf2"
# $firmwarePath = "D:\STL Files\Bris Trackers\Firmware\SPI.uf2"
$firmwarePath = "D:\STL Files\Bris Trackers\Firmware\SPI1-Side.uf2"
# $firmwarePath = "D:\STL Files\Bris Trackers\Firmware\update-nice_nano_bootloader-0.9.2_nosd.uf2"

# Target volume label of the NiceNano
$targetLabel = "NICENANO"

# Infinite loop
while ($true) {
    # Get all drives with label NICENANO
    $drives = Get-WmiObject Win32_LogicalDisk | Where-Object { $_.VolumeName -eq $targetLabel }

    foreach ($drive in $drives) {
        $targetPath = Join-Path $drive.DeviceID (Split-Path $firmwarePath -Leaf)

        if (-Not (Test-Path $targetPath)) {
            Write-Host "[$(Get-Date -f 'HH:mm:ss')] Found $($drive.DeviceID), copying firmware..."
            Copy-Item -Path $firmwarePath -Destination $targetPath -Force
            Write-Host "[$(Get-Date -f 'HH:mm:ss')] Copy complete."
        }
    }

    Start-Sleep -Seconds 2
}

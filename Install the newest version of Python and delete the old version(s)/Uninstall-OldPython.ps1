# Detect and uninstall old Python versions except the one being installed
$excludeVersion = "3.14.2"  # Replace with the new version
$oldVersions = Get-WmiObject -Class Win32_Product | Where-Object {
    $_.Name -like "Python*" -and $_.Name -notlike "*$excludeVersion*"
}

foreach ($version in $oldVersions) {
    Write-Host "Uninstalling $($version.Name)"
    $version.Uninstall()
}

# Run uninstall script first
powershell.exe -ExecutionPolicy Bypass -File ".\Uninstall-OldPython.ps1"

# Install new Python silently
Start-Process ".\python-3.14.2-amd64.exe" -ArgumentList "/quiet InstallAllUsers=1 PrependPath=1 Include_launcher=1" -Wait

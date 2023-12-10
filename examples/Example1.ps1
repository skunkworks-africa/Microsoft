# Example1.ps1
# This script displays basic system information

# Get the hostname of the system
$hostname = $env:COMPUTERNAME

# Get the current user
$user = $env:USERNAME

# Get the operating system version
$os = Get-WmiObject -Class Win32_OperatingSystem

# Display the information
Write-Host "Hostname: $hostname"
Write-Host "Current User: $user"
Write-Host "Operating System: $($os.Caption), Version: $($os.Version)"

# End of script

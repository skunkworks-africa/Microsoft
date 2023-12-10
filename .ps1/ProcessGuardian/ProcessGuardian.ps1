<#
.SYNOPSIS
ProcessGuardian - A PowerShell tool for managing and investigating system processes.

.DESCRIPTION
ProcessGuardian provides functionalities to manage remote access processes, stop and blacklist processes, log process activities, and list irregular processes for investigation.

.AUTHOR
Skunkworks EdTech

.PRIVACY NOTE
This script does not collect or transmit any personal or sensitive data. It operates locally on the user's system and respects user privacy.

.DISCLAIMER
This tool is intended for use by experienced IT professionals. Incorrect use of this tool may lead to unintended system disruptions or network issues. Use it at your own risk. The author or organization is not responsible for any damage or data loss caused by the use of this script.

.LINK
GitHub: https://github.com/skunkworksza/microsoft/tree/main/.ps1/ProcessGuardian

MANUAL
    NAME
        ProcessGuardian.ps1 - A tool for managing and investigating system processes.

    SYNOPSIS
        ./ProcessGuardian.ps1

    DESCRIPTION
        ProcessGuardian is a PowerShell script for IT professionals to manage system processes. 
        It provides options to stop and blacklist remote access processes, log activities, 
        list irregular processes for investigation, and display blacklisted processes.

    OPTIONS
        1. Stop all and add to blacklist
        2. Kill process if all entries listed
        3. List irregular processes for investigation
        4. Display blacklisted processes

    REPORTING BUGS
        Report bugs to the GitHub Issues page at <https://github.com/skunkworksza/microsoft/issues>.

    COPYRIGHT
        Copyright (c) 2023 Skunkworks EdTech. License MIT: The MIT License <https://opensource.org/licenses/MIT>.

    SEE ALSO
        GitHub Repository: <https://github.com/skunkworksza/microsoft/tree/main/.ps1/ProcessGuardian>
#>

# PowerShell script to manage remote access processes

# [Functions: StopAndBlacklistProcesses, KillProcesses, ListIrregularProcesses, DisplayBlacklistedProcesses]

# Main script execution
try {
    # Display script options to the user
    Write-Host "Welcome to ProcessGuardian. Please select an option:"
    Write-Host "1. Stop all and add to blacklist"
    Write-Host "2. Kill process if all entries listed"
    Write-Host "3. List irregular processes for investigation"
    Write-Host "4. Display blacklisted processes"

    # Read user choice
    $userChoice = Read-Host "Enter your choice"

    # Execute the choice
    switch ($userChoice) {
        "1" {
            StopAndBlacklistProcesses $allProcesses
        }
        "2" {
            KillProcesses $allProcesses
        }
        "3" {
            ListIrregularProcesses
        }
        "4" {
            DisplayBlacklistedProcesses
        }
        default {
            Write-Host "Invalid choice selected."
        }
    }
}
catch {
    Write-Host "An error occurred: $_"
}

# Enable verbose output
$VerbosePreference = 'Continue'

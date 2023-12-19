@echo off
set /p directory="Enter directory path: "
powershell -Command "& {Get-ChildItem -Path '%directory%' -Recurse | Select-Object FullName, LastWriteTime, Length | Export-Word -Path '%directory%\DirectoryListing.doc' -Force}"
echo Directory listing saved to '%directory%\DirectoryListing.doc'
pause

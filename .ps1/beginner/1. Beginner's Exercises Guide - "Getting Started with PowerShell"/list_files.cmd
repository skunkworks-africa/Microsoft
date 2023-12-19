@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

:: Set the directory to list
SET "directory=C:\YourDirectoryPath"

:: Output file
SET "outputFile=%directory%\fileList.txt"

:: Creating/Clearing the output file
echo. > "%outputFile%"

:: Listing directories and files
FOR /R "%directory%" %%G IN (*) DO (
    ECHO %%G >> "%outputFile%"
)

echo Directory and file list written to %outputFile%
ENDLOCAL

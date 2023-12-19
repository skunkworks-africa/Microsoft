@echo off
set /p directory="Enter directory path: "
set /p outputfile="Enter output file path: "
dir "%directory%" /b /s > "%outputfile%"
echo Directory listing saved to "%outputfile%"
pause

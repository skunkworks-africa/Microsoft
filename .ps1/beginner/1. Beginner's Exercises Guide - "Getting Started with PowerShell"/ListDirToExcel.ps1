$directory = Read-Host -Prompt 'Enter directory path'
$outputFile = Read-Host -Prompt 'Enter output Excel file path (.xlsx)'

if (-not (Test-Path $directory)) {
    Write-Error "Directory does not exist"
    exit
}

$excel = New-Object -ComObject Excel.Application
$excel.Visible = $false
$workbook = $excel.Workbooks.Add()
$worksheet = $workbook.Worksheets.Item(1)

$worksheet.Cells.Item(1, 1) = "File Name"
$worksheet.Cells.Item(1, 2) = "Path"
$worksheet.Cells.Item(1, 3) = "Last Write Time"
$worksheet.Cells.Item(1, 4) = "Size (bytes)"

$row = 2
Get-ChildItem -Path $directory -Recurse | ForEach-Object {
    $worksheet.Cells.Item($row, 1) = $_.Name
    $worksheet.Cells.Item($row, 2) = $_.FullName
    $worksheet.Cells.Item($row, 3) = $_.LastWriteTime
    $worksheet.Cells.Item($row, 4) = $_.Length
    $row++
}

$workbook.SaveAs($outputFile)
$excel.Quit()
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($excel) | Out-Null

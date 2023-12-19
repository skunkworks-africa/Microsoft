function Export-Word {
    param (
        [Parameter(Mandatory=$true)]
        [Object]$InputObject,
        [Parameter(Mandatory=$true)]
        [String]$Path,
        [Switch]$Force
    )

    if (Test-Path $Path -and -not $Force) {
        Write-Error "File $Path already exists. Use -Force to overwrite."
        return
    }

    $word = New-Object -ComObject Word.Application
    $word.Visible = $false
    $doc = $word.Documents.Add()
    $range = $doc.Range()

    foreach ($item in $InputObject) {
        $range.Text += $item.FullName + "`t" + $item.LastWriteTime + "`t" + $item.Length + "`n"
    }

    $doc.SaveAs([ref] $Path, [ref] 0)
    $doc.Close()
    $word.Quit()
}

Set-Alias Export-Word Export-Word

Get-ChildItem -Recurse -File |
Where-Object { $_.Length -gt 10MB } |
Sort-Object Length |
ForEach-Object { Write-Output $_.FullName }

# Loop through all files in a directory recursively
$items = @()
$items += Get-ChildItem -Recurse -File

$sortedItems = @()
$numberOfSortedItems = 0

# Use a foreach loop to filter only files with .whatever extention
foreach ($item in $items) {
    <# $currentItemName is the current item #>
    if ($item.Extension -eq ".pdf" ) {
        $sortedItems += $item
        $numberOfSortedItems += 1
    }
}

# display these files
foreach ($item in $sortedItems) {
    Write-Host $item.Name
}
# output the number of files found
Write-Host "There were $numberOfSortedItems items found"
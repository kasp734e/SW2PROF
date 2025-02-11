# Promt for age input
$age = Read-Host "Please enter your age: "
# Use if else to catagorize user as:
# child (<13)
# teenager (13-19)
# adult (>20)

if ($age -lt 13) {
    $category = "child"
} elseif ($age -ge 13 -and $age -le 19) {
    $category = "teenager"
} else {
    $category = "adult"
}

# output catagory
Write-Host "You are a $category"

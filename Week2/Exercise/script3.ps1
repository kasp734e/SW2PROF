$randomNumber = Get-Random -Minimum 0 -Maximum 100
$guesses = 0

while ($userNumber -ne $randomNumber) {
    $userNumber = Read-Host "Please guess a number: "
    $guesses += 1

    if ($userNumber -lt $randomNumber) {
        Write-Host "Too small"
    } elseif ($userNumber -gt $randomNumber) {
        Write-Host "Too big"
    }
}

Write-Host "The number was $userNUmber, you took $guesses guesses to guess it"

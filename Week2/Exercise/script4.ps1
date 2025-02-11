$PowerShellWords = @(
    "cmdlet",
    "pipeline",
    "scriptblock",
    "variable",
    "automation",
    "function",
    "module",
    "foreach",
    "object",
    "parameter",
    "shell",
    "command",
    "alias",
    "filter",
    "provider",
    "scope",
    "execution",
    "syntax",
    "session",
    "debugger",
    "workflow",
    "script",
    "psobject",
    "remoting",
    "erroraction",
    "errorvariable",
    "switch",
    "output",
    "input",
    "authentication",
    "backgroundjob",
    "profile",
    "credential",
    "psdrive",
    "getchilditem",
    "setexecutionpolicy",
    "invokecommand",
    "formattable",
    "selectobject",
    "wmiobject",
    "startprocess",
    "writehost",
    "readhost"
)

#Select a random word from a predefined list - se below.
$randomNumberForWord = Get-Random -Minimum 0 -Maximum 43

$word = $PowerShellWords[$randomNumberForWord]
$lettersLeftInWord = $word
$wordLen = $word.Length

$tempWord = ""
$numberOfAllowedGuesses = 6
$numberOfGuesses = 0
$guessedLetters = ""

for ($i = 0; $i -lt $wordLen; $i++) {
    $tempWord += "_"
}

while ($tempWord.Contains("_")) {
    Clear-Host
    if ($numberOfGuesses -eq $numberOfAllowedGuesses) {
        break
    }
    Write-Host "$tempWord : You have $(($numberOfAllowedGuesses - $numberOfGuesses)) guesses left `n"
    if ($numberOfGuesses -eq 0) {

    } else {
        Write-Host "Guessed letters : $guessedLetters `n"
    }
    

    $guess = Read-Host "Guess a letter: "
    $guessedLetters += $guess
    if ($word.Contains($guess)) {
        Write-Host "There is a $guess in the word"

        while ($lettersLeftInWord.Contains($guess)) {
            for ($i = 0; $i -lt $wordLen; $i++) {
                if ($word[$i] -eq $guess) {
                    $tempWord = $tempWord.Substring(0, $i) + $guess + $tempWord.Substring($i + 1)
                }
            }
            $lettersLeftInWord = $lettersLeftInWord.Replace($guess, "")    
        }
    } else {
        $numberOfGuesses += 1
    }
}

Write-Host "The word was $word"

#Display the word as underscores (_) for each letter.

#Prompt the player to guess a letter.

#Reveal correctly guessed letters in the word while keeping the rest hidden.

#Track the number of incorrect guesses (max 6 incorrect guesses allowed).

#End the game when the player guesses the word or runs out of attempts.



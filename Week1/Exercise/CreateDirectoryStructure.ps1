# Tager et argument som ugenummer
$WeekNo=$args[0]

# Opretter mappen Week${WeekNo} og undermappen Exercise
mkdir ./Week${WeekNo}
mkdir ./Week${WeekNo}/Exercise

# Opretter filerne Notes.txt, Exercise1.ps1 og Exercise2.ps1
touch ./Week${WeekNo}/Notes.txt
touch ./Week${WeekNo}/Exercise/Exercise1.ps1
touch ./Week${WeekNo}/Exercise/Exercise2.ps1
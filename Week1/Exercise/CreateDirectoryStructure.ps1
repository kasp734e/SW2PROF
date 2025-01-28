# Tager et argument som ugenummer
param (
    [int]$WeekNo
)

# Opretter mappen Week$WeekNo og undermappen Exercise
New-Item -ItemType Directory -Path "./Week$WeekNo"
New-Item -ItemType Directory -Path "./Week$WeekNo/Exercise"

# Opretter filerne Notes.txt, Exercise1.ps1 og Exercise2.ps1
New-Item -ItemType File -Path "./Week$WeekNo/Notes.txt"
New-Item -ItemType File -Path "./Week$WeekNo/Exercise/Exercise1.ps1"
New-Item -ItemType File -Path "./Week$WeekNo/Exercise/Exercise2.ps1"
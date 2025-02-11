find . -type f -exec stat -f "%N %z" {} \; | sort -r -k 2 -n | head -5

# finder alle filer i mappen rekursivt
# -f betyder kun filer ikke mapper
# -exec stat kører stat på alle filer
# -f %N %z {} er argumenterne for stat 
# sort sorterer -k 2 betyder kolonne 2 (filstørrelse)
# -n betyder numerisk sort
# head -5 printer de første 5 linjer
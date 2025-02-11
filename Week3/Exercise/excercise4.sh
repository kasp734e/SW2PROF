mkdir "backup_$(date -I)"

for item in *.txt; do
    mv "$item" "./backup_$(date -I)"
done
# Find all unique directories containing .cpp or .h files
directories=$(find / -type f \( -name "*.cpp" -o -name "*.h" \) -exec dirname {} \; | sort -u)

# Copy each unique directory to the destination
for dir in $directories; do
    cp -r "$dir" "/Users/kasperjensen/SkoleKode/SW2PROF/Week3/Exercise/Collected_Code"
done
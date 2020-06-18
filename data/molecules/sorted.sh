#Sort files by their length
#Usage: bash sorted.sh one_or_more_filenames
echo "Sorting begin"
wc -l "$@" | sort -n
echo "Done sorting"

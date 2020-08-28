#!/usr/bin/bash
find $1 -type f >> output.txt

j=0
a=0
for word in $(cat output.txt)
do
	awk 'NF > 0' $word > file.txt
	a=$(wc -l < file.txt)
	a=$((a+0))
	j=$(($j+$a))
	rm file.txt
done
echo "$j"
rm output.txt


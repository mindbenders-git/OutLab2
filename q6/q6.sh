#!/usr/bin/bash

cp $1 copy.txt
for word in $(cat $1);
do
	if grep -w -i "$word" $2 > out.txt; then
		sed -i "s/$word/bleep/g" copy.txt
	fi
done
echo "$(<copy.txt)"
rm copy.txt
rm out.txt

#!/usr/bin/bash
arr1=()
arr2=()

for num in $(cat actual_output.txt)
do
	arr1+=($num)
done
for num in $(cat generated_output.txt)
do
	arr2+=($num)
done
a=${#arr1[@]}
j=0
for (( i=0; i<$a; i++))
do
	if [ ${arr1[$i]} -eq ${arr2[$i]} ]
	then
		let j+=1
	fi
done
echo "Secured $j marks out of $a"

#! /bin/bash

read str

declare -i index
declare -i val
declare -a arr

#q5a
index=${#str}
let index--
let val=0
while (( "$index" >= 0 ))
do
	arr[$val]="${str:$index:1}"
	let val++
	let index--
done

for ((j=0;j<$val;j++))
do
	echo -n "${arr[$j]}"
done
echo


#q5b
for ((j=0;j<val;j++))
do
	c="${arr[$j]}"
	printf -v num %d "'$c"
	(( num += 1 ))
	printf -v newchar \\$(printf '%03o' "$num")
	echo -n "$newchar"
done
echo


#q5c
size=${#str}
let index=($size/2)
let index--

while (( "$index" >= 0 ))
do
	echo -n "${str:$index:1}"
	let index--
done
let index=($size/2)
echo -n "${str:$index}"
echo

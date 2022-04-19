#! /bin/bash


read str

declare -i index
index=${#str}
let index--

while (( "$index" >= 0 ))
do
	c="${str:$index:1}"
	printf -v num %d "'$c"
	(( num += 1 ))
	printf -v newchar \\$(printf '%03o' "$num")
	echo -n "$newchar"
	let index--
done

echo
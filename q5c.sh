#! /bin/bash

read str
declare -i index
declare -i size

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
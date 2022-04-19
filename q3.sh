#! /bin/bash

#q3a
for i in $(wc -c $1)
do
	echo "FILE SIZE: $i"
	break
done

#q3b
for i in $(wc -l $1)
do
	echo "NUMBER OF LINES IN FILE: $i"
	break
done

#q3c
for i in $(wc -w $1)
do
	echo "NUMBER OF WORDS IN THE FILE: $i"
	break
done



#q3d
cnt=0

touch temp.txt
touch line.txt

while IFS= read -r line
do
	let cnt++
	echo $line > line.txt
	wc -w line.txt > temp.txt
	for i in $(cat temp.txt)
	do
		echo "Line No:$cnt - Count of Words:$i"
		break
	done
done < $1
rm line.txt
rm temp.txt

#q3e
declare -i index
index=0
declare -a txtarr
declare -a cntarr

for i in $(cat $1)
do
	f=1
	for ((j=0;j<$index;j++))
	do
		if [ "$i" == "${txtarr[$j]}" ]
		then
		{
			let cntarr[$j]++
			f=0
			break
		}
		fi
	done
	if (( "$f" == 1 ))
	then
	{
		txtarr[$index]="$i"
		let cntarr[$index]=1
		let index++
	}
	fi
done

for ((i=0;i<${#txtarr[*]};i++))
do
	echo "${txtarr[$i]}: ${cntarr[$i]}"
done
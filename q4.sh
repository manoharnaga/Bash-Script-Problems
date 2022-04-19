#! /bin/bash


oldIFS="$IFS" #store IFS value
#echo ${arr[*]}
IFS=","


read -a arr
declare -i size
size=${#arr[*]}


for ((i=0;i<$size;i++))
do
	for ((j=$i;j<$size;j++))
	do
		if (( "${arr[$i]}" > "${arr[$j]}" ))
		then
			temp=${arr[$i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$temp
		fi
	done
done

echo ${arr[*]}

IFS="$oldIFS" #restore IFS value

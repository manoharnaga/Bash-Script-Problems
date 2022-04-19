#! /bin/bash

grep . quotes.txt > temp.txt

temp=temp.txt

while read -r line;
do
        a="$line"
        temp_prefix=${a#*~} #prefix remove
        temp_suffix=${a%.*} #suffix remove
        echo "$temp_prefix once said,\"$temp_suffix.\""
        
done < $temp > speech.txt

rm temp.txt

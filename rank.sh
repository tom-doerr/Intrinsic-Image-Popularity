#!/bin/bash

set -x

base_path="$1"
filter="$2"

files_without_score=""
for e in $base_path/$filter*\.jpg
do
        if ! grep $e scores/Camera 
        then
                echo e: $e                                         
                files_without_score="$files_without_score\n$e"
        fi
done
echo "$files_without_score"
printf "$files_without_score"

printf "$files_without_score" | parallel -j1 python3 test.py --image_path  | tee -a scores/$base_path
#printf "$files_without_score" | grep "\.jpg" | parallel -j1 python3 test.py --image_path  | tee -a scores/$base_path
#eval "echo $files_without_score"' | grep "\.jpg" | grep "$filter" | parallel -j1 python3 test.py --image_path ' | tee -a scores/"$base_path"
#eval 'find $base_path/* | grep "\.jpg" | grep "$filter" | parallel -j1 python3 test.py --image_path ' | tee -a scores/"$base_path"
#./sort_to_dir.sh scores/$base_path


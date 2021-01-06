#!/bin/bash

set -x

base_path="$1"
#for e in $(find $base_path/* | grep '\.jpg')
#do
#        printf "$e   "
#        python3 test.py --image_path "$e" > results/"$base_path"
#done

eval 'find $base_path/* | grep "\.jpg" | parallel -j10 python3 test.py --image_path ' | tee results/"$base_path"


#!/bin/bash

set -x

base_path="$1"
filter="$2"

eval 'find $base_path/* | egrep "\.(jpg|png)" | grep "$filter" | parallel -j1 python3 test.py --image_path ' | tee -a results/"$base_path"
./sort_to_dir.sh $base_path


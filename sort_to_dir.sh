#!/bin/bash

set -x

log_file=$1
top_num=$(sort -n $log_file | tail -n1 | awk '{print $1}')
echo top_num: $top_num

log_file_dir_sorted="$log_file"_sorted
for i in {0..8}
do
    mkdir -p $log_file_dir_sorted/$i
    for e in $(cat $log_file  | awk '/ '"$i"'\./ {print $2}')
    do
        ln -s ../../../$e $log_file_dir_sorted/$i/
    done
done

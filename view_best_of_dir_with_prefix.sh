#!/bin/bash


target_dir=$1
prefix=$2

for e in $(ls $target_dir/*/$prefix* | sort -r)
do
        echo $e
        eog $e
done

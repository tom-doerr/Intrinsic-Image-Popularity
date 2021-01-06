#!/bin/bash

set -x

base_path="$1"

eval 'find $base_path/* | grep "\.jpg" | parallel -j10 python3 test.py --image_path ' | tee results/"$base_path"


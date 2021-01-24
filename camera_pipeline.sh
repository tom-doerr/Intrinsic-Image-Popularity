#!/bin/bash

set -x 

source venv/bin/activate

./rank.sh Camera 2021
cd /home/tom/git/Intrinsic-Image-Popularity/results/Camera_sorted

for e in {2..7}
do
        rating_class_path=~/syncthing/results/$e/
        mkdir -p $rating_class_path
        cp -rL $e/* $rating_class_path
done

#!/bin/bash

./rank.sh Camera
cd /home/tom/git/Intrinsic-Image-Popularity/results/Camera_sorted

for e in {4..7}
do
        cp -rL $e/ ~/syncthing/results/$e
done

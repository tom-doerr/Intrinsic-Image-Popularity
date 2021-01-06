#!/bin/bash

while true
do
    best_image_log="$(sort -n results/Camera | tail -n1)"
    echo $best_image_log
    ln -fs $(echo $best_image_log | awk '{print $2}') best_image
    sleep 10
done

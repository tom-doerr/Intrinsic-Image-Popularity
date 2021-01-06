#!/bin/bash

while true
do
    ln -fs $(sort -n results/Camera | tail -n1 | awk '{print $2}') best_image
    sleep 10
done

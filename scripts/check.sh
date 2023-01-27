#!/bin/bash

echo "Enter the website link:"
read website

while true; do
    curl -I $website | head -n 1
    if [ $? -eq 0 ]; then
        echo "Website is up!"
        break
    fi
    sleep 60
done


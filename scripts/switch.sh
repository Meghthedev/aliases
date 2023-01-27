#!/bin/bash

read -p "Enter the number of the first desktop you want to switch to (0-indexed): " desktop1_num
read -p "Enter the number of the second desktop you want to switch to (0-indexed): " desktop2_num

while true; do
    if wmctrl -d | grep "^$desktop1_num " &> /dev/null; then # check if first desktop exists
        if wmctrl -d | grep "^$desktop2_num " &> /dev/null; then # check if second desktop exists
            wmctrl -s $desktop1_num
            sleep 11
            wmctrl -s $desktop2_num
            sleep 11
        else
            echo "Invalid second desktop number. Please enter a valid number."
            exit 1
        fi
    else
        echo "Invalid first desktop number. Please enter a valid number."
        exit 1
    fi
done

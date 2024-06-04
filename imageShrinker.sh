#!/bin/bash

shopt -s nocasematch

for item in ./images/*; do
    if [[ ! -d $item ]]; then
        if [[ $item =~ .*\.(jpg|png|webp)$  ]];then
            if [[ ! $item =~ (small|medium|large)-.* ]]; then
                echo converting $item
                convert -resize 50% "$item" "$( dirname "$item" )/medium-$( basename "$item" )"
                convert -resize 25% "$item" "$( dirname "$item" )/small-$( basename "$item" )"
                mv "$item" "$( dirname "$item" )/large-$( basename "$item" )"
            else
                echo $item is already converted
            fi
        fi
    fi
done

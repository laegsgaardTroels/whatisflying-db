#!/bin/bash

find ./data -type f -iname "*.jpg" -exec jpegoptim --strip-all {} \;
find ./data -type f -iname "*.jpg" -exec jpegoptim --max=90 --threshold=1 {} \;
find ./data -type f -iname "*.svg" -exec svgo --input={} --output={} \;

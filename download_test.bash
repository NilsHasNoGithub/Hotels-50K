#!/usr/bin/bash

set -e

URL="https://cs.slu.edu/~stylianou/images/hotels-50k/test.tar.lz4"
OUT_FILE="images/test.tar.lz4"


# Download the file
echo "Downloading $URL"
[ -f "$OUT_FILE" ] || curl --insecure -o $OUT_FILE $URL

# Extract the file
echo "Extracting images/test.tar.lz4"
unlz4 $OUT_FILE
rm $OUT_FILE
tar -xvf images/test.tar -C images/
rm images/test.tar



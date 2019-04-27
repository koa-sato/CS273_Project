#!/bin/bash

cat ./output/output.csv | while read line
do
    echo ${line##*,} >> ./output/ASIN.txt
done

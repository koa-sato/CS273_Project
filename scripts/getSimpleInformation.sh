#!/bin/bash

cat laptopURL.txt | while read line
do
    amazon2csv.py -u $line | tee -a ./output/output.csv    
done
sed -i '/^Product/ d' ./output/output.csv


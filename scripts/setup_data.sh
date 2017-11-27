#!/bin/bash

# This is a script which will download the data for the final project into
# the raw_data < data directory. 

# Chelsea Noack, cnoackj@gmail.com
# November 13, 2017

# For loop to gather the data

export PATH=$PATH:/Users/chelseanoack/Desktop/bioinformatics_class/FinalProject/sratoolkit.2.8.2-1-mac64/bin

for SRA_number in $(cut -f 7 data/raw_data/SraRunTable.txt | tail -n +3)
do
	fastq-dump.2.8.2 -v $SRA_number -O data/raw_data
	echo "Dumping SRATable files into raw data folder"
done


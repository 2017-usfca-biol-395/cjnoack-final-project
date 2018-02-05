#!/bin/bash

# Script which installs tools to download and sequence files for RNA-Seq 
# analysis. The data for the final project will be placed into the raw_data
# < data directory. 

# Chelsea Noack
# November 13, 2017
# cnoackj@gmail.com

----------------------------------------------------
# Chunk One: Downloading and testing the SRAToolKit

# Download newest sratoolkit .zip from NCBI from this link:
# https://github.com/ncbi/sra-tools/wiki/HowTo:-Binary-Installation#3-for-convenience-and-to-show-you-where-the-binaries-are-append-the-path-to-the-binaries-to-your-path-environment-variable

# Retrieve the tar file from the canonical location at NCBI
#curl -L --output sratoolkit.tar.gz http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-mac64.tar.gz

# Extract contents of the tar file
# tar -vxzf sratoolkit.tar.gz

# Append the path to the binaries to our PATH enviornment variable
# export PATH=$PATH:$PWD/sratoolkit.2.4.0-1.mac64/bin

# Test the binaries will be found by shell: It will produce something such as 
# "/Users/ChelseaNoack/Desktop/bioinformatics_class/FinalProject/sratoolkit.2.8.2-1.mac64/bin/fastqdump
# which fastq-dump

# Test toolkit functions
# fastq-dump --stdout SRR390728 | head -n 8
# If working, you will see a line of code 

----------------------------------------------------

# For loop to gather the data

export PATH=$PATH:/Users/chelseanoack/Desktop/bioinformatics_class/FinalProject/sratoolkit.2.8.2-1-mac64/bin

for SRA_number in $(cut -f 7 data/raw_data/SraRunTable.txt | tail -n +3)
do
	fastq-dump.2.8.2 -v $SRA_number -O data/raw_data
	echo "Dumping SRATable files into raw data folder"
done


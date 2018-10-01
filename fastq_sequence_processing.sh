#!/bin/bash

#Script to to identify top matches in the GenBank nucleotide database

#EmreOvet

#eovet@dons.usfca.edu


# Download files from run table into the raw_data directory

echo "Dowloading files to raw_data"

for SRA_number in $(cut -f 6 data/metadata/fierer_forensic_hand_mouse_SraRunTable.txt | tail -n +2)
do
    fastq-dump -v "$SRA_number" -O data/raw_data
done


#Create QC reports for each of the runs

echo "Creating QC reports for each of the runs"

fastqc data/raw_data/*.fastq --outdir=output/fastqc


#Trim the sequences based on their quality scores

echo "Trimming the sequences based on their quality scores"

for trim in data/raw_data/*.fastq
do
    TrimmomaticSE -threads 2 -phred33 "$trim" data/trimmed/"$(basename "$trim" .fastq).trim.fastq" LEADING:5 TRAILING:5 SLIDINGWINDOW:8:25 MINLEN:150
done


#Convert fastq files into fasta files

echo "Converting fastq files into fasta files"

for convert in data/trimmed/*.trim.fastq
do
    bioawk -c fastx '{print ">"$name"\n"$seq}' "$convert" > data/trimmed/'$(basename -s .fastq $convert).fasta'
done


#Use blastn to search for the top match of each sequence against the nt database

echo "Using blastn to search for the match of each sequence against the nt database"

for blast in data/trimmed/*.fasta
do
    blastn -db /blast-db/nt -num_threads 2 -outfmt '10 sscinames std' -out output/"$(basename -s .trim.fasta "$blast")"_blast_results.csv -max_target_seqs 1 -negative_gilist /blast-db/2018-09-19_environmental_sequence.gi -query "$blast"
done

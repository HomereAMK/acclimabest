#!/bin/bash
#PBS -N merge
#PBS -o 98_log_files/log-merge.out
#PBS -l walltime=02:00:00
#PBS -l mem=10g
#PBS -r n

cd $PBS_O_WORKDIR

# Global variables
FOLDER="/scratch/home1/jleluyer/acclimabest/03_trimmed/assembly/"

#cat all reads
	cat "$FOLDER"/*R1.paired.fastq.gz > "$FOLDER"/paired_R1.fastq.gz
 
	cat "$FOLDER"/*R2.paired.fastq.gz > "$FOLDER"/paired_R2.fastq.gz

#!/bin/sh 
#SBATCH --time=07-00:00:00
#SBATCH --job-name="snrnaseq_nfcore"
#SBATCH -o snRNAseq.o%j
#SBATCH -e snRNAseq.e%j
#SBATCH --mail-user=m.chopra1@universityofgalway.ie
#SBATCH --mail-type=ALL

module load Anaconda3/2024.02-1
conda activate nfcore
nextflow run nf-core/scrnaseq -r 4.1.0 -profile singularity --input sample1.csv --outdir results_1_test --genome GRCh38 --protocol 10XV2 --aligner cellranger -c local.config

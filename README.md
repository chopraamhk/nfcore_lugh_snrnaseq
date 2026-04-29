# nfcore_snrnaseq_lugh-
Single nuclei RNAseq analysis using nf-core scrnaseq r 4.1.0

```
module load Anaconda3/2024.02-1
conda create -n nfcore
conda install bioconda::nextflow
conda install conda-forge::singularity
conda install conda-forge::squashfs-tools
```

sample1.csv looks like (expected number of nuclei can be changed based on targeted number of nuclei) 
```
sample,fastq_1,fastq_2,expected_cells
sample,path/to/sample_I1.fastq.gz,path/to/sample_I2.fastq.gz,3000
```

#might need to go to apptainer and set the temporary cache location and pull the Docker image 
```
cd /data4/mchopra/genewiz_azenta/90-1155124233/analysis_mc/.apptainer/
export APPTAINER_CACHEDIR="/data4/mchopra/genewiz_azenta/90-1155124233/analysis_mc/.apptainer/apptainer_cache"
apptainer pull docker://nfcore/anndatar:20241129
```

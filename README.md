# fimo_parallelise
Run FIMO on mutliple DNA sequences against all JASPAR2022 TF motifs

#### files needed
- FASTA sequences in a single file
  - we have the unified ATAC peaks for Atlantic salmon and Rainbow trout
  - we will fetch fasta sequences for these peaks using the command below
  - bedtools getfasta -fi Oncorhynchus_mykiss.USDA_OmykA_1.1.dna_sm.toplevel.fa  -bed RainbowTrout_concensus_peaks.bed > RainbowTrout_concensus_peaks.fa
  - we will use **RainbowTrout_concensus_peaks.fa** as the input file for fasta sequences
- JASPAR motifs in .meme format
  - download the non-redundant TF motifs from here https://jaspar.genereg.net/downloads/
  - or using the command line below:
  - wget -c https://jaspar.genereg.net/download/data/2022/CORE/JASPAR2022_CORE_non-redundant_pfms_meme.zip
  - extract the zip into jaspar_2022_motifs/ directory
  - we will provide path for the directory **jaspar_2022_motifs** for meme motifs


#### how to run
- download the bash script **fimo_parallel.sh** from this repository
- run the script using the command below
- . fimo_parallel.sh
  

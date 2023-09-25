#!/bin/bash

# Create a directory to write outputs
DIR_FINAL="fimo_results_trout"
mkdir $DIR_FINAL

# Define a function to run fimo
run_fimo() {
    MEME="$1"
    tmp1=$(echo "$MEME" | sed s/\\//_/g | cut -d'_' -f 4)

    DIR_FINAL="fimo_results_trout"

    outdir=$DIR_FINAL"/"$tmp1
    fimo --o $outdir $MEME RainbowTrout_concensus_peaks.fa
}

export -f run_fimo

# Find meme motif files and run FIMO in parallel
# -j option with number of CPU to be used; this will run -j jobs in parallel
# JASPAR motifs in .meme format are saved in jaspar_2022_motifs/

find jaspar_2022_motifs -type f -name '*.meme' | parallel -j 25 run_fimo

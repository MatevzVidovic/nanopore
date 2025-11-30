#stari ont reads, primerjava z nanocomp
#najprej qc in plot se s temi fajli
#lokacija starih timovih readov
#/scratch/timg/desiree_seq/input/ont/desiree_ont_raw.fastq

#napravili softlink v mojem filesystemu
oldreads_filepath="/scratch/timg/desiree_seq/input/ont/desiree_ont_raw.fastq"
output_base=$(pwd)"/outputs"

#za stare reade bomo izvedli enake analize kot za moje
subfolder="nanoqc_oldreads"
output_path="$output_base"/"$subfolder"
nanoQC "$oldreads_filepath" -o "$output_path"

subfolder="nanoplot_oldreads"
output_path="$output_base"/"$subfolder"
NanoPlot --fastq "$oldreads_filepath" -o "$output_path"


#symlink to assembly/inputs
target=$(realpath ../1reads_qc/outputs/library2.fastq)
ln -s $target ./inputs


target=/scratch/timg/desiree_seq/input/ont/desiree_ont_raw.fastq
ln -s $target ./inputs/timg_desiree.fastq

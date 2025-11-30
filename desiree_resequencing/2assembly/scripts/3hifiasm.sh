

is_test_run=true
threads=1

######################## assemblly 12
# !!! hifiasm version 
#Hifiasm-0.25.0-r726
asm_version=12
out_dir=$(pwd)/outputs/$asm_version
# create out dir
mkdir -p $out_dir
# activate conda env with 0.25 version

conda activate hifiasm

# paramters reference:
#https://hifiasm.readthedocs.io/en/latest/parameter-reference.html#hi-c-integration-options
# -s parameter:
#-s <FLOAT=0.55>
# Similarity threshold for duplicate haplotigs that should be purged. In default, 0.75 for -l1/-l2, 0.55 for -l3. 

#/DKED/scratch/timg/desiree_asm/data/hic/desiree_hic_raw_R2.fastq.gz

#run same command as last time, just add the merged ONT libraries to the list of reads


# ch="../../testing_setup/hic_and_hifi/lib2_201_400.fastq \
#     --h1 ../../testing_setup/hic_and_hifi/lib2_401_600.fastq \
#     --h2 ../../testing_setup/hic_and_hifi/lib2_601_800.fastq "

ch="../../testing_setup/hic_and_hifi/lib2_351_400.fastq \
    --h1 ../../testing_setup/hic_and_hifi/lib2_581_600.fastq \
    --h2 ../../testing_setup/hic_and_hifi/lib2_781_800.fastq "


if ! $is_test_run; then
    ch=" /scratch/timg/desiree_seq/output/reads/desiree_hifi_raw.fastq \
        --h1 /scratch/timg/desiree_seq/output/reads/desiree_hic_R1_raw.fastq \
        --h2 /scratch/timg/desiree_seq/output/reads/desiree_hic_R2_raw.fastq "
fi

hifiasm \
    -t $threads \
    -o $out_dir/desiree_$asm_version.asm \
    $ch \
    --ul ./inputs/mergedlibraries.fastq \
    --hom-cov 95 \
    --n-hap 4 > \
    $out_dir/desiree_$asm_version.log

conda deactivate





# hifiasm \
#     -t $threads \
#     -o $out_dir/desiree_$asm_version.asm \
#      /scratch/timg/desiree_seq/output/reads/desiree_hifi_raw.fastq \
#     --h1 /scratch/timg/desiree_seq/output/reads/desiree_hic_R1_raw.fastq \
#     --h2 /scratch/timg/desiree_seq/output/reads/desiree_hic_R2_raw.fastq \
#     --ul /scratch/evakrzisnik/desiree_resequencing/assembly/inputs/mergedlibraries.fastq \
#     --hom-cov 95 \
#     --n-hap 4 > \
#     $out_dir/desiree_$asm_version.log


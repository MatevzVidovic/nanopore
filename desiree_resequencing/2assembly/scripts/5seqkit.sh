


# add "_hapX" to the contig fasta header

# conda activate /users/timg/.conda/envs/seqkit
conda activate seqkit
asm_version=12
out_dir=$(pwd)/outputs/$asm_version


for hap in 1 2 3 4
do
  cat $out_dir/desiree_$asm_version.asm.hic.hap"$hap".p_ctg.fa | \
  seqkit replace -p $ -r _hap"$hap" > \
  $out_dir/$asm_version.asm.hap"$hap".p_ctg.fa
done
conda deactivate


# merge haplotypes
cat $out_dir/$asm_version.asm.hap*.p_ctg.fa > \
    $out_dir/$asm_version.asm.hap_all.p_ctg.fa
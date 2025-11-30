
# conda activate /users/timg/.conda/envs/gfatools
conda activate gfatools

asm_version=12
out_dir=$(pwd)/outputs/$asm_version

# Convert gfas to fastas
for file in $out_dir/*.gfa; do
    # Check if the file does not end with "noseq.gfa"
    if [[ "$file" != *noseq.gfa ]]; then
        # Extract file name without extension
        file_name=$(basename "$file" .gfa)
        # Perform conversion using gfatools
        gfatools gfa2fa $file > $out_dir/$file_name.fa
        echo "Converted $file to ${out_dir}${file_name}.fa"
    fi
done
conda deactivate
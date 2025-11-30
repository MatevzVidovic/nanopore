
input_filepath=$(pwd)"/inputs/library2.fastq"
output_base=$(pwd)"/outputs"


#nanoqc
subfolder="nanoqc"
output_path="$output_base"/"$subfolder"
nanoQC "$input_filepath" -o "$output_path"


#nanoget
#subfolder="nanoget"
#output_path="$output_base"/"$subfolder"
#NanoGet --fastq "$input_filepath" > "${output_path}/nanoget_summary.txt"
#nanoget ni tool, ampak library, tako da ga ne morem klicat

#nanoplot
subfolder="nanoplot"
output_path="$output_base"/"$subfolder"
NanoPlot --fastq "$input_filepath" -o "$output_path"

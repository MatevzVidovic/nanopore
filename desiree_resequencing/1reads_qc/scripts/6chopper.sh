


#za moje reade bomo porezali prvih 20 bp in zadnjih 5 zaradi quality scorea 
#na prvem reportu za library2 in shranili v chopper podmapo v outputih
#bomo dodali še minscore 10 
#zbriši vse kar je do zdaj chopped in se enkrat pozeni vse skupaj s scorom
#nanocomp primerjava starih readov in teh chopped
input_filepath="./inputs/library2.fastq"
chopper_files=$(pwd)"/outputs/chopper/library2.fixedcrop_h20_t5_q10.fastq"
final_output_base="./outputs"

mkdir -p $(pwd)"/outputs/chopper"

chopper \
  --trim-approach fixed-crop \
  --cutoff 10 \
  --headcrop 20 \
  --tailcrop 5 \
  -t 8 \
  -i $input_filepath \
  > $chopper_files

#zdaj pa pripravimo report se iz teh, chopanih sekvenc

#za chopane reade bomo izvedli enake analize kot za moje
#predvsem nas zanima nanoqc diverziteta baz
subfolder="nanoqc_chopped"
output_path="$final_output_base"/"$subfolder"
# mkdir -p $output_path
nanoQC "$chopper_files" -o "$output_path"

subfolder="nanoplot_chopped"
output_path="$final_output_base"/"$subfolder"
NanoPlot --fastq "$chopper_files" -o "$output_path"

#



#path do vseh ostalih readov, ki grejo v assembly
#/scratch/timg/desiree_seq/output/reads

#ultra long ont readi stari in novi skupaj
#oboji readi skupaj s cat, possible odzipanje
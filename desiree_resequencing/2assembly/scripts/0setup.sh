
mkdir -p outputs
mkdir -p inputs


conda create -n hifiasm -c bioconda hifiasm 
conda activate hifiasm
mkdir -p .conda && conda env export > .conda/hifiasm.yml
conda deactivate

conda create -n gfatools -c bioconda gfatools 
conda activate gfatools
mkdir -p .conda && conda env export > .conda/gfatools.yml
conda deactivate

conda create -n seqkit -c bioconda seqkit 
conda activate seqkit
mkdir -p .conda && conda env export > .conda/seqkit.yml
conda deactivate


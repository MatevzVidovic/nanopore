

# manually check that all tools are latest (check their github pages to see what the latest version is)
conda create -n nanopack -c bioconda nanoqc nanoplot chopper

conda activate nanopack

pip install 'kaleido>=1.0.0'

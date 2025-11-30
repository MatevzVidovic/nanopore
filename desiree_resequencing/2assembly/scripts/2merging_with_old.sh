

is_test_run=true

# merging the two ONT libraries into one:

ch=""
if ! $is_test_run; then
    ch=./inputs/timg_desiree.fastq
fi

cat \
    ./inputs/library2.fastq \
    $ch \
    > ./inputs/mergedlibraries.fastq


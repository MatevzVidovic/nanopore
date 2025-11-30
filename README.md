

### Running code

To run a script, cd into the directory of one pipeline section (containing scripts/, inputs/, outputs/ and possibly .conda/).
The scripts should be run from there to work.


### Project dev practices

We want a single pipeline section (one dir in the pipeline) to use only one conda env.
We want the scripts to only use the files contained in this folder.
For this reason, we symlink files from elsewhere into its inputs/ directory (unless the programs do not work with symlinks, which has to be visibly mentioned in the pipeline section README.md).
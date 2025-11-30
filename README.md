

### Running code

To run a script, cd into the directory of one pipeline section (containing scripts/, inputs/, outputs/ and possibly .conda/).
The scripts should be run from there to work.


### Project dev practices

#### Locality

We want the scripts to only use the files contained in this folder.
For this reason, we symlink files from elsewhere into its inputs/ directory (unless the programs do not work with symlinks, which has to be visibly mentioned in the pipeline section README.md).

#### Conda envs

In the pipeline we run many tools. Usually, a tool is one top-level dependency in the conda env.
Our main concerns is for each tool to be the latest version.
Since each tool requires many dependencies, and the versions of those dependencies may conflict and cause problems,
we generally stick to the practice: one tool, one conda environment.
The practice is sometimes violated.
Whenever we use a tool, especially many tools in one env, 
we manually check that the versions are latest (based on the tool's github page).

We name our conda envs as: [tool_name]

We store our conda envs in: \<project section dir\>/.conda/[tool_name]










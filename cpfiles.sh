#!/usr/bin/env bash

# Loop over directories matching the pattern
for dir in 16comboM2/runFixedw[0-9]*m[0-9]*; do
    # Optional commands (currently commented out)
    # cd "$dir"
    # sbatch Allrun2
    # ./Allclean
    # rm slurm*
    # cd ..

    # Extract just the directory name (everything after the last /)
    subdir=$(basename "$dir")
    target_dir="16comboTinyDtM2"
   
    # Create the subdirectory in target_dir
    mkdir -p "$target_dir/$subdir"

    # Copy required directories/files
    cp -r "$dir/"OceanWave*   "$target_dir/$subdir/"
    cp -r "$dir/0.org"       "$target_dir/$subdir/"
    cp -r "$dir/constant"    "$target_dir/$subdir/"
    cp -r "$dir/"All*    "$target_dir/$subdir/"
    cp -r "$dir/system"      "$target_dir/$subdir/"
    cp -r "$dir/dynamicCode" "$target_dir/$subdir/"
    


done


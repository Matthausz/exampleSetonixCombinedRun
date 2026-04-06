for dir in runFixedw[0-9]*m[0-9]*; do
    cd "$dir"
   # rm slurm*
   # ./Allclean
   	
    sbatch Allrun2
    
    #sed -i '0,/=w/{s/=M4w/=M6w/}' Allrun2

    #sed -i '0,/=w/{s/0.00075/0.00025/}' system/controlDict
    #sed -i '0,/=w/{s/25/75/}' system/controlDict
    #sed -i 's/20/25/' system/decomposeParDict
    #sed -i 's/12:00/16:00/' Allrun2
    #sed -i 's|y += 2\*a2|y += 3*a2|' system/codeDict

   # sbatch Allrun2.pre
    #rm slurm*
    cd ../
    

    #cp runFixedw0m0/system/controlDict "$dir"/system/controlDict
    #cp runFixedw0m0/constant/probeDefinitions "$dir"/constant/probeDefinitions
done

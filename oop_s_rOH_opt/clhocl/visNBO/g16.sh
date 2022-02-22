#!/bin/bash
#SBATCH --job-name=clhocl
#SBATCH --nodes=1 
#SBATCH --time=3:00:00
#SBATCH --mem=128G
#SBATCH --chdir=/gscratch/ilahie/mccoygrp/coire_hocl/oop_s_rOH_opt/clhocl/visNBO/
#SBATCH --partition=ilahie
#SBATCH --account=ilahie

# load Gaussian environment
module load contrib/g16.b01

# debugging information
echo "**** Job Debugging Information ****"
echo "This job will run on $SLURM_JOB_NODELIST"
echo ""
echo "ENVIRONMENT VARIABLES"
set
echo "**********************************************" 

# run Gaussian
#g16 clhocl_0_sp.gjf
#formchk clhocl_0_sp.chk
g16 clhocl_10_sp.gjf
formchk clhocl_10_sp.chk
g16 clhocl_20_sp.gjf
formchk clhocl_20_sp.chk



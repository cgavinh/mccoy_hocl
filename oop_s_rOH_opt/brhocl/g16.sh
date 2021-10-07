#!/bin/bash
#SBATCH --job-name=brhocl
#SBATCH --nodes=1 
#SBATCH --time=3:00:00
#SBATCH --mem=128G
#SBATCH --chdir=/gscratch/ilahie/mccoygrp/coire_hocl/brhocl/
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
g16 brhocl_0_sp.gjf
g16 brhocl_5_sp.gjf
g16 brhocl_10_sp.gjf
g16 brhocl_15_sp.gjf
g16 brhocl_20_sp.gjf
g16 brhocl_25_sp.gjf
g16 brhocl_30_sp.gjf
g16 brhocl_35_sp.gjf
g16 brhocl_40_sp.gjf
g16 brhocl_45_sp.gjf
g16 brhocl_50_sp.gjf
#g16 brhocl_rOH_opt.gjf


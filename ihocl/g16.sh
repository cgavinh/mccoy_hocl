#!/bin/bash
#SBATCH --job-name=ihocl
#SBATCH --nodes=1 
#SBATCH --time=3:00:00
#SBATCH --mem=128G
#SBATCH --chdir=/gscratch/ilahie/mccoygrp/coire_hocl/ihocl/
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
#g16 ihocl_0_opt.gjf
g16 ihocl_0_sp.gjf
#g16 ihocl_5_sp.gjf
#g16 ihocl_10_sp.gjf
#g16 ihocl_15_sp.gjf
#g16 ihocl_20_sp.gjf
#g16 ihocl_25_sp.gjf
#g16 ihocl_30_sp.gjf
#g16 ihocl_35_sp.gjf
#g16 ihocl_40_sp.gjf
#g16 ihocl_45_sp.gjf
#g16 ihocl_50_sp.gjf
#g16 ihocl_rOH_opt.gjf


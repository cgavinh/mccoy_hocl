#!/bin/bash
#SBATCH --job-name=clhocl
#SBATCH --nodes=1 
#SBATCH --time=3:00:00
#SBATCH --mem=128G
#SBATCH --chdir=/gscratch/ilahie/mccoygrp/coire_hocl/rOH_s_oop_0/clhocl/
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

#run Gaussian Jobs

#g16 clhocl_rOH_eq_sp.gjf
g16 clhocl_rOH_s_05-20.gjf

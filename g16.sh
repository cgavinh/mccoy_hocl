#!/bin/bash
#SBATCH --job-name=br-hod
#SBATCH --nodes=1 
#SBATCH --time=3:00:00
#SBATCH --mem=128G
#SBATCH --chdir=/gscratch/ilahie/mccoygrp/hocl/eq_jobs/coire/
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
#g16  ihod-_pp.gjf
#g16  clhod-_tz.gjf
#g16  brhod-_tz.gjf
g16 clhocl-_sc15.gjf

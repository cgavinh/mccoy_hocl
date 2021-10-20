#!/bin/bash
#SBATCH --job-name=brhod
#SBATCH --nodes=1 
#SBATCH --time=3:00:00
#SBATCH --mem=128G
#SBATCH --chdir=/gscratch/ilahie/mccoygrp/coire_hocl/oop_s_rOH_opt/brhod/
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
#g16 brhod_oop_s.gjf
g16 brhod_oop_00_sp.gjf
g16 brhod_oop_05_sp.gjf
g16 brhod_oop_10_sp.gjf
g16 brhod_oop_15_sp.gjf
g16 brhod_oop_20_sp.gjf
g16 brhod_oop_25_sp.gjf
g16 brhod_oop_30_sp.gjf
g16 brhod_oop_35_sp.gjf
g16 brhod_oop_40_sp.gjf
g16 brhod_oop_45_sp.gjf
g16 brhod_oop_50_sp.gjf



#!/bin/bash
#SBATCH --job-name=clhocl
#SBATCH --nodes=1 
#SBATCH --time=3:00:00
#SBATCH --mem=128G
#SBATCH --chdir=/gscratch/ilahie/mccoygrp/coire_hocl/oop_s_rOH_opt/clhocl/
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
#g16 clhocl_0_opt.gjf
#g16 clhocl_15_opt.gjf
#g16 clhocl_0_sp.gjf
#g16 clhocl_15_sp.gjf
#g16 clhocl_30_opt.gjf
#g16 clhocl_45_opt.gjf
#g16 clhocl_60_opt.gjf
#g16 clhocl_75_opt.gjf
#g16 clhocl_30_sp.gjf
#g16 clhocl_45_sp.gjf
#g16 clhocl_60_sp.gjf
#g16 clhocl_75_sp.gjf
#g16 clhocl_rOH_opt.gjf
#g16 clhocl_0_sp.gjf
#g16 clhocl_5_sp.gjf
#g16 clhocl_10_sp.gjf
#g16 clhocl_15_sp.gjf
#g16 clhocl_20_sp.gjf
#g16 clhocl_25_sp.gjf
#g16 clhocl_30_sp.gjf
#g16 clhocl_35_sp.gjf
#g16 clhocl_40_sp.gjf
#g16 clhocl_45_sp.gjf
#g16 clhocl_50_sp.gjf
#g16 clhocl_oop_s.gjf
g16 clhocl_oop_freq.gjf


#!/bin/bash
#SBATCH --job-name=brhocl_pp
#SBATCH --nodes=1 
#SBATCH --time=3:00:00
#SBATCH --mem=128G
#SBATCH --chdir=/gscratch/ilahie/mccoygrp/coire_hocl/brhocl_pp/
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
g16 brhocl_pp_0_opt.gjf
g16 brhocl_pp_0_sp.gjf
g16 brhocl_pp_5_sp.gjf
g16 brhocl_pp_10_sp.gjf
g16 brhocl_pp_15_sp.gjf
g16 brhocl_pp_20_sp.gjf
g16 brhocl_pp_25_sp.gjf
g16 brhocl_pp_30_sp.gjf
g16 brhocl_pp_35_sp.gjf
g16 brhocl_pp_40_sp.gjf
g16 brhocl_pp_45_sp.gjf
g16 brhocl_pp_50_sp.gjf
#g16 brhocl_pp_rOH_opt.gjf


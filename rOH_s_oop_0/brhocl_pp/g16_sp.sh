#!/bin/bash
#SBATCH --job-name=brhocl_pp
#SBATCH --nodes=1 
#SBATCH --time=3:00:00
#SBATCH --mem=128G
#SBATCH --chdir=/gscratch/ilahie/mccoygrp/coire_hocl/rOH_s_oop_0/brhocl_pp/
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
g16 brhocl_pp_rOH_075_sp.gjf
g16 brhocl_pp_rOH_080_sp.gjf
g16 brhocl_pp_rOH_085_sp.gjf
g16 brhocl_pp_rOH_090_sp.gjf
g16 brhocl_pp_rOH_095_sp.gjf
g16 brhocl_pp_rOH_100_sp.gjf
g16 brhocl_pp_rOH_105_sp.gjf
g16 brhocl_pp_rOH_110_sp.gjf
g16 brhocl_pp_rOH_115_sp.gjf
g16 brhocl_pp_rOH_120_sp.gjf
g16 brhocl_pp_rOH_125_sp.gjf
g16 brhocl_pp_rOH_130_sp.gjf
g16 brhocl_pp_rOH_135_sp.gjf
g16 brhocl_pp_rOH_140_sp.gjf
g16 brhocl_pp_rOH_145_sp.gjf
g16 brhocl_pp_rOH_150_sp.gjf

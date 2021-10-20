#!/bin/bash

module load contrib/g16.b01
formchk ihocl_0_sp.chk
formchk ihocl_5_sp.chk
formchk ihocl_10_sp.chk
formchk ihocl_15_sp.chk
formchk ihocl_20_sp.chk
formchk ihocl_25_sp.chk
formchk ihocl_30_sp.chk
formchk ihocl_35_sp.chk
formchk ihocl_40_sp.chk
formchk ihocl_45_sp.chk
formchk ihocl_50_sp.chk

cubegen 1 Density=MP2 ihocl_0_sp.fchk ihocl_0_sp.cube 
cubegen 1 Density=MP2 ihocl_5_sp.fchk ihocl_5_sp.cube -1 h ihocl_0_sp.cube
cubegen 1 Density=MP2 ihocl_10_sp.fchk ihocl_10_sp.cube -1 h ihocl_0_sp.cube
cubegen 1 Density=MP2 ihocl_15_sp.fchk ihocl_15_sp.cube -1 h ihocl_0_sp.cube
cubegen 1 Density=MP2 ihocl_20_sp.fchk ihocl_20_sp.cube -1 h ihocl_0_sp.cube
cubegen 1 Density=MP2 ihocl_25_sp.fchk ihocl_25_sp.cube -1 h ihocl_0_sp.cube
cubegen 1 Density=MP2 ihocl_30_sp.fchk ihocl_30_sp.cube -1 h ihocl_0_sp.cube
cubegen 1 Density=MP2 ihocl_35_sp.fchk ihocl_35_sp.cube -1 h ihocl_0_sp.cube
cubegen 1 Density=MP2 ihocl_40_sp.fchk ihocl_40_sp.cube -1 h ihocl_0_sp.cube
cubegen 1 Density=MP2 ihocl_45_sp.fchk ihocl_45_sp.cube -1 h ihocl_0_sp.cube
cubegen 1 Density=MP2 ihocl_50_sp.fchk ihocl_50_sp.cube -1 h ihocl_0_sp.cube

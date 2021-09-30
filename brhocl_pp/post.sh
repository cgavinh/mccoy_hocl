#!/bin/bash

module load contrib/g16.b01
formchk brhocl_pp_0_sp.chk
formchk brhocl_pp_5_sp.chk
formchk brhocl_pp_10_sp.chk
formchk brhocl_pp_15_sp.chk
formchk brhocl_pp_20_sp.chk
formchk brhocl_pp_25_sp.chk
formchk brhocl_pp_35_sp.chk
formchk brhocl_pp_40_sp.chk
formchk brhocl_pp_45_sp.chk
formchk brhocl_pp_50_sp.chk
formchk brhocl_pp_30_sp.chk
cubegen 1 Density=MP2 brhocl_pp_0_sp.fchk brhocl_pp_0_sp.cube 
cubegen 1 Density=MP2 brhocl_pp_5_sp.fchk brhocl_pp_5_sp.cube -1 h brhocl_pp_0_sp.cube
cubegen 1 Density=MP2 brhocl_pp_10_sp.fchk brhocl_pp_10_sp.cube -1 h brhocl_pp_0_sp.cube
cubegen 1 Density=MP2 brhocl_pp_15_sp.fchk brhocl_pp_15_sp.cube -1 h brhocl_pp_0_sp.cube
cubegen 1 Density=MP2 brhocl_pp_20_sp.fchk brhocl_pp_20_sp.cube -1 h brhocl_pp_0_sp.cube
cubegen 1 Density=MP2 brhocl_pp_25_sp.fchk brhocl_pp_25_sp.cube -1 h brhocl_pp_0_sp.cube
cubegen 1 Density=MP2 brhocl_pp_30_sp.fchk brhocl_pp_30_sp.cube -1 h brhocl_pp_0_sp.cube
cubegen 1 Density=MP2 brhocl_pp_35_sp.fchk brhocl_pp_35_sp.cube -1 h brhocl_pp_0_sp.cube
cubegen 1 Density=MP2 brhocl_pp_40_sp.fchk brhocl_pp_40_sp.cube -1 h brhocl_pp_0_sp.cube
cubegen 1 Density=MP2 brhocl_pp_45_sp.fchk brhocl_pp_45_sp.cube -1 h brhocl_pp_0_sp.cube
cubegen 1 Density=MP2 brhocl_pp_50_sp.fchk brhocl_pp_50_sp.cube -1 h brhocl_pp_0_sp.cube

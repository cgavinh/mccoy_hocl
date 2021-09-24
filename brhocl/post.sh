#!/bin/bash

module load contrib/g16.b01
#formchk brhocl_0_sp.chk
formchk brhocl_5_sp.chk
#formchk brhocl_10_sp.chk
#formchk brhocl_15_sp.chk
#formchk brhocl_20_sp.chk
#formchk brhocl_25_sp.chk
#formchk brhocl_35_sp.chk
#formchk brhocl_40_sp.chk
#formchk brhocl_45_sp.chk
#formchk brhocl_50_sp.chk
#formchk brhocl_30_sp.chk
#cubegen 1 Density=MP2 brhocl_0_sp.fchk brhocl_0_sp.cube 
cubegen 1 Density=MP2 brhocl_5_sp.fchk brhocl_5_sp.cube -1 h brhocl_0_sp.cube
#cubegen 1 Density=MP2 brhocl_10_sp.fchk brhocl_10_sp.cube -1 h brhocl_0_sp.cube
#cubegen 1 Density=MP2 brhocl_15_sp.fchk brhocl_15_sp.cube -1 h brhocl_0_sp.cube
#cubegen 1 Density=MP2 brhocl_20_sp.fchk brhocl_20_sp.cube -1 h brhocl_0_sp.cube
#cubegen 1 Density=MP2 brhocl_25_sp.fchk brhocl_25_sp.cube -1 h brhocl_0_sp.cube
#cubegen 1 Density=MP2 brhocl_30_sp.fchk brhocl_30_sp.cube -1 h brhocl_0_sp.cube
#cubegen 1 Density=MP2 brhocl_35_sp.fchk brhocl_35_sp.cube -1 h brhocl_0_sp.cube
#cubegen 1 Density=MP2 brhocl_40_sp.fchk brhocl_40_sp.cube -1 h brhocl_0_sp.cube
#cubegen 1 Density=MP2 brhocl_45_sp.fchk brhocl_45_sp.cube -1 h brhocl_0_sp.cube
#cubegen 1 Density=MP2 brhocl_50_sp.fchk brhocl_50_sp.cube -1 h brhocl_0_sp.cube

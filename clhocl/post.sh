#!/bin/bash

module load contrib/g16.b01
formchk clhocl_15_sp.chk
formchk clhocl_20_sp.chk
formchk clhocl_25_sp.chk
formchk clhocl_35_sp.chk
formchk clhocl_40_sp.chk
formchk clhocl_45_sp.chk
formchk clhocl_50_sp.chk
formchk clhocl_30_sp.chk
cubegen 1 Density=MP2 clhocl_5_sp.fchk clhocl_5_sp.cube -1 h clhocl_0_sp.cube
cubegen 1 Density=MP2 clhocl_10_sp.fchk clhocl_10_sp.cube -1 h clhocl_0_sp.cube
cubegen 1 Density=MP2 clhocl_15_sp.fchk clhocl_15_sp.cube -1 h clhocl_0_sp.cube
cubegen 1 Density=MP2 clhocl_20_sp.fchk clhocl_20_sp.cube -1 h clhocl_0_sp.cube
cubegen 1 Density=MP2 clhocl_25_sp.fchk clhocl_25_sp.cube -1 h clhocl_0_sp.cube
cubegen 1 Density=MP2 clhocl_30_sp.fchk clhocl_30_sp.cube -1 h clhocl_0_sp.cube
cubegen 1 Density=MP2 clhocl_35_sp.fchk clhocl_35_sp.cube -1 h clhocl_0_sp.cube
cubegen 1 Density=MP2 clhocl_40_sp.fchk clhocl_40_sp.cube -1 h clhocl_0_sp.cube
cubegen 1 Density=MP2 clhocl_45_sp.fchk clhocl_45_sp.cube -1 h clhocl_0_sp.cube
cubegen 1 Density=MP2 clhocl_50_sp.fchk clhocl_50_sp.cube -1 h clhocl_0_sp.cube

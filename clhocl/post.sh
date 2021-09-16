#!/bin/bash

module load contrib/g16.b01
formchk clhocl_30_sp.chk
formchk clhocl_45_sp.chk
formchk clhocl_60_sp.chk
formchk clhocl_75_sp.chk
cubegen 1 density=MP2 clhocl_30_sp.fchk clhocl_30_sp.cube
cubegen 1 density=MP2 clhocl_45_sp.fchk clhocl_45_sp.cube
cubegen 1 density=MP2 clhocl_60_sp.fchk clhocl_60_sp.cube
cubegen 1 density=MP2 clhocl_75_sp.fchk clhocl_75_sp.cube

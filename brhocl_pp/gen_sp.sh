#!/bin/bash

sed -e 's/_0_sp/_5_sp/g' -e 's/1.01806 0. 0./1.01376757 0. 0.08869317/g' brhocl_pp_0_sp.gjf > brhocl_pp_5_sp.gjf
sed -e 's/_0_sp/_10_sp/g' -e 's/1.01806 0. 0./0.9994026 0. 0.17622164/g' brhocl_pp_0_sp.gjf > brhocl_pp_10_sp.gjf
sed -e 's/_0_sp/_15_sp/g' -e 's/1.01806 0. 0./0.97633851 0. 0.26160911/g' brhocl_pp_0_sp.gjf > brhocl_pp_15_sp.gjf
sed -e 's/_0_sp/_20_sp/g' -e 's/1.01806 0. 0./0.94517103 0. 0.34401412/g' brhocl_pp_0_sp.gjf > brhocl_pp_20_sp.gjf
sed -e 's/_0_sp/_25_sp/g' -e 's/1.01806 0. 0./0.90678813 0. 0.42284225/g' brhocl_pp_0_sp.gjf > brhocl_pp_25_sp.gjf
sed -e 's/_0_sp/_30_sp/g' -e 's/1.01806 0. 0./0.86189446 0. 0.497615/g' brhocl_pp_0_sp.gjf > brhocl_pp_30_sp.gjf
sed -e 's/_0_sp/_35_sp/g' -e 's/1.01806 0. 0./0.81116531 0. 0.56798407/g' brhocl_pp_0_sp.gjf > brhocl_pp_35_sp.gjf
sed -e 's/_0_sp/_40_sp/g' -e 's/1.01806 0. 0./0.75513597 0. 0.63363431/g' brhocl_pp_0_sp.gjf > brhocl_pp_40_sp.gjf
sed -e 's/_0_sp/_45_sp/g' -e 's/1.01806 0. 0./0.69428694 0. 0.69428694/g' brhocl_pp_0_sp.gjf > brhocl_pp_45_sp.gjf
sed -e 's/_0_sp/_50_sp/g' -e 's/1.01806 0. 0./0.62903195 0. 0.74965109/g' brhocl_pp_0_sp.gjf > brhocl_pp_50_sp.gjf

#!/bin/bash

sed -e 's/_0_sp/_5_sp/g' -e 's/1.00805 0. 0./1.003785702 0. 0.08781987/g' ihocl_0_sp.gjf > ihocl_5_sp.gjf
sed -e 's/_0_sp/_10_sp/g' -e 's/1.00805 0. 0./0.99046055 0. 0.174644918/g' ihocl_0_sp.gjf > ihocl_10_sp.gjf
sed -e 's/_0_sp/_15_sp/g' -e 's/1.00805 0. 0./0.968833263 0. 0.25959809/g' ihocl_0_sp.gjf > ihocl_15_sp.gjf
sed -e 's/_0_sp/_20_sp/g' -e 's/1.00805 0. 0./0.93929795 0. 0.341876495/g' ihocl_0_sp.gjf > ihocl_20_sp.gjf
sed -e 's/_0_sp/_25_sp/g' -e 's/1.00805 0. 0./0.902437853 0. 0.420813682/g' ihocl_0_sp.gjf > ihocl_25_sp.gjf
sed -e 's/_0_sp/_30_sp/g' -e 's/1.00805 0. 0./0.858880694 0. 0.495875/g' ihocl_0_sp.gjf > ihocl_30_sp.gjf
sed -e 's/_0_sp/_35_sp/g' -e 's/1.00805 0. 0./0.809223922 0. 0.56662469/g' ihocl_0_sp.gjf > ihocl_35_sp.gjf
sed -e 's/_0_sp/_40_sp/g' -e 's/1.00805 0. 0./0.754017545 0. 0.632695844/g' ihocl_0_sp.gjf > ihocl_40_sp.gjf
sed -e 's/_0_sp/_45_sp/g' -e 's/1.00805 0. 0./0.693756605 0. 0.69419501/g' ihocl_0_sp.gjf > ihocl_45_sp.gjf
sed -e 's/_0_sp/_50_sp/g' -e 's/1.00805 0. 0./0.628890542 0. 0.749482562/g' ihocl_0_sp.gjf > ihocl_50_sp.gjf

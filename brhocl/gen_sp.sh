#!/bin/bash

sed -e 's/_0_sp/_5_sp/g' -e 's/1.01774 0. 0./1.01327944 0. 0.08865046/g' brhocl_0_sp.gjf > brhocl_5_sp.gjf
sed -e 's/_0_sp/_10_sp/g' -e 's/1.01774 0. 0./0.99892005 0. 0.17613656/g' brhocl_0_sp.gjf > brhocl_10_sp.gjf
sed -e 's/_0_sp/_15_sp/g' -e 's/1.01774 0. 0./0.97595214 0. 0.26150559/g' brhocl_0_sp.gjf > brhocl_15_sp.gjf
sed -e 's/_0_sp/_20_sp/g' -e 's/1.01774 0. 0./0.94488912 0. 0.34391151/g' brhocl_0_sp.gjf > brhocl_20_sp.gjf
sed -e 's/_0_sp/_25_sp/g' -e 's/1.01774 0. 0./0.90657062 0. 0.42274082/g' brhocl_0_sp.gjf > brhocl_25_sp.gjf
sed -e 's/_0_sp/_30_sp/g' -e 's/1.01774 0. 0./0.86172992 0. 0.49752/g' brhocl_0_sp.gjf > brhocl_30_sp.gjf
sed -e 's/_0_sp/_35_sp/g' -e 's/1.01774 0. 0./0.81102606 0. 0.56788656/g' brhocl_0_sp.gjf > brhocl_35_sp.gjf
sed -e 's/_0_sp/_40_sp/g' -e 's/1.01774 0. 0./0.75502106 0. 0.6335379/g' brhocl_0_sp.gjf > brhocl_40_sp.gjf
sed -e 's/_0_sp/_45_sp/g' -e 's/1.01774 0. 0./0.69419501 0. 0.69419501/g' brhocl_0_sp.gjf > brhocl_45_sp.gjf
sed -e 's/_0_sp/_50_sp/g' -e 's/1.01774 0. 0./0.62896768 0. 0.74957449/g' brhocl_0_sp.gjf > brhocl_50_sp.gjf

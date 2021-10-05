import sys
import os
sys.path.append('../CGH_Toolbox/')
import matplotlib.pyplot as plt
from matplotlib import ticker, cm
from matplotlib.colors import LogNorm
import numpy as np
#import pyvibdmc as pv
import utilities as uts
import gaussian_tools as gt
import glob
import pandas as pd

def pull_charges(file):
    split = []
    with open(file, 'r') as f:
        lines = f.readlines()
        for line in lines:
            split.append(line.split())
        
    d = {}

    for line in split:
        #print(line)
        if len(line) < 2:
            continue
        if line[1] in ['O', 'Br', 'Cl', 'I', 'H']:
            head = line[0].split('_')
            for h in head:
                if h.isdigit():
                    key = h + "-" + line[1]
            #key = line[0].split('_')[1] + "-" + line[1]
            #print(key)
            if key in d:
                key = key + "_1"
            d[key] = line[3]

    n_d = {}
    for key in d:
        s = key.split('-')
        if s[0] in n_d:
            n_d[s[0]].append(d[key])
        else:
            n_d[s[0]] = [d[key]]
    for key in n_d:
        n_d[key] = np.array(n_d[key])
    #print(n_d)
    l = []
    keys = list(n_d.keys())
    keys.insert(1, keys.pop(-1)) 
    for k in keys:
        l.append(n_d[k])
    return np.asarray(l, dtype=float)


clhocl_fchks = ['clhocl/clhocl_0_sp.fchk',
                'clhocl/clhocl_5_sp.fchk',
                'clhocl/clhocl_10_sp.fchk',
                'clhocl/clhocl_15_sp.fchk',
                'clhocl/clhocl_20_sp.fchk',
                'clhocl/clhocl_25_sp.fchk',
                'clhocl/clhocl_30_sp.fchk',
                'clhocl/clhocl_35_sp.fchk',
                'clhocl/clhocl_40_sp.fchk',
                'clhocl/clhocl_45_sp.fchk',
                'clhocl/clhocl_50_sp.fchk']

clhocl = gt.FchkInterpreter(fchks = clhocl_fchks,
                           cubes=True)

brhocl_fchks = ['brhocl/brhocl_0_sp.fchk',
                'brhocl/brhocl_5_sp.fchk',
                'brhocl/brhocl_10_sp.fchk',
                'brhocl/brhocl_15_sp.fchk',
                'brhocl/brhocl_20_sp.fchk',
                'brhocl/brhocl_25_sp.fchk',
                'brhocl/brhocl_30_sp.fchk',
                'brhocl/brhocl_35_sp.fchk',
                'brhocl/brhocl_40_sp.fchk',
                'brhocl/brhocl_45_sp.fchk',
                'brhocl/brhocl_50_sp.fchk']

brhocl = gt.FchkInterpreter(fchks = brhocl_fchks,
                           cubes=True)

ihocl_fchks = ['ihocl/ihocl_0_sp.fchk',
                'ihocl/ihocl_5_sp.fchk',
                'ihocl/ihocl_10_sp.fchk',
                'ihocl/ihocl_15_sp.fchk',
                'ihocl/ihocl_20_sp.fchk',
                'ihocl/ihocl_25_sp.fchk',
                'ihocl/ihocl_30_sp.fchk',
                'ihocl/ihocl_35_sp.fchk',
                'ihocl/ihocl_40_sp.fchk',
                'ihocl/ihocl_45_sp.fchk',
                'ihocl/ihocl_50_sp.fchk']

ihocl = gt.FchkInterpreter(fchks = ihocl_fchks,
                           cubes=True)

brhocl_pp_fchks = ['brhocl_pp/brhocl_pp_0_sp.fchk',
                'brhocl_pp/brhocl_pp_5_sp.fchk',
                'brhocl_pp/brhocl_pp_10_sp.fchk',
                'brhocl_pp/brhocl_pp_15_sp.fchk',
                'brhocl_pp/brhocl_pp_20_sp.fchk',
                'brhocl_pp/brhocl_pp_25_sp.fchk',
                'brhocl_pp/brhocl_pp_30_sp.fchk',
                'brhocl_pp/brhocl_pp_35_sp.fchk',
                'brhocl_pp/brhocl_pp_40_sp.fchk',
                'brhocl_pp/brhocl_pp_45_sp.fchk',
                'brhocl_pp/brhocl_pp_50_sp.fchk']

brhocl_pp = gt.FchkInterpreter(fchks = brhocl_pp_fchks,
                           cubes=True)

clhocl_nbo = pull_charges('clhocl/natural_charges.txt')
ihocl_nbo = pull_charges('ihocl/natural_charges.txt')
brhocl_nbo = pull_charges('brhocl/natural_charges.txt')
brhocl_pp_nbo = pull_charges('brhocl_pp/natural_charges.txt')

fig, axs = plt.subplots(4, 1, sharex=True)


oop = np.arange(0,55,5)
axs[0].scatter(oop, clhocl_nbo[:,0], label="X=Cl", color='green', marker='.')
axs[1].scatter(oop, clhocl_nbo[:,1], label="X=Cl", color='green', marker='.')
axs[2].scatter(oop, clhocl_nbo[:,2], label="X=Cl", color='green', marker='.')
axs[3].scatter(oop, clhocl_nbo[:,3], label="X=Cl", color='green', marker='.')

axs[0].scatter(oop, brhocl_nbo[:,0], label="X=Br", color='maroon', marker='v')
axs[1].scatter(oop, brhocl_nbo[:,1], label="X=Br", color='maroon', marker='v')
axs[2].scatter(oop, brhocl_nbo[:,2], label="X=Br", color='maroon', marker='v')
axs[3].scatter(oop, brhocl_nbo[:,3], label="X=Br", color='maroon', marker='v')

axs[0].scatter(oop, ihocl_nbo[:,0], label="X=I", color='purple', marker='x')
axs[1].scatter(oop, ihocl_nbo[:,1], label="X=I", color='purple', marker='x')
axs[2].scatter(oop, ihocl_nbo[:,2], label="X=I", color='purple', marker='x')
axs[3].scatter(oop, ihocl_nbo[:,3], label="X=I", color='purple', marker='x')


for a in axs:
    a.legend(loc='best')
        
axs[0].set_title("NBO tz")
axs[0].set_ylabel("Partial Charge on O")
axs[1].set_ylabel("Partial Charge on X")
axs[2].set_ylabel("Partial Charge on Cl")
axs[3].set_ylabel("Partial Charge on H")

axs[3].set_xlabel(r'$Q_{oop}$')


fig.subplots_adjust(wspace = 0, hspace = 0)
fig.set_size_inches(w=1,h=8.5)
        
plt.tight_layout()

plt.savefig('Mulliken_charges.pdf')
plt.show()
print("hello")
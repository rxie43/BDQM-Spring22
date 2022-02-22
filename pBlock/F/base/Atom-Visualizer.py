import numpy as np
from ase.units import kJ, mol
from ase import Atoms
from ase.io.trajectory import Trajectory
from ase.io.trajectory import TrajectoryWriter
from ase.visualize import view
from ase.io import read, write
traj = Trajectory('optm_f_base_slab.traj')
atoms = traj[-1]
view(atoms);
with open('energy_check.txt', 'w') as f:
	f.write(str(atoms.get_potential_energy()))

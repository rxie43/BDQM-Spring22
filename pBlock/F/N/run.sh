#!/bin/bash
#PBS -l nodes=1:ppn=16
#PBS -l pmem=10Gb
#PBS -l walltime=24:00:00
#PBS -N f_nabsorb_slab
#PBS -o stdout
#PBS -e stderr
#PBS -m abe
#PBS -M rxie43@gatech.edu
#PBS -A GT-amedford6

cd $PBS_O_WORKDIR
source /storage/coda1/p-amedford6/0/shared/rich_project_chbe-medford/medford-share/envs/espresso-6.7MaX-beef-ipi
python qn_opt.py

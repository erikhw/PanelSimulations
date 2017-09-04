#!/usr/bin/env bash


#SBATCH -N 1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH -t 10:00:00
#SBATCH -J Nickell_simulations
#SBATCH -o log-small_T10.%j 
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mem 64000

srun Rscript ./Nickell.R 

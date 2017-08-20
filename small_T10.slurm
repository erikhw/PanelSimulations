#!/usr/bin/env bash


#SBATCH -N 1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=19
#SBATCH -t 20:00:00
#SBATCH -J horse_race_simulations
#SBATCH -o log-horse_race_simulations.%j 
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mem 64000

srun Rscript ./small_T10.R 

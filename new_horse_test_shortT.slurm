#!/usr/bin/env bash


#SBATCH -N 1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=19
#SBATCH -t 36:00:00
#SBATCH -J shortT_simulations 
#SBATCH -o log-new_horse_test_shortT.%j 
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mem 128000

srun Rscript ./new_horse_test_shortT.R 

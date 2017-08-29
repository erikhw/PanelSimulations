#!/usr/bin/env bash


#SBATCH -N 1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=19
#SBATCH -t 60:00:00
#SBATCH -J horse_race_simulations
#SBATCH -o log-new_horse_test_T20.%j 
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mem 128000

srun Rscript ./new_horse_test_T20_just_N500.R 



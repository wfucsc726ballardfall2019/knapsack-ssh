#!/bin/bash
#SBATCH --partition=small
#SBATCH --job-name="knapsack-tasks"
#SBATCH --nodes=1
#SBATCH --tasks-per-node=44
#SBATCH --mem=64gb
#SBATCH --time=0-0:05:00
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=mannlg15@wfu.edu
#SBATCH --output="knapsack-tasks.o"
#SBATCH --error="knapsack-tasks.e"

cd /deac/classes/csc726/mannlg15/knapsack-ssh/
make

for num_threads in 8 16
do
  echo "NUM_THREADS: $num_threads"
  echo "---------------"

  for trial in {1..10}
  do
    ./parallel 40000 6000 $num_threads
  done
done



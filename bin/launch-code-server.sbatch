#!/bin/bash --login
#SBATCH --time=3:00:00
#SBATCH --nodes=1
#SBATCH --gpus-per-node=v100:1
#SBATCH --cpus-per-gpu=6  
#SBATCH --mem=64G
#SBATCH --partition=debug 
#SBATCH --job-name=launch-code-server
#SBATCH --mail-type=ALL
#SBATCH --output=bin/%x-%j-slurm.out
#SBATCH --error=bin/%x-%j-slurm.err

# use srun to launch code server in order to reserve a port
srun --resv-ports=1 ./bin/launch-code-server.srun

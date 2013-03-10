#!/bin/bash -login
pit=`qsub -t 1-8 pitremove_small.qsub`
echo $pit
qsub -t 1-2 -W depend=afteranyarray:$pit d8flowdir_small.qsub

pit=`qsub -t 1-8 pitremove_big.qsub`
echo $pit
qsub -t 1-2 -W depend=afteranyarray:$pit d8flowdir_big.qsub


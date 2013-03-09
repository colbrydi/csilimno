#!/bin/bash -login
pit=`qsub -t 1 pitremove_small.qsub`
echo $pit
qsub -W depend=afteranyarray:$pit d8flowdir_small.qsub


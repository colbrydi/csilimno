#!/bin/bash -login

rm STOP_FILE

echo "qsub -t 1-8 pitremove_small.qsub"
pit=`qsub -t 1-8 pitremove_small.qsub`
echo $pit
pr=${pit%.cmgr01}
echo "qsub -t 1-2 -W depend=afteranyarray:$pr d8flowdir_small.qsub"
qsub -t 1-2 -W depend=afteranyarray:$pr d8flowdir_small.qsub

echo "qsub -t 1-8 pitremove_big.qsub"
pit=`qsub -t 1-8 pitremove_big.qsub`
echo $pit
pr=${pit%.cmgr01}
echo "qsub -t 1-2 -W depend=afteranyarray:$pr d8flowdir_big.qsub"
qsub -t 1-2 -W depend=afteranyarray:$pr d8flowdir_big.qsub


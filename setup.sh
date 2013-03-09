module load powertools
cd ${PBS_O_WORKDIR}

#Setup directories
basedir=/mnt/research/csilimno/dirk
scriptdir=${basedir}/csilimno

export PATH=${basedir}/taudem506/tools:$PATH

inputdir=${basedir}/sampledata/translate/
workdir=${basedir}/input
stopfile=${PBS_O_WORKDIR}/STOP_FILE
timefile=${PBS_O_WORKDIR}/${PBS_JOBID}.tm
total=0

cd ${workdir}


'results/split/(.*)\.fastq\.([0-9]+)':R:	'data/\1\.fastq'
	NFILES=$stem2
	NLINES=`wc -l $prereq | awk '{print $1}'`
	FASTQ_ENTRY_LEN=4
	# This ensures the split is a multiple of FASTQ_ENTRY_LEN
	PARTSIZE=`python -c "print(int($NLINES / ($NFILES * $FASTQ_ENTRY_LEN)) * $FASTQ_ENTRY_LEN)"`
	split --numeric-suffixes=1 -l $PARTSIZE $prereq $prereq.

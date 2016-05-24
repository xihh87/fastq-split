<split.mk
SPLITFILES=`{find -L data/ -name '*.fastq' | sed -e "s#^data/#results/split/#g" -e "s#"'$'"#.$SPLIT_IN#g"}

split:V: $SPLITFILES

'results/split/(.*)\.fastq\.([0-9]+)':R:	'data/\1\.fastq'
	mkdir -p `dirname $target`
	NFILES=$stem2
	NLINES=`wc -l $prereq | awk '{print $1}'`
	FASTQ_ENTRY_LEN=4
	# This ensures the split is a multiple of FASTQ_ENTRY_LEN
	PARTSIZE=`python -c "import math; print(math.ceil($NLINES / ($NFILES * $FASTQ_ENTRY_LEN)) * $FASTQ_ENTRY_LEN)"`
	PREFIX=`echo $target | sed -e "s#$stem2"'$'"##g"`
	split --numeric-suffixes=1 -l $PARTSIZE $prereq "$PREFIX"

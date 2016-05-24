This is a module for a bioinformatic pipeline using mk.

# Requirements

- mk (usually on 9base on plan9port package)
- python
- split (usually on GNU coreutils package)

# How to use

There should be a data directory including at least one fastq file,
for example:

```
$ find data -name '*.fastq'
data/150819_10Beta-28341426/10BetaS6_ALL_R2.fastq
data/150819_10Beta-28341426/10BetaS6_ALL_R1.fastq
```

Then you use the line:

```
$ NFILES=3
$ mk results/split/150819_10Beta-28341426/10BetaS6_ALL_R2.fastq.$NFILES
```

There! mk should do everything needed to split your fastq in nfiles.

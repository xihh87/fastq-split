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

Then you set the number of files to split into in `split.mk`:

```
SPLIT_IN=24
```

Then run the following command:

```
$ mk
```

There! mk should do everything needed to split your fastq in N files.

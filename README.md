# penn_sound_eval

Transcripts and code for evaluating Speech To Text systems on a sample from PennSound

# Contents

This repository contains supplementary material for the evaluation of speech-to-text (STT)systems presented in [paper].  Several systems were evaluated with a sample of audio from PennSound [link], which can be found in a separate repo [here].  This repo contains transcripts, evaluation code, output, and related material not discussed in the paper.

# Transcripts

The original output from STT systems is not included here; STT output formats vary and are bulky with redundant information.  Human and system transcripts are included in the `combined` directory in consolidated form, meaning one file contains the transcripts for multiple recordings (in this case, 100 recordings).  Users could produce their own consolidated files from their own transcripts with included code as follows:

    bin/combine.rb [file1 file2 ...] > output.tsv

In general, the various tests took the combined transcripts as input and produced output in other directories.  In this README, we'll describe the contents of directories, for example `test_a`, rather than the commands that produced them, for example `rake test_a`.  For those specifics, users can read the comments in the `rakefile` (Ruby Makefile).

Transcripts for the individual recordings can be found in the `split` directory.  These are not the original system output files, since the format matches the consolidated format.  In general, consolidated files are easier to work with, but sometimes the split files are necessary, and can be simpler for human readers.

# Test A

`test_a` contains the output of SCTK using the original reference segmentation.  This data wasn't used for the paper, but is useful for looking at individual errors.  SCTK produces .pra
files that align the reference and hypothesis segments.  However, these files include perfect alignments with no errors.  `test_a` also includes .pra.errors files which contain only segments with errors, so these are useful for browsing.

# Test B

`test_b` contains the output of SCTK using no segmentation, or rather, where each reference transcript was turned into a single segment.  This eliminates errors that are due to differences in timestamps on otherwise correct words.  These numbers were reported in the paper.

# Test C

`test_c` contains the output of SCTK on whisper trials meant to test the occurrence of hallucinations.




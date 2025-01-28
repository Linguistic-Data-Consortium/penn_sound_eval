# penn_sound_eval

Transcripts and code for evaluating Speech To Text systems on a sample from PennSound

# Contents

This repository contains supplementary material for the evaluation of Speech To Text systems presented in [paper].  Several systems were evaluated with a sample of audio from PennSound [link], which can be found in a separate repo [here].  This repo contains transcripts, evaluation code, output, and related material not discussed in the paper.

# Transcripts

The original output from STT systems is not included here; STT output formats vary and are bulky with redundant information.  Human and system transcripts are included in the `combined` directory in consolidated form, meaning one file contains the transcripts for multiple recordings (in this case, 100 recordings).  Users could produce their own consolidated files from their own transcripts with included code as follows:

    bin/combine.rb [file1 file2 ...] > output.tsv

In general, the various tests took the combined transcripts as input and produced output in other directories.  In this README, we'll describe the contents of directories, for example `test_a`, rather than the commands that produced them, for example `rake test_a`.  For those specifics, users can read the comments  in the `rakefile` (Ruby Makefile).

Transcripts for the individual recordings can be found in the `split` directory.  These are not the original system outputs, since the format matches the consolidated format.  In general, consolidated files are easier to work with, but sometimes the split files are necessary, and can be simpler for human readers.




set yrange [9:0]
set xrange [0:100]
set title ""
set key
set ylabel "Systems"
set xlabel "Speaker Word Error Rate (%)"
set ytics ("whisper.ctm" 1,"whispercpp.ctm" 2,"aws.ctm" 3,"google.ctm" 4,"azure.ctm" 5,"ibm.ctm" 6,"rev.ctm" 7,"nemo.ctm" 8)
plot "Ensemble.grange2.sys.mean" using 2:1 title "Mean Speaker Word Error Rate (%)" with lines,\
     "Ensemble.grange2.sys.median" using 2:1 title "Median Speaker Word Error Rate (%)" with lines,\
     "Ensemble.grange2.sys.dat" using 2:1 "%lf%lf" title "speaker1"

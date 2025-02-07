set yrange [9:0]
set xrange [0:100]
set title ""
set key
set ylabel "Systems"
set xlabel "Speaker Word Error Rate (%)"
set ytics ("nemo.ctm" 1,"rev.ctm" 2,"whisper.ctm" 3,"whispercpp.ctm" 4,"azure.ctm" 5,"google.ctm" 6,"aws.ctm" 7,"ibm.ctm" 8)
plot "Ensemble.grange2.sys.mean" using 2:1 title "Mean Speaker Word Error Rate (%)" with lines,\
     "Ensemble.grange2.sys.median" using 2:1 title "Median Speaker Word Error Rate (%)" with lines,\
     "Ensemble.grange2.sys.dat" using 2:1 "%lf%lf" title "speaker1"

set yrange [9:0]
set xrange [0:100]
set title ""
set key
set ylabel "Systems"
set xlabel "Speaker Word Error Rate (%)"
set ytics ("azure.ctm" 1,"aws.ctm" 2,"google.ctm" 3,"whispercpp.ctm" 4,"rev.ctm" 5,"nemo.ctm" 6,"whisper.ctm" 7,"ibm.ctm" 8)
plot "Ensemble.grange2.sys.mean" using 2:1 title "Mean Speaker Word Error Rate (%)" with lines,\
     "Ensemble.grange2.sys.median" using 2:1 title "Median Speaker Word Error Rate (%)" with lines,\
     "Ensemble.grange2.sys.dat" using 2:1 "%lf%lf" title "subject"

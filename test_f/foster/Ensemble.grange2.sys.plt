set yrange [9:0]
set xrange [0:100]
set title ""
set key
set ylabel "Systems"
set xlabel "Speaker Word Error Rate (%)"
set ytics ("whispercpp.ctm" 1,"nemo.ctm" 2,"rev.ctm" 3,"aws.ctm" 4,"azure.ctm" 5,"google.ctm" 6,"ibm.ctm" 7,"whisper.ctm" 8)
plot "Ensemble.grange2.sys.mean" using 2:1 title "Mean Speaker Word Error Rate (%)" with lines,\
     "Ensemble.grange2.sys.median" using 2:1 title "Median Speaker Word Error Rate (%)" with lines,\
     "Ensemble.grange2.sys.dat" using 2:1 "%lf%lf" title "subject"

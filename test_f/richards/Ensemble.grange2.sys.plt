set yrange [9:0]
set xrange [0:100]
set title ""
set key
set ylabel "Systems"
set xlabel "Speaker Word Error Rate (%)"
set ytics ("google.ctm" 1,"rev.ctm" 2,"nemo.ctm" 3,"whisper.ctm" 4,"azure.ctm" 5,"aws.ctm" 6,"whispercpp.ctm" 7,"ibm.ctm" 8)
plot "Ensemble.grange2.sys.mean" using 2:1 title "Mean Speaker Word Error Rate (%)" with lines,\
     "Ensemble.grange2.sys.median" using 2:1 title "Median Speaker Word Error Rate (%)" with lines,\
     "Ensemble.grange2.sys.dat" using 2:1 "%lf%lf" title "subject"

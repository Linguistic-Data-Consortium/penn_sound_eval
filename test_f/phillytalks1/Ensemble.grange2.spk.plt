set yrange [2:0]
set xrange [0:100]
set title ""
set key
set ylabel "Speaker ID"
set xlabel "Speaker Word Error Rate (%)"
set ytics ("subject" 1)
plot "Ensemble.grange2.spk.mean" using 2:1 title "Mean Speaker Word Error Rate (%)" with lines,\
     "Ensemble.grange2.spk.median" using 2:1 title "Median Speaker Word Error Rate (%)" with lines,\
     "Ensemble.grange2.spk.dat" using 2:1 "%lf%lf" title "aws.ctm",\
     "Ensemble.grange2.spk.dat" using 2:1 "%lf%*s%lf" title "azure.ctm",\
     "Ensemble.grange2.spk.dat" using 2:1 "%lf%*s%*s%lf" title "google.ctm",\
     "Ensemble.grange2.spk.dat" using 2:1 "%lf%*s%*s%*s%lf" title "ibm.ctm",\
     "Ensemble.grange2.spk.dat" using 2:1 "%lf%*s%*s%*s%*s%lf" title "nemo.ctm",\
     "Ensemble.grange2.spk.dat" using 2:1 "%lf%*s%*s%*s%*s%*s%lf" title "rev.ctm",\
     "Ensemble.grange2.spk.dat" using 2:1 "%lf%*s%*s%*s%*s%*s%*s%lf" title "whisper.ctm",\
     "Ensemble.grange2.spk.dat" using 2:1 "%lf%*s%*s%*s%*s%*s%*s%*s%lf" title "whispercpp.ctm"

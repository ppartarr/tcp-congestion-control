#!/usr/bin/gnuplot

reset
set terminal png
set out 'ssth30.png'
set xlabel "time (seconds)"
set xrange [0:30]
set ylabel "SSTH size (bytes)"
set title "Slow Start Threshold monitoring"
set grid

plot "task1-all-files/TcpNewReno-ssth.data" using 1:2 with linespoints title "ssth_"


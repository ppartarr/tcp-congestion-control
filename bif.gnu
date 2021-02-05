#!/usr/bin/gnuplot

reset
set terminal png
set out 'bif.png'
set xlabel "time (seconds)"
set xrange [0:300]
set ylabel "Bytes in Flight"
set title "Bytes in Flight monitoring"
set grid

plot "task1-all-files/TcpNewReno-inflight.data" using 1:2 with linespoints title "bif_"


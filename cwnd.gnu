#!/usr/bin/gnuplot

reset
set terminal png
set out 'cwnd.png'
set xlabel "time (seconds)"
set xrange [0:300]
set ylabel "Congestion Window size (bytes)"
set title "Congestion Window monitoring"
set grid

plot "task1-all-files/TcpNewReno-cwnd.data" using 1:2 with linespoints title "cwnd_"


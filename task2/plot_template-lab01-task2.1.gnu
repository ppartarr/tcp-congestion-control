#!/usr/bin/gnuplot

reset
set terminal png
set out 'task2-q2.1.png'
set style data linespoints
set xlabel "time (seconds)"
set xrange [0:180]
set ylabel "Segments (cwnd, ssthresh)"
set title "Congestion window monitoring"
set grid

plot "task2-q2.1.log" using 1:7 title "cwnd", \
      "task2-q2.1.log" using 1:($8>=2147483647 ? 0 : $8) title "ssthresh"




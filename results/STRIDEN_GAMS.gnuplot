#-- STRIDEN_GAMS.gnuplot

set term png size 1920,1080 enhanced font 'Verdana,24'
set output "STRIDEN_GAMS.png"

set multiplot

#set main graph line styles
set style line 1 linecolor rgb 'dark-violet' linetype 1 linewidth 2 pointtype 1 pointsize 2 pointinterval 2
set style line 2 linecolor rgb '#009e73' linetype 2 linewidth 2 pointtype 2 pointsize 2 pointinterval 2
set style line 3 linecolor rgb '#56b4e9' linetype 3 linewidth 2 pointtype 3 pointsize 2 pointinterval 2
set style line 4 linecolor rgb '#e69f00' linetype 4 linewidth 2 pointtype 4 pointsize 2 pointinterval 2
set style line 5 linecolor rgb '#f0e442' linetype 5 linewidth 2 pointtype 5 pointsize 2 pointinterval 2
set style line 6 linecolor rgb '#0072b2' linetype 6 linewidth 2 pointtype 6 pointsize 2 pointinterval 2
set style line 7 linecolor rgb '#e51e10' linetype 7 linewidth 2 pointtype 7 pointsize 2 pointinterval 2
set style line 8 linecolor rgb 'black' linetype 8 linewidth 2 pointtype 8 pointsize 2 pointinterval 2
set style line 9 linecolor rgb 'dark-violet' linetype 9 linewidth 2 pointtype 9 pointsize 2 pointinterval 2
set style line 10 linecolor rgb '#009e73' linetype 10 linewidth 2 pointtype 10 pointsize 2 pointinterval 2
set style line 11 linecolor rgb '#56b4e9' linetype 11 linewidth 2 pointtype 11 pointsize 2 pointinterval 2
set style line 12 linecolor rgb '#e69f00' linetype 12 linewidth 2 pointtype 12 pointsize 2 pointinterval 2
set style line 13 linecolor rgb '#f0e442' linetype 13 linewidth 2 pointtype 13 pointsize 2 pointinterval 2
set style line 14 linecolor rgb '#0072b2' linetype 14 linewidth 2 pointtype 14 pointsize 2 pointinterval 2
set style line 15 linecolor rgb '#e51e10' linetype 15 linewidth 2 pointtype 15 pointsize 2 pointinterval 2
set style line 16 linecolor rgb 'black' linetype 16 linewidth 2 pointtype 16 pointsize 2 pointinterval 2
set style line 17 linecolor rgb 'dark-violet' linetype 17 linewidth 2 pointtype 17 pointsize 2 pointinterval 2
set style line 18 linecolor rgb '#009e73' linetype 18 linewidth 2 pointtype 18 pointsize 2 pointinterval 2
set style line 19 linecolor rgb '#56b4e9' linetype 19 linewidth 2 pointtype 19 pointsize 2 pointinterval 2
set style line 20 linecolor rgb '#e69f00' linetype 20 linewidth 2 pointtype 20 pointsize 2 pointinterval 2
set style line 21 linecolor rgb '#f0e442' linetype 21 linewidth 2 pointtype 21 pointsize 2 pointinterval 2
set style line 22 linecolor rgb '#0072b2' linetype 22 linewidth 2 pointtype 22 pointsize 2 pointinterval 2
set style line 23 linecolor rgb '#e51e10' linetype 23 linewidth 2 pointtype 23 pointsize 2 pointinterval 2
set style line 24 linecolor rgb 'black' linetype 24 linewidth 2 pointtype 24 pointsize 2 pointinterval 2
set style line 25 linecolor rgb 'dark-violet' linetype 25 linewidth 2 pointtype 25 pointsize 2 pointinterval 2
set style line 26 linecolor rgb '#009e73' linetype 26 linewidth 2 pointtype 26 pointsize 2 pointinterval 2
set style line 27 linecolor rgb '#56b4e9' linetype 27 linewidth 2 pointtype 27 pointsize 2 pointinterval 2
set style line 28 linecolor rgb '#e69f00' linetype 28 linewidth 2 pointtype 28 pointsize 2 pointinterval 2

#main graph
set size .75, 1

set key at graph 1.45, 1.0
set key font ",22"

set title "StrideN Benchmark GAMS"

set ylabel "Giga AMOs/sec (GAMS)"
set xlabel "PEs"

plot  './raspi3/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 1 title 'Cortex-A53 ADD',\
      './raspi3/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 2 title 'Cortex-A53 CAS',\
      './raspi4/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 3 title 'Cortex-A72 ADD',\
      './raspi4/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 4 title 'Cortex-A72 CAS',\
      './ryzen1/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 5 title 'Ryzen V1605B ADD',\
      './ryzen1/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 6 title 'Ryzen V1605B CAS',\
      './centos7build02/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 7 title 'Opteron 4130 ADD',\
      './centos7build02/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 8 title 'Opteron 4130 CAS',\
      './osxbuild01/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 9 title 'Core i5-3210M ADD',\
      './osxbuild01/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 10 title 'Core i5-3210M CAS',\
      './i7-3930K/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 11 title 'Core i7-3930K ADD',\
      './i7-3930K/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 12 title 'Core i7-3930K CAS',\
      './i7-4980HQ/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 13 title 'Core i7-4980HQ ADD',\
      './i7-4980HQ/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 14 title 'Core i7-4980HQ CAS',\
      './other/knl/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 15 title 'Xeon Phi 7250 ADD',\
      './other/knl/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 16 title 'Xeon Phi 7250 CAS',\
      './lnxbuild02/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 17 title 'Xeon E5620 ADD',\
      './lnxbuild02/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 18 title 'Xeon E5620 CAS',\
      './lnxbuild01/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 19 title 'Xeon X5650 ADD',\
      './lnxbuild01/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 20 title 'Xeon X5650 CAS',\
      './gc64/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 21 title 'Xeon E5-2620 v3 ADD',\
      './gc64/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 22 title 'Xeon E5-2620 v3 CAS',\
      './hrothgar-ivy/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 23 title 'Xeon E5-2670 v2 ADD',\
      './hrothgar-ivy/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 24 title 'Xeon E5-2670 v2 CAS',\
      './quanah/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 25 title 'Xeon E5-2695 v4 ADD',\
      './quanah/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 26 title 'Xeon E5-2695 v4 CAS',\
      './other/xeon_haswell/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 27 title 'Xeon E5-2698 v3 ADD',\
      './other/xeon_haswell/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 28 title 'Xeon E5-2698 v3 CAS'

#set inset graph line styles
set style line 1 linecolor rgb 'dark-violet' linetype 1 linewidth 2 pointtype 1 pointsize 1.5 pointinterval 2
set style line 2 linecolor rgb '#009e73' linetype 2 linewidth 2 pointtype 2 pointsize 1.5 pointinterval 2
set style line 3 linecolor rgb '#56b4e9' linetype 3 linewidth 2 pointtype 3 pointsize 1.5 pointinterval 2
set style line 4 linecolor rgb '#e69f00' linetype 4 linewidth 2 pointtype 4 pointsize 1.5 pointinterval 2
set style line 5 linecolor rgb '#f0e442' linetype 5 linewidth 2 pointtype 5 pointsize 1.5 pointinterval 2
set style line 6 linecolor rgb '#0072b2' linetype 6 linewidth 2 pointtype 6 pointsize 1.5 pointinterval 2
set style line 7 linecolor rgb '#e51e10' linetype 7 linewidth 2 pointtype 7 pointsize 1.5 pointinterval 2
set style line 8 linecolor rgb 'black' linetype 8 linewidth 2 pointtype 8 pointsize 1.5 pointinterval 2
set style line 9 linecolor rgb 'dark-violet' linetype 9 linewidth 2 pointtype 9 pointsize 1.5 pointinterval 2
set style line 10 linecolor rgb '#009e73' linetype 10 linewidth 2 pointtype 10 pointsize 1.5 pointinterval 2
set style line 11 linecolor rgb '#56b4e9' linetype 11 linewidth 2 pointtype 11 pointsize 1.5 pointinterval 2
set style line 12 linecolor rgb '#e69f00' linetype 12 linewidth 2 pointtype 12 pointsize 1.5 pointinterval 2
set style line 13 linecolor rgb '#f0e442' linetype 13 linewidth 2 pointtype 13 pointsize 1.5 pointinterval 2
set style line 14 linecolor rgb '#0072b2' linetype 14 linewidth 2 pointtype 14 pointsize 1.5 pointinterval 2
set style line 15 linecolor rgb '#e51e10' linetype 15 linewidth 2 pointtype 15 pointsize 1.5 pointinterval 2
set style line 16 linecolor rgb 'black' linetype 16 linewidth 2 pointtype 16 pointsize 1.5 pointinterval 2
set style line 17 linecolor rgb 'dark-violet' linetype 17 linewidth 2 pointtype 17 pointsize 1.5 pointinterval 2
set style line 18 linecolor rgb '#009e73' linetype 18 linewidth 2 pointtype 18 pointsize 1.5 pointinterval 2
set style line 19 linecolor rgb '#56b4e9' linetype 19 linewidth 2 pointtype 19 pointsize 1.5 pointinterval 2
set style line 20 linecolor rgb '#e69f00' linetype 20 linewidth 2 pointtype 20 pointsize 1.5 pointinterval 2
set style line 21 linecolor rgb '#f0e442' linetype 21 linewidth 2 pointtype 21 pointsize 1.5 pointinterval 2
set style line 22 linecolor rgb '#0072b2' linetype 22 linewidth 2 pointtype 22 pointsize 1.5 pointinterval 2
set style line 23 linecolor rgb '#e51e10' linetype 23 linewidth 2 pointtype 23 pointsize 1.5 pointinterval 2
set style line 24 linecolor rgb 'black' linetype 24 linewidth 2 pointtype 24 pointsize 1.5 pointinterval 2
set style line 25 linecolor rgb 'dark-violet' linetype 25 linewidth 2 pointtype 25 pointsize 1.5 pointinterval 2
set style line 26 linecolor rgb '#009e73' linetype 26 linewidth 2 pointtype 26 pointsize 1.5 pointinterval 2
set style line 27 linecolor rgb '#56b4e9' linetype 27 linewidth 2 pointtype 27 pointsize 1.5 pointinterval 2
set style line 28 linecolor rgb '#e69f00' linetype 28 linewidth 2 pointtype 28 pointsize 1.5 pointinterval 2

#inset graph 1
set origin .075,.59
set size .25,.33

set xrange[1:8]
#set yrange[0:.5]

unset ylabel
unset xlabel

set xtics font ',18'
set ytics font ',18'

unset mxtics
unset mytics

set nokey
set notitle

plot  './raspi3/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 1 title 'Cortex-A53 ADD',\
      './raspi3/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 2 title 'Cortex-A53 CAS',\
      './raspi4/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 3 title 'Cortex-A72 ADD',\
      './raspi4/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 4 title 'Cortex-A72 CAS',\
      './ryzen1/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 5 title 'Ryzen V1605B ADD',\
      './ryzen1/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 6 title 'Ryzen V1605B CAS',\
      './centos7build02/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 7 title 'Opteron 4130 ADD',\
      './centos7build02/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 8 title 'Opteron 4130 CAS',\
      './osxbuild01/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 9 title 'Core i5-3210M ADD',\
      './osxbuild01/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 10 title 'Core i5-3210M CAS',\
      './i7-3930K/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 11 title 'Core i7-3930K ADD',\
      './i7-3930K/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 12 title 'Core i7-3930K CAS',\
      './i7-4980HQ/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 13 title 'Core i7-4980HQ ADD',\
      './i7-4980HQ/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 14 title 'Core i7-4980HQ CAS',\
      './lnxbuild02/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 17 title 'Xeon E5620 ADD',\
      './lnxbuild02/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 18 title 'Xeon E5620 CAS'

#inset graph 2
set origin .3,.59
set size .25,.33

set xrange[1:12]
#set yrange[0:.5]

unset ylabel
unset xlabel

set xtics font ',18'
set ytics font ',18'

unset mxtics
unset mytics

set nokey
set notitle

plot  './other/knl/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 15 title 'Xeon Phi 7250 ADD',\
      './other/knl/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 16 title 'Xeon Phi 7250 CAS',\
      './lnxbuild01/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 19 title 'Xeon X5650 ADD',\
      './lnxbuild01/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 20 title 'Xeon X5650 CAS',\
      './gc64/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 21 title 'Xeon E5-2620 v3 ADD',\
      './gc64/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 22 title 'Xeon E5-2620 v3 CAS',\
      './hrothgar-ivy/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 23 title 'Xeon E5-2670 v2 ADD',\
      './hrothgar-ivy/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 24 title 'Xeon E5-2670 v2 CAS',\
      './quanah/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 25 title 'Xeon E5-2695 v4 ADD',\
      './quanah/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 26 title 'Xeon E5-2695 v4 CAS',\
      './other/xeon_haswell/STRIDEN_ADD.txt' using 1:3 with linespoints linestyle 27 title 'Xeon E5-2698 v3 ADD',\
      './other/xeon_haswell/STRIDEN_CAS.txt' using 1:3 with linespoints linestyle 28 title 'Xeon E5-2698 v3 CAS'

unset multiplot

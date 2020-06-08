#-- RAND_CAMS.gnuplot

set pointintervalbox 3
set term png size 1920,1080 enhanced font 'Verdana,24'
set size .75, 1
set key at graph 1.45, 1.0
set key font ",18"
set title "Random Benchmark GAMS"
set output "RAND_GAMS.png"
set ylabel "Giga AMOs/sec (GAMS)"
set xlabel "PEs"
#set yrange [0:1.2]

plot  './raspi3/RAND_ADD.txt' using 1:3 with linespoints title 'Cortex-A53 ADD',\
      './raspi3/RAND_CAS.txt' using 1:3 with linespoints title 'Cortex-A53 CAS',\
      './raspi4/RAND_ADD.txt' using 1:3 with linespoints title 'Cortex-A72 ADD',\
      './raspi4/RAND_CAS.txt' using 1:3 with linespoints title 'Cortex-A72 CAS',\
      './ryzen1/RAND_ADD.txt' using 1:3 with linespoints title 'Ryzen V1605B ADD',\
      './ryzen1/RAND_CAS.txt' using 1:3 with linespoints title 'Ryzen V1605B CAS',\
      './other/arm/RAND_ADD.txt' using 1:3 with linespoints title 'Cavium ThunderX2 ADD',\
      './other/arm/RAND_CAS.txt' using 1:3 with linespoints title 'Cavium ThunderX2 CAS',\
      './centos7build02/RAND_ADD.txt' using 1:3 with linespoints title 'Opteron 4130 ADD',\
      './centos7build02/RAND_CAS.txt' using 1:3 with linespoints title 'Opteron 4130 CAS',\
      './osxbuild01/RAND_ADD.txt' using 1:3 with linespoints title 'Core i5-3210M ADD',\
      './osxbuild01/RAND_CAS.txt' using 1:3 with linespoints title 'Core i5-3210M CAS',\
      './i7-3930K/RAND_ADD.txt' using 1:3 with linespoints title 'Core i7-3930K ADD',\
      './i7-3930K/RAND_CAS.txt' using 1:3 with linespoints title 'Core i7-3930K CAS',\
      './i7-4980HQ/RAND_ADD.txt' using 1:3 with linespoints title 'Core i7-4980HQ ADD',\
      './i7-4980HQ/RAND_CAS.txt' using 1:3 with linespoints title 'Core i7-4980HQ CAS',\
      './other/knl/RAND_ADD.txt' using 1:3 with linespoints title 'Xeon Phi 7250 ADD',\
      './other/knl/RAND_CAS.txt' using 1:3 with linespoints title 'Xeon Phi 7250 CAS',\
      './lnxbuild02/RAND_ADD.txt' using 1:3 with linespoints title 'Xeon E5620 ADD',\
      './lnxbuild02/RAND_CAS.txt' using 1:3 with linespoints title 'Xeon E5620 CAS',\
      './lnxbuild01/RAND_ADD.txt' using 1:3 with linespoints title 'Xeon X5650 ADD',\
      './lnxbuild01/RAND_CAS.txt' using 1:3 with linespoints title 'Xeon X5650 CAS',\
      './gc64/RAND_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2620 v3 ADD',\
      './gc64/RAND_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2620 v3 CAS',\
      './hrothgar-ivy/RAND_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2670 v2 ADD',\
      './hrothgar-ivy/RAND_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2670 v2 CAS',\
      './quanah/RAND_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2695 v4 ADD',\
      './quanah/RAND_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2695 v4 CAS',\
      './other/xeon_haswell/RAND_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2698 v3 ADD',\
      './other/xeon_haswell/RAND_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2698 v3 CAS'

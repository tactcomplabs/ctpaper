#-- CENTRAL_GAMS.gnuplot

set pointintervalbox 3
set term png size 1920,1080 enhanced font 'Verdana,24'
set size .75, 1
set key at graph 1.45, 1.0
set key font ",17"
set title "Central Benchmark GAMS"
set output "CENTRAL_GAMS.png"
set ylabel "Giga AMOs/sec (GAMS)"
set xlabel "PEs"
#set yrange [0:1.2]

plot  './lnxbuild01/CENTRAL_ADD.txt' using 1:3 with linespoints title 'Xeon X5650 ADD',\
      './lnxbuild01/CENTRAL_CAS.txt' using 1:3 with linespoints title 'Xeon X5650 CAS',\
      './lnxbuild02/CENTRAL_ADD.txt' using 1:3 with linespoints title 'Xeon E5620 ADD',\
      './lnxbuild02/CENTRAL_CAS.txt' using 1:3 with linespoints title 'Xeon E5620 CAS',\
      './osxbuild01/CENTRAL_ADD.txt' using 1:3 with linespoints title 'i5-3210M ADD',\
      './osxbuild01/CENTRAL_CAS.txt' using 1:3 with linespoints title 'i5-3210M CAS',\
      './centos7build02/CENTRAL_ADD.txt' using 1:3 with linespoints title 'Opteron 4130 ADD',\
      './centos7build02/CENTRAL_CAS.txt' using 1:3 with linespoints title 'Opteron 4130 CAS',\
      './raspi4/CENTRAL_ADD.txt' using 1:3 with linespoints title 'Raspberry Pi4 ADD',\
      './raspi4/CENTRAL_CAS.txt' using 1:3 with linespoints title 'Raspberry Pi4 CAS',\
      './raspi3/CENTRAL_ADD.txt' using 1:3 with linespoints title 'Raspberry Pi3 ADD',\
      './raspi3/CENTRAL_CAS.txt' using 1:3 with linespoints title 'Raspberry Pi3 CAS',\
      './gc64/CENTRAL_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2620 \@ 2.4Ghz ADD',\
      './gc64/CENTRAL_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2620 \@ 2.4Ghz CAS',\
      './hrothgar-ivy/CENTRAL_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2670 \@ 2.5Ghz ADD',\
      './hrothgar-ivy/CENTRAL_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2670 \@ 2.5Ghz CAS',\
      './quanah/CENTRAL_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2695 \@ 2.10Ghz ADD',\
      './quanah/CENTRAL_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2695 \@ 2.10Ghz CAS',\
      './i7-3930K/CENTRAL_ADD.txt' using 1:3 with linespoints title 'Core i7-3930K \@ 3.20Ghz ADD',\
      './i7-3930K/CENTRAL_CAS.txt' using 1:3 with linespoints title 'Core i7-3930K \@ 3.20Ghz CAS',\
      './i7-4980HQ/CENTRAL_ADD.txt' using 1:3 with linespoints title 'Core i7-4980HQ \@ 2.80Ghz ADD',\
      './i7-4980HQ/CENTRAL_CAS.txt' using 1:3 with linespoints title 'Core i7-4980HQ \@ 2.80Ghz CAS',\
      './ryzen1/CENTRAL_ADD.txt' using 1:3 with linespoints title 'AMD Ryzen V1605B \@ 1.40Ghz ADD',\
      './ryzen1/CENTRAL_CAS.txt' using 1:3 with linespoints title 'AMD Ryzen V1605B \@ 1.40Ghz CAS',\
      './other/knl/CENTRAL_ADD.txt' using 1:3 with linespoints title 'Xeon Phi 7250\@ 1.40Ghz ADD',\
      './other/knl/CENTRAL_CAS.txt' using 1:3 with linespoints title 'Xeon Phi 7250\@ 1.40Ghz CAS',\
      './other/xeon_haswell/CENTRAL_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2698 \@ 2.30Ghz ADD',\
      './other/xeon_haswell/CENTRAL_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2698 \@ 2.30Ghz CAS'


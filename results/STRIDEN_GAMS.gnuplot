#-- STRIDEN_CAMS.gnuplot

set pointintervalbox 3
set term png size 1920,1080 enhanced font 'Verdana,24'
set title "StrideN Benchmark GAMS"
set output "STRIDEN_GAMS.png"
set ylabel "Giga AMOs/sec (GAMS)"
set xlabel "PEs"
#set yrange [0:1.2]

plot  './lnxbuild01/STRIDEN_ADD.txt' using 1:3 with linespoints title 'Xeon X5650 ADD',\
      './lnxbuild01/STRIDEN_CAS.txt' using 1:3 with linespoints title 'Xeon X5650 CAS',\
      './lnxbuild02/STRIDEN_ADD.txt' using 1:3 with linespoints title 'Xeon E5620 ADD',\
      './lnxbuild02/STRIDEN_CAS.txt' using 1:3 with linespoints title 'Xeon E5620 CAS',\
      './osxbuild01/STRIDEN_ADD.txt' using 1:3 with linespoints title 'i5-3210M ADD',\
      './osxbuild01/STRIDEN_CAS.txt' using 1:3 with linespoints title 'i5-3210M CAS',\
      './centos7build02/STRIDEN_ADD.txt' using 1:3 with linespoints title 'Opteron 4130 ADD',\
      './centos7build02/STRIDEN_CAS.txt' using 1:3 with linespoints title 'Opteron 4130 CAS',\
      './raspi4/STRIDEN_ADD.txt' using 1:3 with linespoints title 'Raspberry Pi4 ADD',\
      './raspi4/STRIDEN_CAS.txt' using 1:3 with linespoints title 'Raspberry Pi4 CAS',\
      './raspi3/STRIDEN_ADD.txt' using 1:3 with linespoints title 'Raspberry Pi3 ADD',\
      './raspi3/STRIDEN_CAS.txt' using 1:3 with linespoints title 'Raspberry Pi3 CAS',\
      './gc64/STRIDEN_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2620 \@ 2.4Ghz ADD',\
      './gc64/STRIDEN_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2620 \@ 2.4Ghz CAS',\
      './hrothgar-ivy/STRIDEN_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2670 \@ 2.5Ghz ADD',\
      './hrothgar-ivy/STRIDEN_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2670 \@ 2.5Ghz CAS',\
      './quanah/STRIDEN_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2695 \@ 2.10Ghz ADD',\
      './quanah/STRIDEN_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2695 \@ 2.10Ghz CAS',\
      './i7-3930K/STRIDEN_ADD.txt' using 1:3 with linespoints title 'Core i7-3930K \@ 3.20Ghz ADD',\
      './i7-3930K/STRIDEN_CAS.txt' using 1:3 with linespoints title 'Core i7-3930K \@ 3.20Ghz CAS',\
      './i7-4980HQ/STRIDEN_ADD.txt' using 1:3 with linespoints title 'Core i7-4980HQ \@ 2.80Ghz ADD',\
      './i7-4980HQ/STRIDEN_CAS.txt' using 1:3 with linespoints title 'Core i7-4980HQ \@ 2.80Ghz CAS',\
      './ryzen1/STRIDEN_ADD.txt' using 1:3 with linespoints title 'AMD Ryzen V1605B \@ 1.40Ghz ADD',\
      './ryzen1/STRIDEN_CAS.txt' using 1:3 with linespoints title 'AMD Ryzen V1605B \@ 1.40Ghz CAS',\
      './other/knl/STRIDEN_ADD.txt' using 1:3 with linespoints title 'Xeon Phi 7250\@ 1.40Ghz ADD',\
      './other/knl/STRIDEN_CAS.txt' using 1:3 with linespoints title 'Xeon Phi 7250\@ 1.40Ghz CAS',\
      './other/xeon_haswell/STRIDEN_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2698 \@ 2.30Ghz ADD',\
      './other/xeon_haswell/STRIDEN_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2698 \@ 2.30Ghz CAS'


#-- STRIDE1_CAMS.gnuplot

set pointintervalbox 3
set term png size 1920,1080 enhanced font 'Verdana,16'
set title "Stride1 Benchmark GAMS"
set output "STRIDE1_GAMS.png"
set ylabel "Giga AMOs/sec (GAMS)"
set xlabel "PEs"
#set yrange [0:1.2]

plot  './lnxbuild01/STRIDE1_ADD.txt' using 1:3 with linespoints title 'Xeon X5650 ADD',\
      './lnxbuild01/STRIDE1_CAS.txt' using 1:3 with linespoints title 'Xeon X5650 CAS',\
      './lnxbuild02/STRIDE1_ADD.txt' using 1:3 with linespoints title 'Xeon E5620 ADD',\
      './lnxbuild02/STRIDE1_CAS.txt' using 1:3 with linespoints title 'Xeon E5620 CAS',\
      './osxbuild01/STRIDE1_ADD.txt' using 1:3 with linespoints title 'i5-3210M ADD',\
      './osxbuild01/STRIDE1_CAS.txt' using 1:3 with linespoints title 'i5-3210M CAS',\
      './centos7build02/STRIDE1_ADD.txt' using 1:3 with linespoints title 'Opteron 4130 ADD',\
      './centos7build02/STRIDE1_CAS.txt' using 1:3 with linespoints title 'Opteron 4130 CAS',\
      './raspi4/STRIDE1_ADD.txt' using 1:3 with linespoints title 'Raspberry Pi4 ADD',\
      './raspi4/STRIDE1_CAS.txt' using 1:3 with linespoints title 'Raspberry Pi4 CAS',\
      './raspi3/STRIDE1_ADD.txt' using 1:3 with linespoints title 'Raspberry Pi3 ADD',\
      './raspi3/STRIDE1_CAS.txt' using 1:3 with linespoints title 'Raspberry Pi3 CAS',\
      './gc64/STRIDE1_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2620 \@ 2.4Ghz ADD',\
      './gc64/STRIDE1_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2620 \@ 2.4Ghz CAS',\
      './hrothgar-ivy/STRIDE1_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2670 \@ 2.5Ghz ADD',\
      './hrothgar-ivy/STRIDE1_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2670 \@ 2.5Ghz CAS',\
      './quanah/STRIDE1_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2695 \@ 2.10Ghz ADD',\
      './quanah/STRIDE1_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2695 \@ 2.10Ghz CAS',\
      './i7-3930K/STRIDE1_ADD.txt' using 1:3 with linespoints title 'Core i7-3930K \@ 3.20Ghz ADD',\
      './i7-3930K/STRIDE1_CAS.txt' using 1:3 with linespoints title 'Core i7-3930K \@ 3.20Ghz CAS',\
      './i7-4980HQ/STRIDE1_ADD.txt' using 1:3 with linespoints title 'Core i7-4980HQ \@ 2.80Ghz ADD',\
      './i7-4980HQ/STRIDE1_CAS.txt' using 1:3 with linespoints title 'Core i7-4980HQ \@ 2.80Ghz CAS',\
      './ryzen1/STRIDE1_ADD.txt' using 1:3 with linespoints title 'AMD Ryzen V1605B \@ 1.40Ghz ADD',\
      './ryzen1/STRIDE1_CAS.txt' using 1:3 with linespoints title 'AMD Ryzen V1605B \@ 1.40Ghz CAS'


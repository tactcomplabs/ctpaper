#-- SG_CAMS.gnuplot

set pointintervalbox 3
set term png size 1920,1080 enhanced font 'Verdana,24'
set title "Scatter/Gather Benchmark GAMS"
set output "SG_GAMS.png"
set ylabel "Giga AMOs/sec (GAMS)"
set xlabel "PEs"
#set yrange [0:1.2]

plot  './lnxbuild01/SG_ADD.txt' using 1:3 with linespoints title 'Xeon X5650 ADD',\
      './lnxbuild01/SG_CAS.txt' using 1:3 with linespoints title 'Xeon X5650 CAS',\
      './lnxbuild02/SG_ADD.txt' using 1:3 with linespoints title 'Xeon E5620 ADD',\
      './lnxbuild02/SG_CAS.txt' using 1:3 with linespoints title 'Xeon E5620 CAS',\
      './osxbuild01/SG_ADD.txt' using 1:3 with linespoints title 'i5-3210M ADD',\
      './osxbuild01/SG_CAS.txt' using 1:3 with linespoints title 'i5-3210M CAS',\
      './centos7build02/SG_ADD.txt' using 1:3 with linespoints title 'Opteron 4130 ADD',\
      './centos7build02/SG_CAS.txt' using 1:3 with linespoints title 'Opteron 4130 CAS',\
      './raspi4/SG_ADD.txt' using 1:3 with linespoints title 'Raspberry Pi4 ADD',\
      './raspi4/SG_CAS.txt' using 1:3 with linespoints title 'Raspberry Pi4 CAS',\
      './raspi3/SG_ADD.txt' using 1:3 with linespoints title 'Raspberry Pi3 ADD',\
      './raspi3/SG_CAS.txt' using 1:3 with linespoints title 'Raspberry Pi3 CAS',\
      './gc64/SG_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2620 \@ 2.4Ghz ADD',\
      './gc64/SG_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2620 \@ 2.4Ghz CAS',\
      './hrothgar-ivy/SG_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2670 \@ 2.5Ghz ADD',\
      './hrothgar-ivy/SG_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2670 \@ 2.5Ghz CAS',\
      './quanah/SG_ADD.txt' using 1:3 with linespoints title 'Xeon E5-2695 \@ 2.10Ghz ADD',\
      './quanah/SG_CAS.txt' using 1:3 with linespoints title 'Xeon E5-2695 \@ 2.10Ghz CAS',\
      './i7-3930K/SG_ADD.txt' using 1:3 with linespoints title 'Core i7-3930K \@ 3.20Ghz ADD',\
      './i7-3930K/SG_CAS.txt' using 1:3 with linespoints title 'Core i7-3930K \@ 3.20Ghz CAS',\
      './i7-4980HQ/SG_ADD.txt' using 1:3 with linespoints title 'Core i7-4980HQ \@ 2.80Ghz ADD',\
      './i7-4980HQ/SG_CAS.txt' using 1:3 with linespoints title 'Core i7-4980HQ \@ 2.80Ghz CAS',\
      './ryzen1/SG_ADD.txt' using 1:3 with linespoints title 'AMD Ryzen V1605B \@ 1.40Ghz ADD',\
      './ryzen1/SG_CAS.txt' using 1:3 with linespoints title 'AMD Ryzen V1605B \@ 1.40Ghz CAS'


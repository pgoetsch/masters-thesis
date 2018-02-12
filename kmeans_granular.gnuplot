set terminal png size 1024,768
set output "kmeans_granular_v1.png"

set title "KMeans Test Cases Runtime"
set xlabel "Virtual Memory (GB)" center offset 0,-2,0
set ylabel "Virtual Cores" rotate by 90 offset 0,0,0
set zlabel "Duration (s)" center rotate by 90

set dgrid3d 50,10,10
set hidden3d
#set pm3d 

set view 90, 0, 1, 1

splot "data/kmeans_granular_v1.dat" u 1:2:3 with lines

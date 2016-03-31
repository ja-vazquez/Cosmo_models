#set term post eps enhanced "Times Roman" 20
set term post eps enhanced color "Times Roman" 20

#set terminal postscript eps enhanced  defaultplex \
#dashed dashlength 3.0 linewidth 1.0 butt \
"Times Roman" 20
set output "Hz.eps"

set style line 1 lt 4 lw 3 pt 3 lc rgb "#0000FF"
set style line 2 lt 3 lw 3 pt 3 lc rgb "#33CCFF"
set style line 3 lt 2 lw 3 pt 3 lc rgb "#00FF00"
set style line 4 lt 1 lw 3 pt 3 lc rgb "#FF0000"

#set terminal vdi 13 0 fff f00 f0 f ff f0f
#set logscale x
#set key left
set xlabel "{z}"
set ylabel "{H(z)/H_0}"
#set xzeroaxis
set size ratio 0.6
#set logscale 
#set label " E"  at first  2, first  0.1
#set label " TE"  at first  2, first  6
#set label " T"  at first  2, first  2000

#set title "O_{m}=O_{m,fid}(1-O_{ede})   ,   h=h_{fid}(1-O_{ede})^{-1/2}"
set key left top

#set border 3
#set xtics nomirror
#set ytics nomirror
#set view 115,110,1,1 
#set xtics 2.5
#set ytics 0.01

plot [0:100][]'Hz2.dat' u 1:($2/2.335048337963656E-004) w l title 'LCDM-camb', 'Hz_sim.dat' w l title 'LCDM-SimpleMC', 'Hz3.dat' u 1:($2/2.335048337963656E-004) w l title 'O_{ede}=0.1 camb', 'Hz_sim.dat' u 1:3 w l title 'O_{ede}=0.1 Simple-MC'

#plot [1:][]'Hz3.dat' u ($1+1):($2/2.335048337963656E-004) w l title 'O_{ede}=0.1 CAMB', 'H_sim.dat' u ($1+1):3 w l title 'O_{ede}=0.1 SimpleMC'

#plot [0.01:][]'G_fid_LCDM.out' w l title 'LCDM' ls 1, 'G_fid_LCDM.out' u 1:((0.27*$1**(-1)*(0.000233/$3)**2)**0.55) w l title '{/Symbol W}_{m}(a)^{0.55}' ls 2, 'G_fid_01.out' w l title '{/Symbol W}_{ede} = 0.1' ls 3, 'G_fid_02.out' w l title '{/Symbol W}_{ede} = 0.2' ls 4

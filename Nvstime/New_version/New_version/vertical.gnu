### 2D density color plot


unset raxis
set theta counterclockwise right
set style parallel front  lt black linewidth 2.000 dashtype solid
set key title "" center
set key fixed right top vertical Right noreverse enhanced autotitle nobox
set key noinvert samplen 4 spacing 1 width 0 height 0 
set key maxcolumns 0 maxrows 0
set key noopaque
unset label
unset arrow
set style increment default
unset style line
unset style arrow
set style histogram clustered gap 2 title textcolor lt -1
unset object
set style textbox transparent margins  1.0,  1.0 border  lt -1 linewidth  1.0
set offsets 0, 0, 0, 0
set pointsize 1
set pointintervalbox 1
#set encoding default
unset polar
unset parametric
unset decimalsign
unset micro
unset minussign
set view 60, 30, 1, 1
set view azimuth 0
set rgbmax 255
set samples 100, 100
set isosamples 10, 10
set surface 
unset contour
set cntrlabel  format '%8.3g' font '' start 5 interval 20
set mapping cartesian
set datafile separator whitespace
unset hidden3d
set cntrparam order 4
set cntrparam linear
set cntrparam levels 5
set cntrparam levels auto
set cntrparam firstlinetype 0 unsorted
set cntrparam points 5
set size ratio 0 1,1
set origin 0,0
set style data points
set style function lines
unset xzeroaxis
unset yzeroaxis
unset zzeroaxis
unset x2zeroaxis
unset y2zeroaxis
set xyplane relative 0.5
set tics scale  1, 0.5, 1, 1, 1
set mxtics default
set mytics default
set mztics default
set mx2tics default
set my2tics default
set mcbtics default
set mrtics default
set nomttics
set xtics border in scale 1,0.5 mirror norotate  autojustify
set xtics  norangelimit autofreq 
set ytics border in scale 1,0.5 mirror norotate  autojustify
set ytics  norangelimit autofreq 
set ztics border in scale 1,0.5 nomirror norotate  autojustify
set ztics  norangelimit autofreq 
unset x2tics
unset y2tics
set cbtics border in scale 1,0.5 mirror norotate  autojustify
set cbtics  norangelimit autofreq 
set rtics axis in scale 1,0.5 nomirror norotate  autojustify
set rtics  norangelimit autofreq 
unset ttics
set title "" 
set title  font "" textcolor lt -1 norotate
set timestamp bottom 
set timestamp "" 
set timestamp  font "" textcolor lt -1 norotate
set trange [ * : * ] noreverse nowriteback
set urange [ * : * ] noreverse nowriteback
set vrange [ * : * ] noreverse nowriteback
set xlabel "" 
set xlabel  font "" textcolor lt -1 norotate
set x2label "" 
set x2label  font "" textcolor lt -1 norotate
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set ylabel "" 
set ylabel  font "" textcolor lt -1 rotate
set y2label "" 
set y2label  font "" textcolor lt -1 rotate
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zlabel "" 
set zlabel  font "" textcolor lt -1 norotate
set zrange [ * : * ] noreverse writeback
set cblabel "" 
set cblabel  font "" textcolor lt -1 rotate
set cbrange [ * : * ] noreverse writeback
set rlabel "" 
set rlabel  font "" textcolor lt -1 norotate
set rrange [ * : * ] noreverse writeback
unset logscale
unset jitter
set zero 1e-08
set lmargin  -1
set bmargin  -1
set rmargin  -1
set tmargin  -1

set pm3d explicit at s
set pm3d scansautomatic
set pm3d interpolate 1,1 flush begin noftriangles noborder corners2color mean
set pm3d nolighting
set palette positive nops_allcF maxcolors 0 gamma 1.5 color model RGB 
set palette rgbformulae 7, 5, 15
set colorbox default
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault
set style boxplot candles range  1.50 outliers pt 7 separation 1 labels auto unsorted
set loadpath 
set fontpath 
set psdir
set fit brief errorvariables nocovariancevariables errorscaling prescale nowrap v5
GNUTERM = "Qt4"
set xlabel "{/Symbol n}_0"
#set key out left top vertical Right noreverse enhanced autotitle nobox
## Last datafile plotted: "figura"

set size 0.5,2.25
set terminal postscript eps 25  color enhanced
set encoding iso_8859_1
set terminal epslatex
set terminal postscript color enhanced 
#set terminal png size 1000,1150


unset multiplot
set output '2Dimensional_vertical.eps'


set multiplot layout 5,1





set xtics font "Times-Roman,15" 
set xlabel font "Times-Roman,15" 
set ytics font "Times-Roman,15" 
set ylabel font "Times-Roman,15" 
set key font "Times-Roman,15" 


set mxtics 5
set mytics 2



  set ylabel "{ z / [{\305}] }" 
  set xlabel "{ y/ [{\305}] }" 
  


unset xlabel
set xtics 20
set border 15 lw 2
unset ylabel
unset key
set xtics scale 1,0.5

set xtics add("20" 20,"40" 40,"60" 60,"80" 80," " 100)
set mxtics 4
set tics front #!!!! To show up the xtics 
set xrange[0:20]
set yrange[0:15]
set xtics 5
set mxtics 5
set size ratio 1
set xtics nomirror
z(x)=5 
set label front
########################################################################################## Li


set ytics nomirror
set key 
unset object

set size 0.55,0.55
set origin 0.,1.74

set label 1 "Li^+" at 4,11 textcol rgb "black"

unset key
set label 3  "{n }" offset -3.6,4 rotate by 90

set xtics add("" 0,"" 20)


f(x)=B*x
z(x)=A*x

FIT_MAXIT=1000 
FIT_LIMIT=1e+06 
fit [][0:5] f(x)  'LiSpherical-average-spline' u 2:1 via B 
fit [][0:5] z(x)  'LiBarcelona_Spherical-average-spline' u 2:1 via A 

unset xtics
set tics front
set xtics add("" 0,"" 5,""10,""15,"" 20)
set ytics font "Times-Roman,21" 
set ytics nomirror
set ytics add("" 20)
#set xtics font "Times-Roman,21" 
#set xtics 5  
p    f(x)  with filledcurves x2 fs transparent solid 0.2 ls 6  dt "-" lc rgb "grey20" lw 2 lt 8  t "" ,\
      f(x)  dt "-" lc rgb "red" lw 2 lt 8  t "" ,\
     z(x) with filledcurves y1 fs transparent solid 0.2 ls 7 dt "-" lc rgb "white" lw 2 lt 8  t ""  ,\
     z(x)  dt "-" lc rgb "blue" lw 2 lt 8  t ""  ,\
     "LiNvstime" u 1:2 w l dt "-" lw 1 lc rgb "black" t "" ,\
   "LiBarcelona_Spherical-average-spline" u 2:1 w p pt 6 pi 1 lc rgb "blue" t "Barcelona",\
   "LiSpherical-average-spline" u 2:1 w p pt 4 pi 1 lc rgb "red" t "Toulouse"


      
#################################################################################################


############################################################################################################################################# Na

unset object


set ytics nomirror
#set ytics add("" 0,"" 5,""10,""15,"" 20)
set xtics nomirror

set size 0.55,0.55
set origin 0.,1.34


f(x)=B*x
z(x)=A*x

FIT_MAXIT=1000 
FIT_LIMIT=1e+06 
fit [][0:5] f(x)  'NaSpherical-average-spline' u 2:1 via B 
fit [][0:5] z(x)  'NaBarcelona_Spherical-average-spline' u 2:1 via A 

set label 1 "Na^+" at 4,11 textcol rgb "red"
set ytics font "Times-Roman,21" 
set ytics nomirror
set ytics add("" 14)
#set xtics font "Times-Roman,21" 
#set xtics 5  


p    f(x)  with filledcurves y1 fs transparent solid 0.2 ls 6  dt "-" lc rgb "grey20" lw 2 lt 8  t "" ,\
      f(x)  dt "-" lc rgb "red" lw 2 lt 8  t "" ,\
     z(x) with filledcurves x2 fs transparent solid 0.2 ls 7 dt "-" lc rgb "white" lw 2 lt 8  t ""  ,\
     z(x)  dt "-" lc rgb "blue" lw 2 lt 8  t ""  ,\
     "NaNvstime" u 1:2 w l dt "-" lw 1 lc rgb "black" t "" ,\
   "NaBarcelona_Spherical-average-spline" u 2:1 w p pt 6 pi 1 lc rgb "blue" t "Barcelona",\
   "NaSpherical-average-spline" u 2:1 w p pt 4 pi 1 lc rgb "red" t "Toulouse"


#############################################################################################################################################

############################################################################################################################################# K
#set ytics mirror
set ytics nomirror
unset key
#unset label

set ytics font "Times-Roman,15"
set label 1 "K^+" at 4,11 textcol rgb "green"
set size 0.55,0.55
set origin 0.,0.94
#set label 2  "{ n (r_0) }" offset -4.5,2 rotate by 90
#unset ytics
#unset ylabel
set ytics nomirror
#set ytics add("" 0,"" 5,""10,""15,"" 20)

f(x)=B*x
z(x)=A*x

FIT_MAXIT=1000 
FIT_LIMIT=1e+06 
fit [][0:5] f(x)  'KSpherical-average-spline' u 2:1 via B 
fit [][0:5] z(x)  'KBarcelona_Spherical-average-spline' u 2:1 via A 

set ytics font "Times-Roman,21" 
set ytics nomirror
set ytics add("" 20)
#set xtics font "Times-Roman,21" 
#set xtics 5  

p     f(x)  with filledcurves y1 fs transparent solid 0.2 ls 6  dt "-" lc rgb "grey20" lw 2 lt 8  t "" ,\
      f(x)  dt "-" lc rgb "red" lw 2 lt 8  t "" ,\
     z(x) with filledcurves x2 fs transparent solid 0.2 ls 7 dt "-" lc rgb "white" lw 2 lt 8  t ""  ,\
     z(x)  dt "-" lc rgb "blue" lw 2 lt 8  t ""  ,\
     "KNvstime" u 1:2 w l dt "-" lw 1 lc rgb "black" t "" ,\
   "KBarcelona_Spherical-average-spline" u 2:1 w p pt 6 pi 1 lc rgb "blue" t "Barcelona",\
   "KSpherical-average-spline" u 2:1 w p pt 4 pi 1 lc rgb "red" t "Toulouse"


#############################################################################################################################################
#unset ylabel
#unset ytics
unset label 2
unset object
set label 1 "Rb^+" at 4,11 textcol rgb "blue"

set size 0.55,0.55
set origin 0.,0.54


#set ytics nomirror
#set ytics add("" 0,"" 5,""10,""15,"" 20)
     
f(x)=B*x
z(x)=A*x

FIT_MAXIT=1000 
FIT_LIMIT=1e+06 
fit [][0:5] f(x)  'RbSpherical-average-spline' u 2:1 via B 
fit [][0:5] z(x)  'RbBarcelona_Spherical-average-spline' u 2:1 via A 

set ytics font "Times-Roman,21" 
set ytics nomirror
set ytics add("" 20)
#set xtics font "Times-Roman,21" 
#set xtics 5  
    
p     f(x)  with filledcurves y1 fs transparent solid 0.2 ls 6  dt "-" lc rgb "grey20" lw 2 lt 8  t "" ,\
      f(x)  dt "-" lc rgb "red" lw 2 lt 8  t "" ,\
     z(x) with filledcurves x2 fs transparent solid 0.2 ls 7 dt "-" lc rgb "white" lw 2 lt 8  t ""  ,\
     z(x)  dt "-" lc rgb "blue" lw 2 lt 8  t ""  ,\
     "RbNvstime" u 1:2 w l dt "-" lw 1 lc rgb "black" t "" ,\
   "RbBarcelona_Spherical-average-spline" u 2:1 w p pt 6 pi 1 lc rgb "blue" t "Barcelona",\
   "RbSpherical-average-spline" u 2:1w p pt 4 pi 1 lc rgb "red" t "Toulouse"

#############################################################################################################################################


unset key



#set xlabel "{ y/ [{\305}] }" font "Times-Roman,21" 
 set label 1 "Cs^+" at 4,11 textcol rgb "purple"

set label 2   " {t(ps) }" offset -18.1,-2.5 rotate by 0
#unset ytics
set size 0.61,0.61
set origin -0.06,0.08


   
#set ytics add("" 0,"" 5,""10,""15,"" 20)
 
f(x)=B*x
z(x)=A*x

FIT_MAXIT=1000 
FIT_LIMIT=1e+06 
fit [][0:5] f(x)  'CsSpherical-average-spline' u 2:1 via B 
fit [][0:5] z(x)  'CsBarcelona_Spherical-average-spline' u 2:1 via A 

#set key at 110,10

set ytics font "Times-Roman,21" 
set ytics nomirror
set ytics add("" 20)
set xtics font "Times-Roman,21" 
set xtics 5    
set xlabel "time(ps)" font "Times-Roman,21"
 
p    f(x)  with filledcurves y1 fs transparent solid 0.2 ls 6  dt "-" lc rgb "grey20" lw 2 lt 8  t "" ,\
      f(x)  dt "-" lc rgb "red" lw 2 lt 8  t "" ,\
     z(x) with filledcurves x2 fs transparent solid 0.2 ls 7 dt "-" lc rgb "white" lw 2 lt 8  t ""  ,\
     z(x)  dt "-" lc rgb "blue" lw 2 lt 8  t ""  ,\
     "CsNvstime" u 1:2 w l dt "-" lw 1 lc rgb "black" t "" ,\
   "CsBarcelona_Spherical-average-spline" u 2:1 w p pt 6 pi 1 lc rgb "blue" t "Barcelona",\
   "CsSpherical-average-spline" u 2:1 w p pt 4 pi 1 lc rgb "red" t "Toulouse"








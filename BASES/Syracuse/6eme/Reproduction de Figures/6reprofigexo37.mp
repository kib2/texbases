%verbatimtex
%\documentclass{article}
%\usepackage[frenchb]{babel}
%\begin{document}
%etex;
verbatimtex
\documentclass{article}
\usepackage[latin1,applemac]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{amsmath}
\usepackage[frenchb]{babel}
\begin{document}
etex
input geometriesyr15;
prologue:=1;
beginfig(1);
pair E,D,F,A,B,C,G,H,Q,P;
path c,cc,dag,dcd,dbh;
picture texte;
A=u*(0,0);
B=u*(0,6);
E=u*(0,3);
F=u*(3,3);
G=u*(3,0);
H=u*(3,6);
Q=u*(10,0);
P=u*(10,6);
draw A--B--H--G--cycle;draw F--E;
cc=cercles(G,B);
dag=A--Q;
z1=cc intersectionpoint dag;
draw A--z1;
draw cc cutafter B dashed evenly withpen pencircle scaled .5bp;
draw G--B dashed evenly withpen pencircle scaled .5bp;
dcd= z1--(z1-A) rotated 90 shifted z1;
dbh=B--P;
z2=dbh intersectionpoint dcd;
draw A--z1--z2--H;
label.lrt("D",z1);
label.urt("C",z2);
label.top("B",B);
label.llft("A",A);
label.lrt("G",G);
label.lft("E",E);
label.rt("F",F);
D=z1;C=z2;
trace codeperp(F,G,A,5);
trace codeperp(F,E,B,5);
trace codeperp(E,A,G,5);
trace codeperp(C,D,G,5);
vardef cotationmil(expr aa,bb,ecart,decalage,cote)= % ligne de cotation de geometriesyr15 modifi pour prendre en compte le texte sous forme de string (entre guillemet)
  pair m[] ;
  save $;
  picture $,texte;
  m3=unitvector(bb-aa) rotated 90;
  m1=aa+ecart*m3;
  m2=bb+ecart*m3;
  $=image(
    pickup pencircle scaled 0.2bp;
    drawarrow (1/2[m1,m2]+decalage*unitvector(m1-m2))--m1;
    drawarrow (1/2[m1,m2]-decalage*unitvector(m1-m2))--m2;
    draw aa--m1 dashed evenly;
    draw bb--m2 dashed evenly;
    texte=thelabel(cote,(m1+m2)/2);
    label(texte rotated angle(m2-m1),(m1+m2)/2);    );
  $
enddef;
trace cotationmil(A,G,-4mm,20,"3 cm");
% codage des longueurs des segments
c = (0,-.2cm) -- (0,.2cm) ;
draw c rotated-60 shifted.48[B,E] ;
draw c rotated-60 shifted.52[B,E] ;
draw c rotated-60 shifted.48[A,E] ;
draw c rotated-60 shifted.52[A,E] ;
draw c rotated-60 shifted.48[A,G] ;
draw c rotated-60 shifted.52[A,G] ;
draw c rotated-60 shifted.48[F,G] ;
draw c rotated-60 shifted.52[F,G] ;
endfig;
beginfig(2);
numeric coef[];
z1=(0,0); z2=u*(2,0);
z3=z2 rotated 60;z4=z2 rotated -120;
z5=z4 rotated -120 scaled 2 shifted z3;
z6=z2 scaled 3 shifted z2;
fill z1--z2--z3--cycle withcolor red;
trace z1--z4;trace z3--z5;trace z2--z6;
coef1=2*x2;coef2=coef1*2;coef3=coef1*3;
trace halfcircle scaled coef1 rotated 180 cutbefore z4;
trace halfcircle scaled coef2 rotated 90 shifted z3 cutafter z4 cutbefore z5;
trace halfcircle scaled coef3 shifted z2 cutafter z5;
trace cotationmil(z1,z2,-3mm,20,"2 cm");
endfig;
beginfig(3);
numeric coef[];
z1=(0,0); z2=u*(2,0);
z4=z2 rotated 90;z3=z2 rotated 90 shifted z2;
z5=z2 rotated -90;z6=z2 rotated 180 scaled 2 shifted z4;
y7=y3*4;
z7=(x2,y7);z8=z2 scaled 5;
fill z1--z2--z3--z4--cycle withcolor red;
trace z1--z5;trace z4--z6;trace z3--z7;trace z2--z8;
coef1=2*x2;coef2=coef1*2;coef3=coef1*3;coef4=coef2*2;
trace quartercircle scaled coef1 rotated -90;
trace quartercircle scaled coef2 rotated 180 shifted z4;
trace quartercircle scaled coef3 rotated 90 shifted z3;
trace quartercircle scaled coef4 shifted z2;
trace cotationmil(z1,z2,-3mm,20,"2 cm");
endfig;
beginfig(4);
numeric coef[];
path a[];
z1=(0,0); z2=u*(1.25,0);
z3=u*(6.25,0);z4=-z2;z5=u*(-3.75,0);
a1=z2--z3;
coef1=2*x2;coef2=coef1*2;coef3=coef2*2;
a2=halfcircle scaled coef2 rotated 180 shifted z4;
a3=halfcircle scaled coef3 shifted z2;
trace a2;trace a3;
a4=buildcycle(a1,a2,a3);
fill a4 withcolor 0.8[blue+green,white];draw a4;
trace z5--z2 dashed evenly withpen pencircle scaled .5bp;
trace a1;
trace halfcircle scaled coef1;
trace halfcircle scaled coef1 rotated 180 dashed evenly withpen pencircle scaled .5bp;
trace halfcircle scaled coef2 shifted z4 dashed evenly withpen pencircle scaled .5bp;
trace halfcircle scaled coef3 rotated 180 shifted z2 dashed evenly withpen pencircle scaled .5bp;
trace cotationmil(z2,z3,-4mm,20,"5 cm");
endfig;
beginfig(5);
path c,carre,t[];
z1=u*(0,0);
z2=u*(5,0);
z3=u*(5,5);
z4=u*(0,5);
z5=0.5[z2,z3];
carre=z5--z2--z1--z4--z3;
z6=0.5[z2,z4];
z7=whatever[z1,z5]=whatever[z2,z4];
t1=z1--z7--z6--cycle;
t2=z2--z7--z5--cycle;
t3=z3--z4--z5;
t4=z4--z6--z3--z5;
draw carre;draw carre reflectedabout (z2,z3);
fill t1 withcolor 0.7[blue,white];fill t2 withcolor 0.7[blue,white];fill t3--cycle withcolor 0.7[blue,white];
fill t1 reflectedabout (z2,z3)withcolor 0.7[blue,white];fill t2 reflectedabout (z2,z3)withcolor 0.7[blue,white];fill t3--cycle reflectedabout (z2,z3)withcolor 0.7[blue,white];
draw t1;draw t2;draw t3;draw t4 dashed evenly;
draw t1 reflectedabout (z2,z3);draw t2 reflectedabout (z2,z3);draw t3 reflectedabout (z2,z3);draw t4 reflectedabout (z2,z3)dashed evenly;
trace cotationmil(z1,z4,4mm,20,"5 cm");
%%% codage des longueurs des segments
c = (0,-.2cm) -- (0,.2cm) ;
draw c rotated-60 shifted.48[z1,z2] ;
draw c rotated-60 shifted.52[z1,z2] ;
draw c rotated-60 shifted.48[z1,z4] ;
draw c rotated-60 shifted.52[z1,z4] ;
endfig;
beginfig(6);
numeric coef[];
path a[],p[];
z1=(0,0); z2=u*(2,0);
z3=u*(2,2);z4=u*(0,2);
z5=u*(3,2);
a1=z1--z2--z3--z4--cycle;
coef1=x2;coef2=coef1*2;
a2=halfcircle scaled coef1 shifted .5[z4,z3];
a3=halfcircle scaled coef1 shifted z5;
a4=halfcircle scaled coef2 shifted z3;
%-----------------------------
%traage de la grille(5x5mm)
      %horizontale
    p1:=(4.5*cm,0)--(-2.5*cm,0);
      %verticale
    p2:=(0,4.5*cm)--(0,-2.5*cm);
          %options
    pickup pencircle scaled 0.5;
          %horizontales
    for i:=-2.5 step 0.5 until 4.5:
      draw p1 shifted (0,i*cm);
    endfor;
          %verticales
    for i:=-2.5 step 0.5 until 4.5:
      draw p2 shifted (i*cm,0);
    endfor;
fill a1 withcolor 0.8[red,white];trace a1;
a5=buildcycle(a4,a2,a3);
fill a5 withcolor 0.8[red,white];draw a5;
a6= a5 rotated 90 shifted z2 ;
a7= a5 rotated -90 shifted z4;
a8= a5 rotated 180 shifted z3;
fill a6 withcolor 0.8[red,white];draw a6;
fill a7 withcolor 0.8[red,white];draw a7;
fill a8 withcolor 0.8[red,white];draw a8;
endfig;
beginfig(7);
numeric coef[];
path a[],p[];
z1=u*(0,0.75); z2=u*(7,0.75);
z3=u*(0,3.75);z4=u*(1.75,3.75);
z5=u*(1.75,2.75);z6=u*(0.75,2.75);
z7=u*(0.75,1.75);z8=u*(3.75,1.75);
z9=u*(3.75,2.75);z10=u*(2.75,2.75);
z11=u*(2.75,3.75);z12=u*(5.75,3.75);z13=u*(4,0);z14=u*(3,1.75);
z15=u*(3,2.75);z16=u*(3,3.75);
z17=u*(-0.125,2.875);z18=u*(-0.125,1.635);
a1=z1--z2;trace a1 withpen pensquare scaled .5cm withcolor 0.8[red,white];
a2=z3--z4--z5--z6--z7--z8--z9--z10--z11--z12;trace a2 withpen pensquare scaled .5cm withcolor 0.8[red,white];
a3=z4--z5--z6--z7--z14;trace a3 shifted z13 withpen pensquare scaled .5cm withcolor 0.8[red,white];
a4=z15--z10--z11--z16;trace a4 shifted z13 withpen pensquare scaled .5cm withcolor 0.8[red,white];
a5=z17--z18;trace a5 withpen pensquare scaled .25cm withcolor 0.8[red,white];
%-----------------------------
%traçage de la grille(5x5mm)
      %horizontale
    p1:=(7.25*cm,0)--(-0.25*cm,0);
      %verticale
    p2:=(0,4.5*cm)--(0,0*cm);
          %options
    pickup pencircle scaled 0.5;
          %horizontales
    for i:=0 step 0.5 until 4.5:
      draw p1 shifted (0,i*cm);
    endfor;
          %verticales
    for i:=0 step 0.5 until 7:
      draw p2 shifted (i*cm,0);
    endfor;
endfig;
end
end

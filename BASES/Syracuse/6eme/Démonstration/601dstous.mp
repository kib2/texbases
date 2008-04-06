%%Choix
verbatimtex
%&latex
\documentclass{article}
\usepackage[latin1]{inputenc}
\begin{document}
etex
%%
input geometriesyr12;
beginfig(2);
  for i=0 upto 13 :
    z[2*i]=(i*1cm,0.25cm);
    z[2*i+1]=(i*1cm,-0.25cm);
    draw z[2*i]--z[2*i+1];
  endfor
  z30=(-0.5cm,0);
  z31=(13.5cm,0);
  drawarrow z30--z31;
  label.top(btex $A$ etex,z0);
  label.top(btex $B$ etex,z4);
  label.top(btex $C$ etex,z20);
  label.top(btex $D$ etex,z22);
  label.top(btex $E$ etex,z26);
  label.bot(btex 5,8 etex,z3);
  label.bot(btex 5,9 etex,z23);
endfig;
beginfig(4);
  pair A,F,B,C,D,E;
  z0=u*(1,1);label.llft(btex $A$ etex,z0);A=z0;
  z10=u*(1,4);label(btex AF=5~cm etex,z10);
  z1=u*(4,1);label.bot(btex $F$ etex,z1);F=z1;
  z2=z1 rotatedabout(z0,60);label.top(btex $B$ etex,z2);B=z2;
  draw z0--z1--z2--cycle;
  z4=z0 rotatedabout(z1,-150);label.rt(btex $D$ etex,z4);D=z4;
  z5=z4 rotatedabout(z1,60);label.urt(btex $E$ etex,z5);E=z5;
  z6=z1 rotatedabout(z2,90);label.top(btex $C$ etex,z6);C=z6;
  draw B--C--D--F;
  draw codeperp(F,B,C,5);
  draw codeperp(B,C,D,5);
  draw codeperp(C,D,F,5);
  draw z1--z5--z4;
  draw codesegments(A,F,F,B,2);
  draw codesegments(B,F,F,E,2);
  draw codesegments(E,D,D,C,2);
  draw codesegments(F,D,B,C,2);
  draw codesegments(A,B,B,A,2);
endfig;
beginfig(7);
  pair q[];
  q0=u*(1,1);
  q1=u*(5,1);
  q2=u*(5,4);
  q3=u*(1,4);
  path bc[];
  pair O,P;
  O=1/2[q0,q3];
  P=1/2[q1,q2];
  bc1=cercle(O,abs(1/2[q0,q3]-q0));
  bc2=cercle(P,abs(1/2[q1,q2]-q1));
  draw q0--q1;
  draw q2--q3;
  draw q0--q3 dashed evenly;
  draw q1--q2 dashed evenly;
  draw subpath(0.25*length bc1,0.75*length bc1) of bc1;
  draw subpath(0.75*length bc2,1.25*length bc2) of bc2;
  label.top(btex $A$ etex,q3);
  label.top(btex $B$ etex,q2);
  label.bot(btex $C$ etex,q1);
  label.bot(btex $D$ etex,q0);
endfig;
beginfig(9);
  cadre((0,0),(6.5,7.5));
  trace grille(0.5) withcolor orange;
  path car[];
  car1=(2x.u,6y.u)--(6x.u,6y.u)--(6x.u,7y.u)--(2x.u,7y.u)--cycle;
  car2=(7x.u,12y.u)--(5x.u,12y.u)--(5x.u,11y.u)--(7x.u,11y.u)--cycle;
  car3=(8x.u,11y.u)--(8x.u,10y.u)--(7x.u,10y.u)--(7x.u,11y.u)--cycle;
  car4=(11x.u,8y.u)--(12x.u,8y.u)--(12x.u,9y.u)--(11y.u,9y.u)--cycle;
  for j=1 upto 4:
    fill car[j] withcolor noir;
  endfor
  draw (7x.u,0)--(7x.u,15y.u) withpen pencircle scaled 2bp;
  label.rt(btex $(d)$ etex,(7x.u,14y.u));
  label.rt(btex \bf Figure a etex,(x.u,14y.u));
endfig;
beginfig(10);
cadre((0,0),(6.5,7.5));
trace grille(0.5) withcolor orange;
path carr[];
carr1=(7x.u,8y.u)--(8x.u,8y.u)--(8x.u,9y.u)--(7x.u,9y.u)--cycle;
carr2=(8x.u,7y.u)--(9x.u,7y.u)--(9x.u,8y.u)--(8x.u,8y.u)--cycle;
carr3=(8x.u,9y.u)--(8x.u,10y.u)--(11x.u,10y.u)--(11x.u,8y.u)--(10x.u,8y.u)--(10x.u,9y.u)--cycle;
for j=1 upto 3:
  fill carr[j] withcolor noir;
endfor
draw (7x.u,0)--(7x.u,15y.u) withpen pencircle scaled 2bp;
draw (0,7y.u)--(13x.u,7y.u) withpen pencircle scaled 2bp;
label.rt(btex $(d)$ etex,(7x.u,14y.u));
label.bot(btex $(d')$ etex,(x.u,7y.u));
label.rt(btex \bf Figure b etex,(x.u,14y.u));
endfig;
end
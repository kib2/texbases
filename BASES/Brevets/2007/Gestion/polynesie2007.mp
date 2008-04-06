verbatimtex
%&latex
\documentclass{article}
\begin{document}
etex

input macrostat2;

beginfig(1);
  cadre((0,0),(12,11));
  x.u=1cm;
  y.u=0.2cm;
  intervallex=3;
  legendex(btex \^Age etex);
  legendey(btex Effectifs etex);
  graduax(btex \small 20 \`a 24 etex,1+2/3);
  graduax(btex \small 24 \`a 28 etex,3);
  graduax(btex \small 28 \`a 32 etex,4+1/3);
  graduax(btex \small 32 \`a 36 etex,5+2/3);
  graduax(btex \small 36 \`a 40 etex,7);
  graduax(btex \small 40 \`a 44 etex,8+1/3);
  graduay(btex 6 etex,6);
  graduay(btex 12 etex,12);
  graduay(btex 21 etex,21);
  graduay(btex 30 etex,30);
  graduay(btex 36 etex,36);
  graduay(btex 45 etex,45);
  draw axes;
  pickup pencircle scaled 1.5;
  marque_histo:="blanc";
  draw histo((20,12),(24,30),(28,45),(32,36),(36,21),(40,6),(44,0));
endfig;

input geometriesyr16;
_nfig:=1;
u:=1cm;
figureespace(-10u,-10u,10u,10u);
Initialisation(5,30,15,500);
color A,B,C,D,E,F,G,H,I,J,K,L;
trace Pave(E,F,G,H,D,A,B,C)(7/9,1,6/9);
I=2/6[A,E];
J=2/6[A,F];
K=2/6[D,G];
L=2/6[D,H];
trace segment(A,F);
trace segment(D,G) dashed evenly;
trace chemin(J,K,L,I) dashed evenly;
trace segment(I,J);
nomme.llft(E);
nomme.lrt(F);
nomme.rt(G);
nomme.urt(C);
nomme.ulft(D);
nomme.ulft(A);
nomme.bot(H);
nomme.lft(I);
nomme.bot(J);
nomme.bot(K);
nomme.ulft(L);
finespace;
end
verbatimtex
%&latex
\documentclass{article}
\usepackage[frenchb]{babel}
\begin{document}
etex

input geometriesyr12;
figure(-u,0,10u,10u);
  pair O,H,F,D,B,G,I,E,C,A;
  marque_p:="croix";
  O=u*(4,4);nomme.llft(O);
  path cc;
  cc=cercle(O,3.75cm);
  draw cc;
  H=point(0.15*length cc) of cc;nomme.top(H);
  F=point(0.26*length cc) of cc;nomme.top(F);
  D=point(0.40*length cc) of cc;nomme.lft(D);
  B=point(0.7*length cc) of cc;nomme.llft(B);
  G=2[F,O];nomme.lrt(G);
  I=2[D,O];nomme.lrt(I);
  E=1.15[B,D];nomme.top(E);
  C=1.15[D,B];nomme.bot(C);
  A=u*(0,6);nomme.top(A);
  draw A--B;
  draw E--C;
  draw D--I;
  draw F--G;
  draw O--H--I;
fin;
figure(0,0,10u,10u);
  pair R,S,T;
  marque_p:="non";
  R=u*(1,1);nomme.llft(R);
  T=u*(5,1);nomme.lrt(T);
  S=u*(2,5);nomme.top(S);
  draw triangle(R,S,T);
  trace cotation(R,S,2mm,2mm,btex 7~cm etex);
  draw marqueangle(T,R,S,0);
  label.urt(btex 75\degres etex,w);
  draw marqueangle(R,S,T,0);
  label.bot(btex 60\degres etex,w);
fin;
figure(0,0,10u,10u);
  pair A,B,C,D;
  D=u*(1,1);nomme.llft(D);
  C=u*(6,1);nomme.lrt(C);
  B=u*(8,3.5);nomme.urt(B);
  A=u*(4,4);nomme.top(A);
  draw A--B--C--D--cycle;
  trace cotation(D,C,-2mm,-2mm,btex 10~cm etex);
  trace cotation(D,A,2mm,2mm,btex 7~cm etex);
  trace cotation(C,B,-2mm,-2mm,btex 5~cm etex);
  draw marqueangle(C,D,A,0);
  label.urt(btex 50\degres etex,w);
  draw marqueangle(B,C,D,0);
  label.ulft(btex 120\degres etex,w);
fin;
end
  
  
  
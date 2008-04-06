verbatimtex
%&latex
\documentclass{article}
\usepackage[latin1]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[frenchb]{babel}
\begin{document}
etex
%%
input geometriesyr12;
figure(0,0,6u,5u);
pair G,A,R,E;
G=u*(0.75,0.75);
E=u*(5.25,0.75);
A=u*(2,2.25);
R=cercles(E,G) intersectionpoint cercles(A,G);
trace G--A--R--E--cycle;
trace A--E;
trace codesegments(G,E,E,R,2);
trace codesegments(G,A,A,R,1);
nomme.llft(G);
nomme.lft(A);
nomme.top(R);
nomme.lrt(E);
fin;
figure(0,0,15u,15u);
  pair A,B,C,D,E,F,P,O;
  B=(u*(1,1));nomme.llft(B);
  A=(B shifted (2.7u,0)) rotatedabout (B,18);nomme.lrt(A);
  C=(B shifted (0,4.2u));nomme.ulft(C);
  O=B rotatedabout(A,-95);
  D=(C--(B rotatedabout(C,90))) intersectionpoint demidroite(A,O);nomme.ulft(D);
  E=(3.9u/abs(A-D))[D,A rotatedabout(D,148)];nomme.ulft(E);
  F=(3.3/3.9)[E,D rotatedabout(E,144)];nomme.ulft(F);
  P=(3.6/3.3)[F,E rotatedabout(F,170)];nomme.bot(P);
  label.top(btex \'Etoile polaire etex,P);
  draw D--C--B--A--cycle--E--F--P;
  label.top(btex Unité de longueur : le cm etex,A shifted (u*(4,0)));
  draw codeperp(D,C,B,5);
  draw codeangle.urt(A,B,C,1,3mm,btex 72\degres etex);
  draw codeangle.ulft(D,A,B,1,3mm,btex 95\degres etex);
  labeloffset:=12bp;
  draw codeangle.rt(A,D,E,1,3mm,btex 148\degres etex);
  draw codeangle.lrt(D,E,F,1,3mm,btex 144\degres etex);
  draw codeangle.lrt(E,F,P,1,3mm,btex 170\degres etex);
  labeloffset:=3bp;
  trace appelation(B,C,2mm,btex 4,2 etex);
  trace appelation(D,E,2mm,btex 3,9 etex);
  trace appelation(E,F,2mm,btex 3,3 etex);
  trace appelation(F,P,2mm,btex 3,6 etex);
  trace appelation(B,A,-3mm,btex 5 etex);
fin;
end
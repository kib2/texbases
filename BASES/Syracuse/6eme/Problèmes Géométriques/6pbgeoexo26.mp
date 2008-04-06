verbatimtex
%&latex
\documentclass[12pt]{article}
\usepackage{pifont}
\begin{document}
etex

input geometriesyr16
figure(0,0,15u,15u);
pair A,B,C,D[],E[],F[];
B=u*(3,5);
C=pointarc(cercles(B,6u),340);
A=rotation(C,B,60);
D4=iso(A,B);
D1=rotation(A,D4,60);
D3=iso(D1,D4);
D2=rotation(D1,D3,60);
E4=iso(C,B);
E1=rotation(B,E4,60);
E3=iso(E1,E4);
E2=rotation(E1,E3,60);
F4=iso(C,A);
F1=rotation(C,F4,60);
F3=iso(F1,F4);
F2=rotation(F1,F3,60);
trace polygone(A,D1,D2,D3,D4,B,E1,E2,E3,E4,C,F1,F2,F3,F4);
drawoptions(dashed evenly);
trace segment(A,D4);
trace segment(B,E4);
trace segment(C,F4);
trace segment(D1,D3);
trace segment(E1,E3);
trace segment(F1,F3);
drawoptions();
trace Codelongueur(A,D4,D4,B,B,E4,E4,C,C,F4,F4,A,2);
trace appelation(A,F4,4mm,btex 4~cm etex);
trace Codelongueur(D3,D1,D3,D4,4);
trace Codelongueur(E3,E1,E3,E4,4);
trace Codelongueur(F3,F1,F3,F4,4);
label(btex \ding{172} etex,iso(F1,F2,F3));
fin;
end
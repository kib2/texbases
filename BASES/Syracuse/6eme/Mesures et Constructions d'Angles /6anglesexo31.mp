verbatimtex
%&latex
\documentclass{article}
\usepackage[frenchb]{babel}
\begin{document}
etex

input geometriesyr16;

figure(0,0,8u,6u);
pair A,B,C,D;
A=u*(1,2);
B-A=u*(2,4);
C=rotation(A,B,72);
D=demidroite(A,rotation(B,A,-72)) intersectionpoint demidroite(C,rotation(B,C,72));
trace polygone(A,B,C,D);
trace Codeangle(D,A,B,0,btex 72\degres etex);
trace Codeangle(A,B,C,0,btex 72\degres etex);
trace Codeangle(B,C,D,0,btex 72\degres etex);
trace Codeangle(C,D,A,0,btex 144\degres etex);
trace Codelongueur(A,B,B,C,2);
trace Codelongueur(A,D,D,C,4);
fin;
end
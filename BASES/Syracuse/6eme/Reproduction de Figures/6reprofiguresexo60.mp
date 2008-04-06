verbatimtex
%&latex
\documentclass{article}
\usepackage[frenchb]{babel}
\usepackage[latin1]{inputenc}
\begin{document}
etex

input geometriesyr16;
%figure1
figure(-1u,-1u,5u,7u);
pair A,B,C,D,E,F,G,H,I,J;
A=u*(0,0);
B=u*(4,0);
C=u*(3,3);
D=u*(1,3);
E=u*(0,3);
F=u*(4,3);
trace polygone(A,B,C,D);
G=demidroite(E,rotation(F,E,30)) intersectionpoint demidroite(F,rotation(E,F,-30));
trace polygone(E,G,F);  
J=demidroite(G,rotation(E,G,-70)) intersectionpoint cercles(G,2*u);
I=rotation(G,J,90);
H=rotation(J,I,90);
trace polygone(G,H,I,J);
trace Codelongueur(I,J,I,H,H,G,G,J,C,D,2);
trace appelation(J,I,3mm,btex 2~cm etex);
trace codeperp(G,J,I,5);
trace codeperp(J,I,H,5);
trace codeperp(H,G,J,5);
trace codeperp(I,H,G,5);
trace Codeangle(J,G,E,1,btex 70\degres etex);
trace Codeangle(F,E,G,0,btex 30\degres etex);
trace Codeangle(G,F,E,0,btex 30\degres etex);
trace Codelongueur(E,D,C,F,1);
trace appelation(A,u*(1,0),-3mm,btex 1~cm etex);
trace segment(D,u*(1,0)) dashed evenly;
trace appelation(u*(1,0),D,3mm,btex 3~cm etex);
trace codeperp(B,u*(1,0),D,5);
trace segment(C,u*(3,0)) dashed evenly;
trace appelation(u*(3,0),C,3mm,btex 3~cm etex);
trace codeperp(C,u*(3,0),A,5);
trace Codelongueur(A,u*(1,0),u*(3,0),B,1);
fin;

%figure 2

figure(-1u,-1u,5u,7u);
pair A,B,C,D,E,F,G,H,I,J;
A=u*(1,0);
B=u*(4,0);
C=cercles(A,2*u) intersectionpoint cercles(B,2*u);
E=u*(1,3);
F=u*(4,3);
trace polygone(A,C,B,F,E);
G=demidroite(F,rotation(E,F,-35)) intersectionpoint cercles(F,2cm);
D=demidroite(G,rotation(F,G,-120)) intersectionpoint demidroite(F,E);
trace polygone(D,G,F);  
J=symetrie(F,G);;
I=rotation(G,J,90);
H=rotation(J,I,90);
trace polygone(G,H,I,J);
trace Codelongueur(I,J,I,H,H,G,G,J,G,F,A,C,C,B,2);
trace appelation(J,I,3mm,btex 2~cm etex);
trace codeperp(G,J,I,5);
trace codeperp(J,I,H,5);
trace codeperp(H,G,J,5);
trace codeperp(I,H,G,5);
trace codeperp(F,G,H,5);
marque_a:=marque_a/2;
trace Codeangle(D,G,F,0,btex 120\degres etex);
marque_a:=marque_a*2;
trace Codeangle(G,F,D,1,btex 35\degres etex);
trace cotation(A,B,-1mm,-3mm,btex 3~cm etex) dashed evenly;
trace cotation(A,E,3mm,3mm,btex 3~cm etex) dashed evenly;
trace codeperp(A,E,F,5);
trace codeperp(E,F,B,5);
fin;

end
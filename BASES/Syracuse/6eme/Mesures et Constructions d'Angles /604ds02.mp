verbatimtex
%&latex
\documentclass{article}
\usepackage[frenchb]{babel}
\begin{document}
etex
%

input geometriesyr16;
figuremainlevee(0,0,10u,10u);
pair A,B,C;
A=u*(0.75,0.75);
B=u*(4,1.25);
C=demidroite(A,rotation(B,A,48)) intersectionpoint demidroite(B,rotation(A,B,-84));
trace triangle(A,B,C);
trace appelation(A,B,-2mm,btex 8~cm etex);
trace marqueangle(C,B,A,0);
label.ulft(btex 84\degres etex,w);
trace marqueangle(B,A,C,0);
label.urt(btex 48\degres etex,w);
nomme.llft(A);
nomme.lrt(B);
nomme.top(C);
finmainlevee;
figure(0,0,6.5u,4u);
pair I,O,J,K,L;
I=u*(0.75,0.75);
O=u*(3,1);
J=symetrie(I,O);
K=rotation(I,O,-60);
L=rotation(J,O,100);
trace droite(I,J);
trace demidroite(O,K);
trace demidroite(O,L);
trace marqueangle(K,O,I,1);
marque_a:=25;
trace marqueangle(L,O,K,2);
marque_a:=30;
trace marqueangle(J,O,L,4);
marque_p:="croix";
nomme.bot(I);
nomme.bot(J);
nomme.bot(O);
nomme.llft(K);
nomme.rt(L);
fin;


end
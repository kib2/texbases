verbatimtex
%&latex
\documentclass{article}
\usepackage[frenchb]{babel}
\begin{document}
etex

input geometriesyr16;
u:=7mm;
figuremainlevee(0,0,8u,8u);
pair A,B,C,D;
B=u*(1,2);
C-B=u*(4,-1);
A=7/5[B,rotation(C,B,60)];
D=perpendiculaire(A,B,A) intersectionpoint parallele(A,B,C);
trace polygone(A,B,C);
trace droite(C,D);
trace droite(A,D);
trace codeperp(B,A,D,8);
trace marque_para(droite(A,B),droite(C,D),0.4);
trace Codeangle(C,B,A,0,btex 60\degres etex);
trace appelation(B,C,-3mm,btex 4~cm etex);
trace appelation(B,A,3mm,btex 5~cm etex);
nomme.llft(B);
nomme.lrt(C);
nomme.top(A);
nomme.top(D);
finmainlevee;
u:=1cm;
figure(0,0,10u,12u);
trace feuillet withcolor blanc;
pair A,B,C,D,E,F;
B=u*(1,2);
C-B=u*(4,0);
A=5/4[B,rotation(C,B,60)];
D=perpendiculaire(A,B,A) intersectionpoint parallele(A,B,C);
E=symetrie(C,A,D);
F=symetrie(B,A,D);
trace segment(B,C);
trace marquesegment(B,C);
nomme.llft(B);
nomme.lrt(C);
fin;
end
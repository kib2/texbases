verbatimtex
%&latex
\documentclass{article}
\usepackage[frenchb]{babel}
\begin{document}
etex

input geometriesyr16;

figuremainlevee(0,0,6u,6u);
pair A,B,C,D;
A=u*(3,1);
C-A=u*(0,4);
B-A=u*(-1,2.5);
D=symetrie(B,C,A);
trace polygone(A,B,C,D);
nomme.llft(A);
nomme.lft(B);
nomme.ulft(C);
nomme.rt(D);
trace segment(A,C) dashed evenly;
trace appelation(A,B,2mm,btex 5~cm etex);
trace appelation(B,C,2mm,btex 3~cm etex);
trace appelation(C,A,2mm,btex 6~cm etex);
finmainlevee;
figuremainlevee(0,0,6u,6u);
pair A,B,C,D;
A=u*(3,1);
B-A=u*(-1,2.5);
C=3/5[B,rotation(A,B,90)];
D=symetrie(B,C,A);
trace polygone(A,B,C,D);
nomme.llft(A);
nomme.lft(B);
nomme.ulft(C);
nomme.rt(D);
trace appelation(A,B,2mm,btex 4~cm etex);
trace appelation(B,C,2mm,btex 3~cm etex);
trace codeperp(A,B,C,8);
finmainlevee;
figuremainlevee(0,0,8u,8u);
pair A,B,C,D;
A=u*(3,1);
C-A=u*(1,4);
D=3/5[C,rotation(A,C,120)];
B=symetrie(D,C,A);
trace polygone(A,B,C,D);
trace segment(C,A) dashed evenly;
nomme.llft(A);
nomme.lft(B);
nomme.top(C);
nomme.rt(D);
trace appelation(C,D,2mm,btex 3~cm etex);
trace appelation(C,A,2mm,btex 6~cm etex);
trace Codeangle(A,C,D,0,btex 120\degres etex);
finmainlevee;
end
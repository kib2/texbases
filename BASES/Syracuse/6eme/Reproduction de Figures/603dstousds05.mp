verbatimtex
%&latex
\documentclass{article}
\usepackage[frenchb]{babel}
\begin{document}
etex
%%

input geometriesyr12;
figure(0,0,10u,10u);
pair A,B,C,D,E;
C=u*(4,2);
D=u*(6.5,1);
A=3/5[C,rotation(D,C,90)];
E=rotation(D,A,60);
B=cercles(A,3u) intersectionpoint cercles(C,3u);
trace A--B--C--D--E--cycle;
trace C--A--D;
trace codeperp(A,C,D,5);
trace codesegments(A,B,B,C,1);
trace codesegments(A,E,E,D,2);
trace codesegments(D,A,A,E,2);
trace appelation(B,A,3mm,btex 5~cm etex);
trace appelation(C,A,3mm,btex 4~cm etex);
nomme.lft(B);
nomme.bot(C);
nomme.bot(D);
nomme.top(E);
nomme.top(A);
trace marqueangle(C,A,D,0);
label.bot(btex 60\degres etex,w);
fin;
end
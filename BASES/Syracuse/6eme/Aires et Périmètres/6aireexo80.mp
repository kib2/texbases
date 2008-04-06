verbatimtex
%&latex
\documentclass{article}
\usepackage{mathrsfs}
\begin{document}
etex
input geometriesyr16;

u:=0.5cm;

figure(0,0,13u,7u);
pair A[];
A1=u*(2,1); 
A2=u*(2,5);
A3=u*(1,5);
A4=u*(1,6); 
A5=u*(7,6);
A6=u*(7,4);
A7=u*(5,4); 
A8=u*(5,1);
trace A1--A2--A3--A4--A5--A6--A7--A8--cycle;
remplis (polygone(A1,A2,A3,A4,A5,A6,A7,A8)) withcolor 0.2white;

trace u*(9,5)--u*(9,6)--u*(10,6)--u*(10,5)--cycle;
remplis (u*(9,5)--u*(9,6)--u*(10,6)--u*(10,5)--cycle) withcolor 0.8white;

trace u*(9,1)--u*(9,2)--u*(11,2)--u*(11,1)--cycle;
remplis (u*(9,1)--u*(9,2)--u*(11,2)--u*(11,1)--cycle) withcolor 0.8white;

trace u*(9,3)--u*(9,4)--u*(10,3)--cycle;
remplis (u*(9,3)--u*(9,4)--u*(10,3)--cycle) withcolor 0.8white;

trace grille(0.5) withcolor orange;
fin;
end

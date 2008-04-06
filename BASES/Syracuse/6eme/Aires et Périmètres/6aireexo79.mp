
verbatimtex
%&latex
\documentclass{article}
\usepackage{mathrsfs}
\begin{document}
etex
input geometriesyr16;

u:=0.5cm;

figure(0,0,18u,10u);
pair A[],B[],C[],D[],E[];
A1=u*(1,5); 
A2=u*(1,9);
A3=u*(6,9);
A4=u*(6,5);
trace A1--A2--A3--A4--cycle;
remplis (polygone(A1,A2,A3,A4)) withcolor 0.8white;

B1=u*(8,5); 
B2=u*(8,8);
B3=u*(10,8);
B4=u*(10,7);
B5=u*(11,7); 
B6=u*(11,6);
B7=u*(12,6);
B8=u*(12,5);
trace B1--B2--B3--B4--B5--B6--B7--B8--cycle;
remplis (polygone(B1,B2,B3,B4,B5,B6,B7,B8)) withcolor 0.8white;

C1=u*(2,1); 
C2=u*(1,2);
C3=u*(1,3);
C4=u*(2,4);
C5=u*(5,4); 
C6=u*(6,3);
C7=u*(5,2);
C8=u*(4,2);
C9=u*(3,1);
trace C1--C2--C3--C4--C5--C6--C7--C8--C9--cycle;
remplis (polygone(C1,C2,C3,C4,C5,C6,C7,C8,C9)) withcolor 0.8white;

D1=u*(8,1); 
D2=u*(8,4);
D3=u*(14,1);
trace D1--D2--D3--cycle;
remplis (polygone(D1,D2,D3)) withcolor 0.8white;

E1=u*(16,4); 
E2=u*(16,5);
E3=u*(17,5);
E4=u*(17,4);
trace E1--E2--E3--E4--cycle;
remplis (polygone(E1,E2,E3,E4)) withcolor black;

trace grille(0.5) withcolor orange;
fin;
end

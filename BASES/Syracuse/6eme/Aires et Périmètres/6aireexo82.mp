verbatimtex
%&latex
\documentclass{article}
\usepackage{mathrsfs}
\begin{document}
etex
input geometriesyr16;

u:=0.5cm;

figure(0,0,20u,12u);
pair A[],B[],C[];
A1=u*(1,11); 
A2=u*(2,11);
A3=u*(2,10);
trace A1--A2--A3--cycle;
remplis (polygone(A1,A2,A3)) withcolor 0.4white;
label.rt(btex u1 etex,u*(1,11.4));

B1=u*(9,11); 
B2=u*(11,11);
B3=u*(11,10);
B4=u*(9,10);
trace B1--B2--B3--B4--cycle;
remplis (polygone(B1,B2,B3,B4)) withcolor 0.8white;
label.rt(btex u2 etex,u*(9.5,11.4));

C1=u*(16,11); 
C2=u*(17,11);
C3=u*(17,10);
C4=u*(16,10);
trace C1--C2--C3--C4--cycle;
remplis (polygone(C1,C2,C3,C4)) withcolor black;
label.top(btex u3 etex,u*(16.5,11));

trace grille(0.5) withcolor orange;
fin;
end

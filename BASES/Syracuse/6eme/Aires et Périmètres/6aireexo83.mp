
verbatimtex
%&latex
\documentclass{article}
\usepackage{mathrsfs}
\begin{document}
etex
input geometriesyr16;

u:=0.5cm;

figure(0,0,21u,7u);
pair A[],B[],C[];
A1=u*(12,1); 
A2=u*(12,3);
A3=u*(14,3);
A4=u*(14,1);
trace A1--A2--A3--A4--cycle;
remplis (polygone(A1,A2,A3,A4)) withcolor black;
label.rt(btex unit\'e d'aire etex,u*(14.5,2));

C1=u*(12,5); 
C2=u*(14,5);
C4=u*(14,5.05); 
C3=u*(12,5.05);
trace C1--C2--C3--C4--cycle;
remplis (polygone(C1,C2,C3,C4)) withcolor black;
label.rt(btex unit\'e de longueur etex,u*(14.5,5));

B1=u*(1,3); 
B2=u*(1,5);
B3=u*(5,5);
B4=u*(5,6);
B5=u*(6,6); 
B6=u*(6,5);
B7=u*(10,5);
B8=u*(10,4);
B9=u*(9,4);
B10=u*(9,3);
B11=u*(8,3); 
B12=u*(8,1);
B13=u*(4,1);
B14=u*(4,3);
B15=u*(3,3); 
B16=u*(3,1);
B17=u*(2,1);
B18=u*(2,3);
trace B1--B2--B3--B4--B5--B6--B7--B8--B9--B10--B11--B12--B13--B14--B15--B16--B17--B18--cycle;
remplis (polygone(B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,B14,B15,B16,B17,B18)) withcolor 0.8white;

trace grille(0.5) withcolor orange;
fin;
end

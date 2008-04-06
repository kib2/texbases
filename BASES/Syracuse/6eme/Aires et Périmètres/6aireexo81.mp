
verbatimtex
%&latex
\documentclass{article}
\usepackage{mathrsfs}
\begin{document}
etex
input geometriesyr16;

u:=0.5cm;

figure(0,0,23u,10u);
pair A[],B[],C[],D[],E[];
A1=u*(1,6); 
A2=u*(1,7);
A3=u*(2,7);
A4=u*(2,6);
trace A1--A2--A3--A4--cycle;
remplis (polygone(A1,A2,A3,A4)) withcolor black;
label.rt(btex unit\'e d'aire etex,u*(2.5,6.5));

B1=u*(8,3); 
B2=u*(8,5);
B3=u*(10,5);
B4=u*(10,7);
B5=u*(12,7); 
B6=u*(12,3);
B7=u*(14,3);
B8=u*(14,1);
B9=u*(10,1);
B10=u*(10,3);
trace B1--B2--B3--B4--B5--B6--B7--B8--B9--B10--cycle;
remplis (polygone(B1,B2,B3,B4,B5,B6,B7,B8,B9,B10)) withcolor 0.8white;
label.rt(btex figure 2 etex,u*(8.5,4));

C1=u*(14,5); 
C2=u*(14,7);
C3=u*(20,7);
C4=u*(20,5);
C5=u*(22,5); 
C6=u*(22,3);
C7=u*(16,3);
C8=u*(16,5);
trace C1--C2--C3--C4--C5--C6--C7--C8--cycle;
remplis (polygone(C1,C2,C3,C4,C5,C6,C7,C8)) withcolor 0.8white;
label.rt(btex figure 3 etex,u*(16.5,5));

D1=u*(1,9); 
D2=u*(2,9);
D4=u*(1,9.05); 
D3=u*(2,9.05);
trace D1--D2--D3--D4--cycle;
remplis (polygone(D1,D2,D3,D4)) withcolor black;
label.rt(btex unit\'e de longueur etex,u*(2.5,9));

E1=u*(1,1); 
E2=u*(1,5);
E3=u*(7,5);
E4=u*(7,1);
trace E1--E2--E3--E4--cycle;
remplis (polygone(E1,E2,E3,E4)) withcolor 0.8white;
label.rt(btex figure 1 etex,u*(2.5,3));

trace grille(0.5) withcolor orange;
fin;
end

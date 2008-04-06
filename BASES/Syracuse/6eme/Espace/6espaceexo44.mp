input geometriesyr16;

%figure1;
figureespace(-15u,-15u,15u,15u);
Initialisation(5,-30,20,200);
color A,B,C,D,E,F,G,H;
typerepre:="persp";
trace Pave(A,B,C,D,E,F,G,H)(0.2,0.3,0.2);
finespace;

%figure2
figureespace(-15u,-15u,15u,15u);
Initialisation(5,30,20,50);
color A,B,C,D,E;
A=(0,0,0);
B=(1,0,0);
C=(1,1,0);
D=(0,1,0);
E=(0,0,1.5);
trace chemin(B,C,D,E);
trace chemin(B,E,C);
trace chemin(B,A,D) dashed evenly;
trace chemin(A,E) dashed evenly;
%nomme.ulft(A);
%nomme.llft(B);
%nomme.lrt(C);
%nomme.lrt(D);
%nomme.ulft(E);
finespace;

%figure3;
figureespace(-15u,-15u,15u,15u);
Initialisation(5,30,20,50);
color A,B,C,D,E,F,G,H;
typerepre:="persp";
trace Cube(A,B,C,D,E,F,G,H) withcolor white;
trace chemin(F,A,B,C,H,E,F,G,B);
trace chemin(G,H);
trace chemin(A,D,C) dashed evenly;
%remplis Projette(E)--Projette(F)--(segment(E,D) intersectionpoint segment(F,G))--cycle withcolor 0.5white;
trace Projette(E)--(segment(E,D) intersectionpoint segment(F,G));
trace Projette(D)--(segment(E,D) intersectionpoint segment(F,G)) dashed evenly;
finespace;



end

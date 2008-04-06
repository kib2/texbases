input geometriesyr16;

typerepre:="persp";

figureespace(-15u,-15u,15u,15u);
Initialisation(5,30,20,100);
color A,B,C,D,E,F,G,H;
A=(0,0,0);
B=(1,0,0);
C=(1,1,0);
D=(0,1,0);
E=(0,0,1);
F-B=E-A;
G-C=E-A;
H-D=E-A;
marque_p:="croix";
nomme.ulft(A);
nomme.llft(B);
nomme.lrt(C);
nomme.lrt(D);
nomme.ulft(E);
nomme.ulft(F);
nomme.urt(G);
nomme.urt(H);
finespace;

figureespace(-15u,-15u,15u,15u);
Initialisation(5,30,20,100);
color A,B,C,D,E,F,G,H;
A=(0,0,0);
B=(1,0,0);
C=(1,2,0);
D=(0,2,0);
E=(0,0,1/2);
F-B=E-A;
G-C=E-A;
H-D=E-A;
marque_p:="croix";
nomme.ulft(A);
nomme.llft(B);
nomme.lrt(C);
nomme.lrt(D);
nomme.ulft(E);
nomme.ulft(F);
nomme.urt(G);
nomme.urt(H);
finespace;
end
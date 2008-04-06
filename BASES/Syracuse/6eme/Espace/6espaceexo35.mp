input geometriesyr16;
typerepre:="persp";
figureespace(-10u,-10u,10u,10u);
Initialisation(5,30,20,150);
color A,B,C,D,E,F,G,H;
trace Pave(A,B,C,D,E,F,G,H)(1.2,0.6,0.6);
nomme.llft(A);
nomme.lrt(B);
nomme.rt(C);
nomme.bot(D);
nomme.top(E);
nomme.lft(F);
nomme.top(G);
nomme.urt(H);
trace appelation(F,E,2mm,btex 6~cm etex);
trace appelation(A,F,2mm,btex 4~cm etex);
trace appelation(F,G,2mm,btex 4~cm etex);
finespace;
end
verbatimtex
%&latex
\documentclass{article}
\usepackage[greek,frenchb]{babel}
\usepackage{mathrsfs}
\begin{document}
etex

input geometriesyr16;

figure(0,0,6u,6u);
pair A,B,M,O;
O=u*(3,3);
path cc;
cc=cercles(O,2u);
B=pointarc(cc,340);
A=symetrie(B,O);
M=demidroite(O,rotation(A,O,-40)) intersectionpoint cc;
trace cc;
trace polygone(A,M,B);
trace segment(O,M) dashed evenly;
nomme.ulft(A);
nomme.lrt(B);
nomme.top(M);
nomme.bot(O);
label.llft(btex $\mathscr C$ etex,pointarc(cc,250));
fin;
figureespace(-10u,-10u,10u,10u);
Initialisation(5,40,30,500);
color A,B,C,D,E,F,G,H,S;
D=(0,0,0);
A-D=(11/15,0,0);
S-A=(0,0,1);
B-A=(0,8/15,0);
C-D=B-A;
E=12/15[S,A];
F=12/15[S,B];
G=12/15[S,C];
H=12/15[S,D];
NbS:=5;
Sommet1:=A;
Sommet2:=B;
Sommet3:=C;
Sommet4:=D;
Sommet5:=S;
NF:=5;
Fc[100]:=4;Fc[101]:=1;Fc[102]:=4;Fc[103]:=3;Fc[104]:=2;
Fc[200]:=3;Fc[201]:=1;Fc[202]:=2;Fc[203]:=5;
Fc[300]:=3;Fc[301]:=1;Fc[302]:=5;Fc[303]:=4;
Fc[400]:=3;Fc[401]:=2;Fc[402]:=3;Fc[403]:=5;
Fc[500]:=3;Fc[501]:=4;Fc[502]:=5;Fc[503]:=3;
DessineObjet;
trace chemin(E,F,G);
trace chemin(G,H,E) dashed evenly;
nomme.top(S);
nomme.lft(E);
nomme.llft(A);
nomme.bot(B);
nomme.rt(C);
nomme.urt(G);
nomme.urt(H);
nomme.llft(F);
nomme.bot(D);
finespace;
input TEX;
input courbescp13;
figure(0,0,13u,16.5u);
cadre((0,0),(13,16.5));
trace grille(.5) withcolor orange;
origine((1,0.5));
unites(0.2,0.05);
trace axes;
legendex(btex Nombres d'heures etex);
legendey(btex Somme en \textgreek{\euro} etex);
for k=1 upto 15:
  label.lft(TEX(""&decimal(20*k)&""),pp(0,20*k));
endfor;
for k=1 upto 8:
  label.bot(TEX(""&decimal(5*k)&""),pp(5*k,0));
endfor;
fin;
end
verbatimtex
%&latex
\documentclass{article}
\usepackage{mathrsfs}
\begin{document}
etex

input geometriesyr16;
figure(0,0,5u,5u);
pair A,B,D,O,I;
O=u*(1,1);
B=O shifted(u*(2,0));
A=rotation(B,O,60);
D=A shifted(B-O);
I=cercle(B,1.5u) intersectionpoint cercle(D,1.5u);
marque_p:="croix";
nomme.llft(O);
nomme.llft(B);
nomme.urt(D);
nomme.lrt(A);
nomme.lrt(I);
marque_p:="non";
trace O--A--D--B--cycle;
draw codesegments(O,A,A,D,2);
draw codesegments(O,B,B,D,2);
trace cotation(O,A,2mm,2mm,btex 2~cm etex);
trace D--I--B dashed evenly;
trace cotationmil(B,I,-2mm,10,btex 1~cm etex);
trace cotationmil(D,I,2mm,10,btex 1~cm etex);
fin;
figure(0,0,5u,5u);
pair A,B,C,D,I;
D=u*(1,1);
C=D shifted(u*(3,0));
A=D shifted(u*(0,2));
B=A shifted(C-D);
trace A--B--C--D--cycle;
trace codeperp(A,B,C,5);
trace codeperp(A,D,C,5);
trace codeperp(D,A,B,5);
trace cotation(D,A,2mm,2mm,btex 2~cm etex);
trace cotation(A,B,2mm,2mm,btex 3~cm etex);
I=iso(B,C);
draw codesegments(B,I,I,C,2);
nomme.llft(D);
nomme.ulft(A);
nomme.urt(B);
nomme.lrt(C);
marque_p:="croix";
nomme.rt(I);
marque_p:="non";
fin;
figure(0,0,10u,4.5u);
trace grille(0.5) withcolor orange;
pair A,B,C,D,E,F;
A=u*(1,2.5);
B=u*(2,4.5);
C=u*(4,4.5);
D=u*(3,2);
E=u*(4,3);
F=u*(5,4);
label(btex $\mathscr F$ etex,iso(A,B,C,D));
%trace symetrie(A--B--C--D--cycle,E,F);
trace A--B--C--D--cycle;
trace droite(E,F);
label.lrt(btex $(d)$ etex,F);
fin;
end;
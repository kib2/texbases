verbatimtex
%&latex
\documentclass[12pt]{article}
\usepackage{mathrsfs}
\begin{document}
etex

input geometriesyr16;

figure(0,0.75u,18u,9u);
pair O,A,B;
O=u*(5,6);
path cc;
cc=cercles(O,2.5u);
A=u*(7,1);
B-A=u*(3,8);
trace cc;
trace droite(A,B);
label.ulft(btex $(d)$ etex,A);
label.ulft(btex $\mathscr C$ etex,pointarc(cc,150));
marque_p:="croix";
pointe(O);
marque_p:="non";
trace symetrie(cc,A,B) withcolor blanc;
fin;
figure(0,0.25u,18u,8.75u);
pair A,B,C,D;
A=u*(5,0.5);
B-A=u*(7,1.5);
C=u*(1,4);
D=u*(18,2);
trace droite(C,D);
trace segment(A,B);
trace marquesegment(A,B);
label.top(btex $\mathscr S$ etex,iso(A,B));
label.urt(btex $(d)$ etex,C);
trace symetrie(segment(A,B),C,D) withcolor blanc;
fin;
figure(0,0,18u,5.75u);
pair A,B,C,E,F;
A=u*(12,4);
B-A=u*(4,-1);
C=rotation(B,2/3[A,B],90);
E=u*(10,1);
F-E=u*(-1,5);
trace demidroite(A,B);
trace marquedemidroite(A,B);
trace perpendiculaire(A,B,2/3[A,B]);
trace droite(E,F);
label.top(btex $[\ell_1)$ etex,B);
label.ulft(btex $(\ell_2)$ etex,C);
label.lft(btex $(d)$ etex,E);
trace codeperp(A,2/3[A,B],C,5);
trace symetrie(demidroite(A,B),E,F) withcolor blanc;
trace symetrie(perpendiculaire(A,B,2/3[A,B]),E,F) withcolor blanc;
fin;
end
verbatimtex
%&latex
\documentclass{article}
\usepackage{mathrsfs}
\begin{document}
etex

input geometriesyr16;

figure(0,0,12u,8u);
trace grille(1) withcolor orange;
pair A,B,C,E,F;
A=pp(5,3);
C=pp(10,2);
B=pp(7,4);
E=pp(11,2);
F=pp(10,3);
path cc;
cc=C--B--arccercle(B,A,iso(A,B))--A--cycle;
transparence cc;
trace cc;
trace segment(A,B);
trace droite(E,F);
label.urt(btex $(d)$ etex,E);
nomme.llft(A);
nomme.lrt(C);
nomme.urt(B);
label.ulft(btex $\mathscr F$ etex,pp(5,4));
fin;
figure(0,0,6u,6u);
pair A,B,C;
A=u*(1,1);
B-A=u*(0,3);
C-B=u*(4,0);
trace polygone(A,B,C);
trace codeperp(A,B,C,5);
nomme.llft(A);
nomme.urt(C);
nomme.ulft(B);
fin;
end
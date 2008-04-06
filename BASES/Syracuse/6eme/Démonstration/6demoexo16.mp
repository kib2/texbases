verbatimtex
%&latex
\documentclass[12pt]{article}
\usepackage{pifont}
\begin{document}
etex

input geometriesyr16;
figure(0,0,8u,8u);
pair A,B,C,D,E,F,G,H;
trace grille(1);
A=(0,0);
B=pp(3,0);
C=pp(8,0);
D=pp(8,5);
E=pp(8,8);
F=pp(0,8);
G=pp(0,5);
H=pp(5,5);
trace polygone(A,C,E,F);
trace chemin(B,H,D);
trace chemin(H,G,E);
label(btex \huge\ding{172} etex,iso(A,B,H,G));
label(btex \huge\ding{173} etex,iso(B,H,C,D));
label(btex \huge\ding{174} etex,iso(E,G,D));
label(btex \huge\ding{175} etex,iso(E,F,G));
fin;
figure(0,0,13u,5u);
trace grille(1);
label(btex \huge\ding{176} etex,iso((0,0),(13u,5u)));
fin;
end
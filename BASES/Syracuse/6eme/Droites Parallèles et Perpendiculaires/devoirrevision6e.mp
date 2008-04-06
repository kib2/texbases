verbatimtex
%&latex
\documentclass{article}
\usepackage[latin1,applemac]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{amsmath,textcomp}
\usepackage[frenchb]{babel}
\begin{document}
etex
input geometriesyr15;
figure(-0.5u,-0.5u,5.5u,4.5u);
pair C,A,B;
A=u*(0,0);
B=u*(3,4);
C=u*(5,1);
marque_p:="croix";
pointe(A);
pointe(B);
pointe(C);
nomme.lft(A);
nomme.bot(C);
nomme.rt(B);
fin;
end
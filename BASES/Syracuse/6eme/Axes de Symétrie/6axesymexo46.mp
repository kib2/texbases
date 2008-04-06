verbatimtex
%&latex
\documentclass{article}
\usepackage[frenchb]{babel}
\usepackage{mathrsfs}
\begin{document}
etex

input geometriesyr16;

figure(0,0,8u,5u);
pair M,N;
N=u*(6,0.4);
M=u*(1.8,1.9);
path cc;
cc=u*(0.7,1.5)..u*(1.2,2.5)..u*(2.5,2)..u*(3.5,0.2)..u*(5,0.5)..u*(5.1,1.1)..u*(4.4,1.6)..u*(3.6,2.4)..u*(5.3,2.8)..u*(7.1,2.5);
trace cc;
marque_p:="croix";
nomme.top(M);
nomme.top(N);
label.rt(btex $\mathscr{L}$ etex,u*(7,2.4));
fin;

end


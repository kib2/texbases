verbatimtex
%&latex
\documentclass{article}
\usepackage{mathrsfs}
\begin{document}
etex
%%
input geometriesyr11;
figure(1u,0,8u,8u);
pair A,I,B,P,S;
I=u*(4.5,4.5);
A=u*(2,4.5);
B=symetrie(A,I);
trace cercles(I,A);
trace cercles(iso(A,I),I);
trace cercles(iso(I,B),I);
P=cercles(I,A) intersectionpoint cercles(A,I);
S=cercles(I,A) intersectionpoint cercles(B,I);
trace arccercle(symetrie(P,A,B),P,A);
trace arccercle(S,symetrie(S,A,B),B);
trace demidroite(I,P);
trace demidroite(I,S);
path cc;
cc=cercles(I,A);
label.bot(btex $\mathscr{C}$ etex,pointarc(cc,270));
marque_p:="plein";
nomme.lft(A);
nomme.lft(I);
nomme.rt(B);
nomme.top(P);
nomme.top(S);
fin;
end
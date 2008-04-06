verbatimtex
%&latex
\documentclass{article}
\usepackage{pifont}
\begin{document}
etex

input geometriesyr16;

u:=8mm;

figure(0u,0u,20u,16u);
pair A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,Y,A',B',C',D';
marque_p:="croix";
A=u*(1,15);B=u*(1,10);C=u*(5,14);D=u*(6,9);E=u*(12,12);F=u*(8,12);
G=u*(13,15);H=u*(13,10);I=u*(19,10);J=u*(16,14);K=u*(3.5,4);L=u*(1.5,9);
M=u*(16,7);N=u*(11,7);O=u*(9,7);P=u*(5,7);Q=u*(14,2);R=u*(10,2);
S=u*(2,3);T=u*(7,3);
nomme.lft(A);nomme.bot(B);nomme.lft(C);nomme.bot(D);nomme.bot(E);nomme.bot(F);
nomme.top(G);nomme.bot(H);nomme.bot(I);nomme.bot(J);nomme.bot(K);nomme.lft(L);
nomme.bot(M);nomme.bot(N);nomme.rt(O);nomme.bot(P);nomme.bot(Q);nomme.bot(R);
nomme.bot(S);nomme.bot(T);
trace segment(A,B);trace segment(D,C);trace segment(E,F);
trace segment(G,H);trace segment(I,J);trace segment(K,L);
trace segment(O,P);trace segment(M,N);trace segment(S,T);
trace segment(Q,R);
U:=rotation(B,A,38);V:=rotation(C,D,-99);A':=rotation(F,E,-15);
B':=rotation(H,G,18);Y:=rotation(J,I,114);C':=rotation(L,K,-40);
D':=rotation(P,O,144);Z:=rotation(N,M,-34);W:=rotation(T,S,-23);
X:=rotation(R,Q,-166);
nomme.rt(U);nomme.bot(W);nomme.bot(X);nomme.bot(Y);nomme.bot(Z);
nomme.bot(A');nomme.bot(B');nomme.lft(C');nomme.bot(D');nomme.bot(V);
trace segment(A,U);trace segment(D,V);trace segment(E,A');
trace segment(G,B');trace segment(I,Y);trace segment(K,C');
trace segment(O,D');trace segment(M,Z);trace segment(S,W);
trace segment(Q,X);
trace Codeangle(B,A,U,0,btex \ding{172} etex);
trace Codeangle(V,D,C,1,btex \ding{173} etex);
trace Codeangle(A',E,F,0,btex \ding{174} etex);
trace Codeangle(H,G,B',0,btex \ding{175} etex);
trace Codeangle(J,I,Y,0,btex \ding{176} etex);
trace Codeangle(C',K,L,0,btex \ding{177} etex);
trace Codeangle(P,O,D',0,btex \ding{178} etex);
trace Codeangle(Z,M,N,0,btex \ding{179} etex);
trace Codeangle(W,S,T,0,btex \ding{180} etex);
trace Codeangle(X,Q,R,0,btex \ding{181} etex);
fin;
end
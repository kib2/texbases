verbatimtex
%&latex
\documentclass{article}
\usepackage{pifont}
\begin{document}
etex
%

input geometriesyr16;
figure(0,0,15u,20u);
pair A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z;
A=u*(0.5,5);
B-A=u*(2.5,0);
C=rotation(B,A,60);
D=rotation(B,C,60);
E=rotation(B,D,60);
F-D=E-B;
G-E=E-B;
H-F=E-B;
I-G=E-B;
J-H=E-B;
K-I=E-B;
O-J=J-K;
L=symetrie(F,E,G);
M=symetrie(F,E);
N-L=M-E;
P-H=O-J;
Q-O=O-J;
R-P=O-J;
S-Q=O-J;
T-R=O-J;
X-S=O-J;
Y-T=O-J;
Z-X=O-J;
U-Q=J-I;
V-S=U-Q;
W-U=U-Q;
trace triangle(A,B,C);
trace triangle(B,C,D);
trace triangle(B,D,E);
label(btex \ding{173} etex,iso(A,B,C));
label(btex \ding{173} etex,iso(D,B,C));
label(btex \ding{173} etex,iso(D,B,E));
trace triangle(S,U,V);
trace triangle(U,V,W);
trace triangle(S,Q,U);
label(btex \ding{172} etex,iso(S,U,V));
label(btex \ding{172} etex,iso(W,U,V));
label(btex \ding{172} etex,iso(S,U,Q));
trace triangle(T,X,Y);
trace triangle(Y,X,Z);
trace triangle(S,T,X);
label(btex \ding{172} etex,iso(T,X,Y));
label(btex \ding{172} etex,iso(Z,X,Y));
label(btex \ding{172} etex,iso(T,X,S));
trace triangle(P,Q,R);
trace triangle(Q,R,S);
trace triangle(S,R,T);
label(btex \ding{173} etex,iso(P,Q,R));
label(btex \ding{173} etex,iso(S,Q,R));
label(btex \ding{173} etex,iso(S,R,T));
trace triangle(O,P,Q);
trace triangle(H,J,O);
trace triangle(O,H,P);
label(btex \ding{172} etex,iso(P,Q,O));
label(btex \ding{172} etex,iso(H,J,O));
label(btex \ding{172} etex,iso(P,H,O));
trace triangle(D,E,F);
trace triangle(E,F,G);
trace triangle(F,G,H);
label(btex \ding{172} etex,iso(D,E,F));
label(btex \ding{172} etex,iso(G,E,F));
label(btex \ding{172} etex,iso(G,H,F));
trace triangle(G,H,I);
trace triangle(H,I,J);
trace triangle(I,J,K);
label(btex \ding{173} etex,iso(G,H,I));
label(btex \ding{173} etex,iso(J,H,I));
label(btex \ding{173} etex,iso(J,K,I));
trace triangle(E,G,L);
trace triangle(E,L,M);
trace triangle(M,L,N);
label(btex \ding{173} etex,iso(E,G,L));
label(btex \ding{173} etex,iso(E,M,L));
label(btex \ding{173} etex,iso(N,M,L));
fin;
end
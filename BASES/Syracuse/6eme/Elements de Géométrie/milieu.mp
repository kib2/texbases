verbatimtex
%&latex
\documentclass{article}
\usepackage{mathrsfs}
\begin{document}
etex


input geometriesyr16;
%----------------------------------------------------------------------------
% Mesure de segments sans nom: figure 1
%----------------------------------------------------------------------------

figure (-1u,-1u,12u,5u);
pair A,B,C,D,E,F,G,H,I,J;

A=(0u,3u);
B=(3u,4u);
C=(5u,4u);
D=(10u,4u);
E=(2u,2u);
F=(4u,2u);
G=(6u,3u);
H=(9.5u,1u);
I=(2.5u,0u);
J=(8u,0u);

draw A--B;
draw C--D;
draw E--F;
draw G--H;
draw I--J;

marque_p :="croix";
labeloffset:=2*labeloffset;
nomme.top(A);
nomme.top(B);
nomme.top(C);
nomme.top(D);
nomme.top(E);
nomme.top(F);
nomme.top(G);
nomme.top(H);
nomme.top(I);
nomme.top(J);
labeloffset:=labeloffset/2;
fin;

%----------------------------------------------------------
%figure 2: triangle
%--------------------------------------------------------
figure (-1u,-1u,12u,11u);
pair A,B,C,D,E,F,G,H,I,J,K,L;

A=(0u,3u);
B=(8u,4u);
C=(5u,10u);

draw A--B--C--cycle;
marque_p :="croix";
labeloffset:=2*labeloffset;
nomme.top(A);
nomme.top(B);
nomme.top(C);
labeloffset:=labeloffset/2;
fin;


figure(-3u,-3u,7u,7u);
pair A,B,E,F,I,H,M,N;
I=u*(2,2);
path cc;
cc=cercles(I,3.5u);
trace cc;
A=pointarc(cc,100);
B=pointarc(cc,280);
E=pointarc(cc,210);
F=pointarc(cc,30);
H=pointarc(cc,45);
M=pointarc(cc,135);
N=pointarc(cc,245);
labeloffset:=labeloffset*2;
nomme.top(A);
nomme.bot(B);
nomme.lft(I);
nomme.llft(E);
nomme.top(F);
nomme.top(H);
nomme.top(M);
nomme.llft(N);
labeloffset:=labeloffset/2;
marque_p:="non";
label.lrt(btex $\mathscr C$ etex,pointarc(cc,320));
fin;
end
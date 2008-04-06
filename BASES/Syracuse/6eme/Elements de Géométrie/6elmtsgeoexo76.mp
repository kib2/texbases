verbatimtex
%&latex
\documentclass{article}
\usepackage{mathrsfs}
\begin{document}
etex
input geometriesyr16;
figure(0,0,4u,4u);
pair O;
O=u*(2,2);
trace cercles(O,1.5u);
marque_p:="croix";
nomme.rt(O);
fin;
figure(-0.5u,0,4u,4u);
trace cercles(O,1.5u);
label.ulft(btex $(\mathscr C)$ etex,pointarc(cercles(O,1.5u),180));
fin;
figure(-0.5u,0,4u,4u);
trace cercles(O,1.5u);
label.ulft(btex $(\mathscr C)$ etex,pointarc(cercles(O,1.5u),180));
nomme.urt(O);
fin;
figure(0,0,5u,5u);
pair A,B,C,D,E,O,F;
O=u*(2.5,2.5);
path cc;
cc=cercles(O,2u);
trace cc;
E=pointarc(cc,50);
C=pointarc(cc,80);
B=symetrie(C,O);
D=pointarc(cc,130);
A=pointarc(cc,200);
F=pointarc(cc,320);
trace segment(E,D);
trace segment(C,B);
trace segment(A,O);
trace segment(O,F) dashed evenly;
marque_p:="non";
nomme.urt(E);
nomme.top(C);
nomme.ulft(D);
nomme.llft(A);
nomme.bot(B);
nomme.ulft(O);
trace appelation(O,F,2mm,btex $r=2,7$~cm etex);
fin;
figure(0,0,5u,5u);
pair A,B,S,T,I,M;
I=u*(2.5,2.5);
path cc;
cc=cercles(I,2u);
trace cc;
B=pointarc(cc,50);
A=symetrie(B,I);
T=pointarc(cc,80);
S=pointarc(cc,130);
M=pointarc(cc,260);
trace segment(S,T);
trace segment(A,B);
trace segment(T,M);
marque_p:="non";
nomme.rt(B);
nomme.top(T);
nomme.ulft(S);
nomme.llft(A);
nomme.bot(M);
nomme.lrt(I);
label.ulft(btex $(\mathscr C)$ etex,pointarc(cc,160));
fin;
end
input geometriesyr16;

figure(-5u,-5u,10u,10u);
pair A,T,I,S,P,V,W,K,M;
path cercle;
I=u*(0,0);
cercle=fullcircle scaled 3cm shifted I;
draw cercle;
S=pointarc(cercle,12);
P=pointarc(cercle,84);
K=pointarc(cercle,-100);
T=symetrie(S,I);
V=rotation(P,T,60);
W=8/5[I,V];
M=symetrie(I,T,K);
A=symetrie(I,P,S);
trace polygone(T,I,K,M);
trace segment(T,V);
trace segment(T,W);
trace segment(P,V);
trace segment(P,W);
trace segment(P,T);
trace polygone(I,S,A,P);
trace Codelongueur(I,T,I,P,I,S,I,K,K,M,T,M,2);
trace Codelongueur(T,P,T,V,P,V,1);

nomme.lft(T);
nomme.lrt(I);
nomme.rt(S);
nomme.top(P);
nomme.lft(W);
nomme.bot(K);
nomme.rt(A);
nomme.llft(M);
nomme.lft(V);
fin;

end
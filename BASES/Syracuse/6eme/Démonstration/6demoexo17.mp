input geometriesyr16;
figuremainlevee(-2u,-2u,10u,10u);
pair I,J,K,L,R,T,P;
u:=4mm;
I=u*(3,4);
K-I=u*(6,0);
R=rotation(K,I,-60);
J=cercles(I,5u) intersectionpoint cercles(K,9u);
L=4/5[I,rotation(J,I,90)];
T=cercles(J,9u) intersectionpoint cercles(K,4u);
P=symetrie(J,K,T);
trace polygone(I,R,K,P,T,J,L);
trace polygone(I,J,K);
trace segment(K,T) dashed evenly;
trace codeperp(J,I,L,8);
trace Codelongueur(I,K,K,R,R,I,1);
trace Codelongueur(J,K,K,P,P,T,T,J,2);
trace appelation(L,I,-2mm,btex 4 etex);
trace appelation(J,I,-2mm,btex 5 etex);
trace appelation(J,K,2mm,btex 9 etex);
trace appelation(I,K,-2mm,btex 6 etex);
trace appelation(K,T,2mm,btex 4 etex);
nomme.urt(I);
nomme.llft(L);
nomme.top(J);
nomme.top(T);
nomme.rt(P);
nomme.lrt(K);
nomme.bot(R);
finmainlevee;
end
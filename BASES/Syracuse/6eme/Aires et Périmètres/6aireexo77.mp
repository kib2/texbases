input geometriesyr16;
figuremainlevee(0,0,10u,10u);
pair I,J,K,L,P;
P=u*(2,2);
K-P=u*(2,0);
L=3[P,K];
J=3/4[P,rotation(K,P,90)];
I=5/3[P,J];
trace hachurage(polygone(I,J,K,L),60,0.25,0);
trace polygone(I,J,K,L);  
trace chemin(J,P,K) dashed evenly;
trace codeperp(I,P,L,5);
trace appelation(P,J,2mm,btex 3 etex);
trace cotationmil(P,I,5mm,10,btex 5 etex);
trace appelation(P,K,-2mm,btex 4 etex);
trace cotationmil(P,L,-5mm,10,btex 12 etex);
nomme.llft(P);
nomme.bot(K);
nomme.rt(L);
nomme.ulft(I);
nomme.lft(J);
finmainlevee;
end
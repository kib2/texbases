input geometriesyr16;
figure(0,0,10u,10u);
pair A,B,P,S,U,M,F,O;
F=u*(1.5,7);
O=pointarc(cercles(F,3u),310);
U=u*(1,8);
M=pointarc(cercles(U,8.3u),335);
A=u*(4,8);
B=pointarc(cercles(A,4u),5);
P=u*(7,6);
S=pointarc(cercles(P,1.7u),20);
trace segment(A,B);
trace marquesegment(A,B);
trace segment(P,S);
trace marquesegment(P,S);
trace segment(U,M);
trace marquesegment(U,M);
trace segment(F,O);
trace marquesegment(F,O);
nomme.lft(A);
nomme.rt(B);
nomme.ulft(F);
nomme.lrt(O);
nomme.lft(P);
nomme.rt(S);
nomme.lft(U);
nomme.rt(M);
fin;
end
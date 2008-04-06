input geometriesyr16;
figure(0,0,10u,10u);
trace feuillet withcolor blanc;
pair O,A,B,C,M,N[];
O=u*(5,5);
path cc;
cc=cercles(O,3u);
A=pointarc(cc,50);
B=pointarc(cc,120);
C=pointarc(cc,210);
M=pointarc(cc,150);
N1=symetrie(M,A,B);
N2=symetrie(M,B,C);
N3=symetrie(M,A,C);
trace cc;
marque_p:="croix";
nomme.urt(A);
nomme.top(B);
nomme.llft(C);
nomme.ulft(M);
fin;
end


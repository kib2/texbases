input geometriesyr16;

figure(0,0,10u,10u);
pair O,A,T,B,I,R,E;
O=u*(5,5);
path cc;
cc=cercles(O,3u);
A=pointarc(cc,90);
E=rotation(A,O,60);
R=rotation(E,O,60);
I=rotation(R,O,60);
B=rotation(I,O,60);
T=rotation(B,O,60);
marque_p:="croix";
pointe(A,B,T,I,R,E);
trace cc;
label.top(btex 2,21 etex,A);
label.urt(btex 0,221 etex,T);
label.lrt(btex 22,1 etex,B);
label.bot(btex 22,01 etex,I);
label.llft(btex 2,201 etex,R);
label.ulft(btex 221 etex,E);
fin;
end
input geometriesyr16;
figure(0,u,8u,8u);
trace feuillet withcolor blanc;
pair A,B,C,D,F,G;
G=u*(4.5,5);
path cc;
cc=cercles(G,3u);
A=pointarc(cc,150);
F=pointarc(cc,30);
C=pointarc(cc,220);
D=pointarc(cc,270);
B=pointarc(cc,320);
marque_p:="creux";
pointe(A,B,C,D,F,G);
marque_p:="croix";
pointe(A,B,C,D,F,G);
label.ulft(btex 20,2 etex,A);
label.urt(btex 20,22 etex,F);
label.lrt(btex 20,202 etex,B);
label.bot(btex 20,02 etex,D);
label.lft(btex 20,222 etex,C);
label.top(btex 20,022 etex,G);
finmainlevee;
end


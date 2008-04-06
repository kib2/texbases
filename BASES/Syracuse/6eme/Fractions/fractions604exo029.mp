input geometriesyr16;
figure(0,0,15u,2u);
quad.u=1cm;
x.u=3cm;
y.u=1cm;
origine((1,1));
drawarrow (x.so*cm,y.origine)--(x.ne*cm,y.origine) withpen pencircle scaled 1.5bp;
marque_p:="tiretv";
for k=1 upto 29:
pointe((k/6)[placepoint(0,0),placepoint(1,0)]);
endfor;
marque_p:="plein";
for k=0 upto 4:
pointe(placepoint(k,0));
endfor;
marque_p:="non";
pair A,B,C,D,E;
A=placepoint(2,0);
B=placepoint(5/6,0);
C=placepoint(17/6,0);
D=placepoint(3,0);
E=placepoint(7/6,0);
nomme.top(A);
nomme.top(B);
nomme.top(C);
nomme.top(D);
nomme.top(E);
label.bot(btex 1 etex,placepoint(1,0));
pair O;
O=placepoint(0,0);
nomme.top(O);
fin;
end


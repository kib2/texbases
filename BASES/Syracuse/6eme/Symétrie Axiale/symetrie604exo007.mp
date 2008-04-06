input geometriesyr16;
figure(0,0,7u,5u);
x.u=5mm;
y.u=5mm;
pair A,B,C,D;
A=placepoint(10,7);
B=placepoint(6,8);
C=placepoint(5,4);
D=placepoint(2,7);
trace droite(C,placepoint(10,9));
label.lrt(btex $(d)$ etex,placepoint(10,9));
marque_p:="croix";
nomme.lrt(A);
nomme.ulft(B);
nomme.ulft(D);
nomme.lrt(C);
fin;
end
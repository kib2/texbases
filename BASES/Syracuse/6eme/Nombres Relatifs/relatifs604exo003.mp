input geometriesyr16;
figure(0,0,9u,7u);
trace papiermillimetre withcolor orange;
origine((5,3));
trace axes;
pair A,B,C,D,E,F,G,H;
A=placepoint(0.5,-2);
B=placepoint(0,2.3);
C=placepoint(2.5,0);
D=placepoint(-2.3,0);
E=placepoint(3,2.3);
F=placepoint(-2.3,-1.5);
G=placepoint(1.7,3);
H=placepoint(-1.4,1.9);
graduantx.bot;
graduanty.lft;
marque_p:="croix";
trace Projection(E);
trace Projection(G);
trace Projection(A);
trace Projection(F);
trace Projection(H);
nomme.lrt(A);
nomme.lft(B);
nomme.bot(C);
nomme.llft(D);
nomme.rt(E);
nomme.llft(F);
nomme.rt(G);
nomme.ulft(H);
fin;
end
input geometriesyr16;
figure(0,0,5u,5u);
trace grille(0.5) withcolor bleu;
pair O,A,B,C,D;
O=placepoint(5,5);
A=placepoint(1,1);
B=placepoint(9,1);
C=placepoint(9,9);
D=placepoint(1,9);
drawoptions(withpen pencircle scaled 2bp);
trace cercles(O,2u);
trace arccercle(B,A,iso(A,B));
trace arccercle(C,B,iso(B,C));
trace arccercle(D,C,iso(C,D));
trace arccercle(A,D,iso(D,A));
fin;
end
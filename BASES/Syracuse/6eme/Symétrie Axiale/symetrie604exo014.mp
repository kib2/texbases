input geometriesyr16;
figure(0,0,16u,8.8u);
trace papiercahier withcolor bleu;
path d,e;
d=demidroite(placepoint(10,1),placepoint(9,2));
e=droite(placepoint(10,1),placepoint(10,2));
pair I,J;
I=demidroite(placepoint(10,1),placepoint(9,2)) intersectionpoint cercles(placepoint(10,1),5*0.8u);
J=demidroite(placepoint(10,1),placepoint(9,1)) intersectionpoint cercles(placepoint(10,1),5*0.8u);
drawoptions(withpen pencircle scaled 2bp);
trace d;
trace e;
trace polygone(placepoint(1,1),placepoint(4,7),placepoint(5,1),placepoint(8,3),placepoint(8,1),I)--placepoint(10,1);
trace arccercle(I,J,placepoint(10,1));
drawoptions();
label.urt(btex $(d)$ etex,placepoint(2,9));
label.lft(btex $(d_1)$ etex,placepoint(10,10));
fin;
end
input geometriesyr16;
figure(0,0,12.8u,12u);
trace papiercahier withcolor bleu;
drawoptions(withpen pencircle scaled 2bp);
trace droite(placepoint(8,0),placepoint(8,15));
trace chemin(placepoint(8,14),placepoint(3,14),placepoint(2,12),placepoint(8,12));
trace chemin(placepoint(3,6),placepoint(3,12),placepoint(5,11),placepoint(8,12));
trace arccercle(placepoint(3,10),placepoint(3,6),placepoint(3,8));
trace cercles(placepoint(5,9),0.8u);
trace arccercle(placepoint(8,7.5),placepoint(8,6.5),placepoint(8,7));
trace arccercle(placepoint(6,5),placepoint(8,3),placepoint(8,5));
trace arccercle(placepoint(3,6),placepoint(8,1),placepoint(8,6));
drawoptions();
label.rt(btex $(d)$ etex,placepoint(8,14.5));
fin;
end
input geometriesyr16;
figure(0,0,6.5u,3.5u);
trace grille(0.5);
trace polygone(placepoint(1,1),placepoint(12,1),placepoint(12,6),placepoint(1,6)) withpen pencircle scaled 1.5bp;
fin;
figure(0,0,7u,3.5u);
trace grille(0.5);
trace placepoint(2,1)--placepoint(13,1)--reverse(arccercle(placepoint(13,6),placepoint(13,1),placepoint(15,3.5)))--placepoint(2,6)--arccercle(placepoint(2,6),placepoint(2,1),placepoint(4,3.5)) withpen pencircle scaled 1.5bp;
fin;
figure(0,0,6.5u,3.5u);
trace grille(0.5);
trace cercles(placepoint(6.5,3.5),1.5u) withpen pencircle scaled 1.5bp;
fin;
figure(0,0,6.5u,3.5u);
trace grille(0.5);
trace arccercle(placepoint(9,3.5),placepoint(4,3.5),placepoint(6.5,3.5))--reverse(arccercle(placepoint(6.5,1),placepoint(4,3.5),placepoint(4,1)))--reverse(arccercle(placepoint(9,3.5),placepoint(6.5,1),placepoint(9,1))) withpen pencircle scaled 1.5bp;
fin;
end
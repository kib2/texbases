input geometriesyr16;
figure(0,0,5u,5u);
trace feuillet;
trace grille(0.5) withcolor orange;
trace polygone(pp(0,0),pp(4,0),pp(4,1),pp(5,1),pp(5,4),pp(4,4),pp(4,3),pp(0,3)) withpen pensquare scaled 1.5bp;
label(btex B etex,iso(pp(0,0),pp(4,0),pp(4,1),pp(5,1),pp(5,4),pp(4,4),pp(4,3),pp(0,3)));
trace polygone(pp(4,0),pp(4,1),pp(5,1),pp(5,6),pp(10,6),pp(10,0)) withpen pensquare scaled 1.5bp;
label(btex C etex,iso(pp(4,0),pp(4,1),pp(5,1),pp(5,6),pp(10,6),pp(10,0)));
trace polygone(pp(4,10),pp(4,5),pp(5,5),pp(5,6),pp(10,6),pp(10,10)) withpen pensquare scaled 1.5bp;
label(btex D etex,iso(pp(4,10),pp(4,5),pp(5,5),pp(5,6),pp(10,6),pp(10,10)));
trace polygone(pp(0,10),pp(0,3),pp(4,3),pp(4,4),pp(5,4),pp(5,5),pp(4,5),pp(4,10)) withpen pensquare scaled 1.5bp;
label(btex A etex,iso(pp(0,10),pp(0,3),pp(4,3),pp(4,4),pp(5,4),pp(5,5),pp(4,5),pp(4,10)));
fin
end
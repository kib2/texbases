input geometriesyr16;
figure(0,0,6u,5.5u);
trace grille(0.5) withcolor orange;
trace polygone(pp(1,1),pp(3,1),pp(3,4),pp(11,4),pp(11,10),pp(8,10),pp(8,8),pp(1,8)) withpen pencircle scaled 1.5bp withcolor violet;
fin;
figure(0,0,6u,5.5u);
trace grille(0.5) withcolor orange;
trace polygone(pp(1,1),pp(3,1),pp(3,4),pp(11,4),pp(11,10),pp(8,10),pp(8,8),pp(1,8)) withpen pencircle scaled 1.5bp withcolor violet;
drawoptions(withpen pencircle scaled1.5bp withcolor noir);
trace segment(pp(3,4),pp(3,8));
trace segment(pp(8,4),pp(8,8));
trace segment(pp(1,4),pp(3,4));
trace segment(pp(8,8),pp(11,8));
trace segment(pp(6,4),pp(6,8));
drawoptions();
fin;
end
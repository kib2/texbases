input geometriesyr16
figure(0,0,5u,4u);
trace grille(0.5) withcolor orange;
trace hachurage(polygone(pp(1,6),pp(2,6),pp(2,7),pp(1,7)),60,0.2,0);
trace polygone(pp(1,6),pp(2,6),pp(2,7),pp(1,7));
trace polygone(pp(1,1),pp(5,7),pp(7,7),pp(9,1),pp(5,1),pp(5,4)) withpen pencircle scaled1.25bp;
fin;
end
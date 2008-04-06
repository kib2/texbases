input geometriesyr16;
figure(0,0,2.5u,2.5u);
trace grille(0.5);
label(btex 3 etex,iso(pp(0,4),pp(1,5)));
label(btex 4 etex,iso(pp(1,4),pp(2,5)));
label(btex 5 etex,iso(pp(4,4),pp(5,5)));
label(btex 2 etex,iso(pp(0,3),pp(1,4)));
label(btex 4 etex,iso(pp(4,0),pp(5,1)));
fin;
end
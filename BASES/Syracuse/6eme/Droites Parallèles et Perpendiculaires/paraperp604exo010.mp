input geometriesyr16;
figure(0,0,7u,6u);
pair A;
trace grille(0.5);
trace droite(placepoint(2,4),placepoint(5,5));
label.llft(btex $(d)$ etex,placepoint(14,8));
A=placepoint(3,1);
marque_p:="plein";
nomme.ulft(A);
drawoptions(withcolor rouge);
pointe(placepoint(2,4),placepoint(5,5),placepoint(8,6),placepoint(11,7));
drawoptions();
fin;
end
input geometriesyr16;
figure(0,0,6.5u,3.5u);
trace grille(0.5) withcolor orange;
origine((6,4));
trace axes;
marque_axe:="complete";
graduantx.bot;
graduanty.lft;
pair M,E,G,H,F;
M=placepoint(4,2);
E=placepoint(-3,-2);
F=placepoint(0,-3);
G=placepoint(1,-2);
H=placepoint(-2,0);
marque_p:="plein";
nomme.top(H);
nomme.top(M);
nomme.lrt(G);
nomme.lrt(F);
nomme.llft(E);
fin;
end

  

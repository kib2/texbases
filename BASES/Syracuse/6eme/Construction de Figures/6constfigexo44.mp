input geometriesyr16;
figure(0,0,8u,8u);
draw feuillet withcolor blanc;
pair B,C,A,G,E,F,H,I;
B=u*(2,2);
path cc;
cc=cercles(B,4cm);
C=point(0.95*length cc) of cc;
A=cercles(B,3u) intersectionpoint cercles(C,4u);
E=iso(B,C);
F=segment(A,C) intersectionpoint perpendiculaire(B,C,E);
G=rotation(C,F,60);
H=segment(F,G) intersectionpoint parallele(E,F,C);
I=rotation(H,F,60);
marque_r:=5;
trace segment(B,C);
trace marquesegment(B,C);
nomme.lft(B);
nomme.rt(C);
drawoptions(withcolor blanc);
trace droite(E,F);
%trace droite(H,C);
trace chemin(B,A,C);
trace chemin(F,G,C);
trace triangle(F,H,I);
drawoptions();
fin;
end
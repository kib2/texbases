input geometriesyr16;
figure(0,0,5u,5u);
pair A,B,C,D,E,F,O;
O=u*(2.5,2.5);
path cc;
cc=cercles(O,2u);
A=point(0) of cc;
B=rotation(A,O,60);
C=rotation(A,O,2*60);
D=rotation(A,O,3*60);
E=rotation(A,O,4*60);
F=rotation(A,O,5*60);
transparence polygone(E,iso(B,C),F);
trace polygone(A,B,C,D,E,F);
trace chemin(E,iso(B,C),F);
fin;
end


input geometriesyr16;
figure(0,0,10u,10u);
pair A,B,C,D,E,F,O;
O=u*(3,3);
A-O=u*(2,0);
B=rotation(A,O,60);
C=rotation(B,O,60);
D=rotation(C,O,60);
E=rotation(D,O,60);
F=rotation(E,O,60);
trace polygone(A,B,C,D,E,F) withpen pensquare scaled 1.5bp;
marque_r:=30;
marque_p:="plein";
pointe(A,C,E);
trace segment(A,D) dashed evenly;
trace segment(B,E) dashed evenly;
trace segment(C,F) dashed evenly;
fin;
end
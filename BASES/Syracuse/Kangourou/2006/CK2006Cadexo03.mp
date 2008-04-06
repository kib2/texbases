input geometriesyr16;
figure(0,0,5u,5u);
pair O,A,B,C,D,E;
O=u*(2.5,2.5);
path cc;
cc=cercles(O,2u);
A=point(0) of cc;
B=rotation(A,O,72);
C=rotation(B,O,72);
D=rotation(C,O,72);
E=rotation(D,O,72);
picture des;
des=image(
  transparence polygone(A,O,iso(D,E),E);
  trace polygone(A,B,C,D,E);
  trace chemin(A,O,D);
  trace chemin(B,O,iso(D,E));
  trace chemin(C,O,E);
  );
trace rotation(des,O,18);
nomme.ulft(O);
fin;
end
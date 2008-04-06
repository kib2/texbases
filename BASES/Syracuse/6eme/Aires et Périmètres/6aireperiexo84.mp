input geometriesyr16;
figure(0,0,6u,8u);
trace grille(1) withcolor orange;
drawoptions(withpen pencircle scaled1.5bp);
trace cercles(pp(2,2),u);
trace arccercle(pp(3,6),pp(2,5),pp(3,5))--arccercle(pp(2,5),pp(1,6),pp(1,5))--arccercle(pp(1,6),pp(2,7),pp(1,7))--arccercle(pp(2,7),pp(3,6),pp(3,7));
trace reverse(arccercle(pp(3,4),pp(4,5),pp(4,4)))--arccercle(pp(3,4),pp(4,5),pp(3,5));
drawoptions();
fin;
figure(0,0,12u,10u);
trace grille(1) withcolor orange;
drawoptions(withpen pencircle scaled1.5bp);
picture coeur;
coeur=image(
  trace arccercle(pp(3,3),pp(2,2),pp(2,3))--reverse(arccercle(pp(3,1),pp(2,2),pp(2,1)));
  );
trace coeur;
trace symetrie(coeur,pp(3,1),pp(3,3));
picture shuriken;
shuriken=image(
  trace pp(11,3)--pp(11,1)--arccercle(pp(11,1),pp(9,1),pp(10,1))--pp(7,1)--arccercle(pp(7,1),pp(7,3),pp(7,2)));
trace shuriken;
trace symetrie(shuriken,pp(9,3));
trace arccercle(pp(2,6),pp(3,5),pp(3,6))--reverse(arccercle(pp(5,5),pp(3,5),pp(4,5)))--arccercle(pp(5,5),pp(6,6),pp(5,6))--pp(6,8)--arccercle(pp(6,8),pp(4,8),pp(5,8))--reverse(arccercle(pp(2,8),pp(4,8),pp(3,8)))--cycle;
trace arccercle(pp(8,9),pp(8,7),pp(8,8))--arccercle(pp(8,7),pp(10,7),pp(9,7))--pp(11,7)--reverse(arccercle(pp(11,9),pp(11,7),pp(11,8)))--pp(10,9)--reverse(arccercle(pp(8,9),pp(10,9),pp(9,9)))--cycle;
drawoptions();
fin;
end
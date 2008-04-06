input geometriesyr16;
figure(0,0,6.5u,5u);
trace grille(0.5) withcolor orange;
path car[];
car1=placepoint(4,1)--placepoint(4,8)--placepoint(5,8)--placepoint(5,1)--cycle;
car2=placepoint(5,4)--placepoint(5,5)--placepoint(8,5)--placepoint(8,4)--cycle;
car3=placepoint(8,1)--placepoint(8,8)--placepoint(9,8)--placepoint(9,1)--cycle;
for j=1 upto 3:
  remplis car[j] withcolor noir;
endfor
fin;

figure(0,0,6.5u,5u);
trace grille(0.5) withcolor orange;
remplis arccercle(placepoint(8,9),placepoint(8,1),placepoint(8,5))--placepoint(8,2)--reverse(arccercle(placepoint(8,8),placepoint(8,2),placepoint(8,5)))--cycle withcolor noir;
remplis placepoint(8,9)--placepoint(10,9)--placepoint(10,8)--placepoint(8,8)--cycle withcolor noir;
remplis placepoint(8,1)--placepoint(10,1)--placepoint(10,2)--placepoint(8,2)--cycle withcolor noir;
fin;

figure(0,0,6.5u,5u);
trace grille(0.5) withcolor orange;
path car[];
car1=placepoint(3,3)--placepoint(4,2)--placepoint(10,8)--placepoint(9,9)--cycle;
car2=placepoint(3,8)--placepoint(4,9)--placepoint(10,3)--placepoint(9,2)--cycle;
for j=1 upto 2:
  remplis car[j] withcolor noir;
endfor
fin;

figure(0,0,6.5u,5u);
trace grille(0.5) withcolor orange;
trace cercles(placepoint(6,7),0.5cm) withpen pencircle scaled 1.5bp;
trace cercles(placepoint(6,7),1cm) withpen pencircle scaled 1.5bp;
trace cercles(placepoint(6,3),0.5cm) withpen pencircle scaled 1.5bp;
trace cercles(placepoint(6,3),1cm) withpen pencircle scaled 1.5bp;
fin;

figure(0,0,6.5u,5u);
trace grille(0.5) withcolor orange;
path cc,cd;
cc=placepoint(4,1)--placepoint(2,3)--placepoint(10,7)--placepoint(8,9)--cycle ;
trace cc withpen pencircle scaled 1.5bp;
cd=rotation(cc,placepoint(6,5),90);
trace cd withpen pencircle scaled 1.5bp;
fin;

figure(0,0,6.5u,5u);
trace grille(0.5) withcolor orange;
trace polygone(placepoint(3,2),placepoint(3,8),placepoint(5,8),placepoint(9,4),placepoint(9,8), placepoint(11,8),placepoint(11,2),placepoint(9,2),placepoint(5,6),placepoint(5,2)) withpen pencircle scaled 1.5bp;
fin;

figure(0,0,6.5u,5u);
trace grille(0.5) withcolor orange;
trace polygone(placepoint(3,2),placepoint(3,8),placepoint(9,8),placepoint(9,6),placepoint(5,6), placepoint(5,2)) withpen pencircle scaled 1.5bp;
fin;

figure(0,0,6.5u,5u);
trace grille(0.5) withcolor orange;
trace polygone(placepoint(4,4),placepoint(6,6),placepoint(12,8),placepoint(10,2),placepoint(8,0), placepoint(8,4)) withpen pencircle scaled 1.5bp;
fin;

figure(0,0,6.5u,5u);
trace grille(0.5) withcolor orange;
trace polygone(placepoint(3,5),placepoint(5,7),placepoint(9,7),placepoint(12,5),placepoint(9,3), placepoint(5,3)) withpen pencircle scaled 1.5bp;
fin;
end
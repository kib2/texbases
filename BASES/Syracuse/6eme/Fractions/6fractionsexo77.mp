input geometriesyr16
figure(0,0,4u,2u);
trace grille(0.5);
path cc;
cc=polygone(pp(0,0),pp(2,0),pp(2,1),pp(3,1),pp(3,0),pp(4,0),pp(4,2),pp(2,2),pp(2,3),pp(5,3),pp(5,2),pp(6,2),pp(6,4),pp(0,4));
trace hachurage(cc,60,0.2,0);
trace feuillet withpen pencircle scaled1.5bp;
fin;
figure(0,0,6u,6u);
pair A,B,C;
A=u*(1,1);
B-A=u*(4,0);
C=rotation(B,A,60);
trace polygone(A,B,C) withpen pencircle scaled1.5bp;
for k=1 upto 5:
  trace segment((k/6)[A,B],(k/6)[A,C]);
  trace segment((k/6)[B,A],(k/6)[B,C]);
endfor;
path cc;
cc=polygone(1/3[A,C],1/3[A,C]+(1/6)*(B-C),2/3[A,C]+(1/6)*(B-C),1/3[B,A],A);
trace hachurage(cc,30,0.2,0);
fin;
figure(0,0,6u,5u);
trace grille(1) withcolor orange;
path cc,cd;
cc=pp(1,0)--pp(1,3)--pp(2,3)--pp(2,4)--pp(1,4)--pp(1,5)--pp(5,5)--pp(5,4)--pp(4,4)--pp(4,3)--pp(3,2)--pp(4,1)--reverse(arccercle(pp(6,1),pp(4,1),pp(5,1)))--pp(6,0)--pp(3,0)--arccercle(pp(3,0),pp(1,0),pp(2,0))--cycle;
trace cc withpen pencircle scaled 1.5bp;
path cd;
cd=polygone(pp(2,1),pp(2,5),pp(5,5),pp(5,4),pp(4,4),pp(4,3));
trace hachurage(cd,-30,0.25,0);
fin;
end
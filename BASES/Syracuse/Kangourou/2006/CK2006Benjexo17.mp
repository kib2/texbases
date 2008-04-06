input geometriesyr16;
figure(0,0,10u,10u);
pair A,B,C,D,E,F;
C=u*(2,2);
D-C=u*(4,0);
E-D=u*(0,3);
F-E=C-D;
trace polygone(C,D,E,F);
for k=1 upto 3:
  trace (k/4)[C,D]--(k/4)[F,E];
  trace (k/4)[C,F]--(k/4)[D,E];
endfor;
path cc;
cc=cercles(iso(C,D,E,F),C);
trace cc;
B=pointarc(cc,0);
A=pointarc(cc,180);
trace segment(A,B);
trace polygone(1/2[D,E],1/2[E,F],1/2[F,C],1/4[C,E],1/2[A,B],3/4[F,D]) withpen pensquare scaled1.5bp;
nomme.rt(B);
nomme.lft(A);
fin;
end
input geometriesyr16;
figure(0,0,4u,3u);
trace feuillet;
trace u*(2,0)--u*(2,3);
fin;
figure(0,0,4u,3u);
trace feuillet;
for k=1 upto 3:
  trace u*(k,0)--u*(k,3);
endfor;
fin;
figure(0,0,4u,3u);
trace feuillet;
trace grille(1);
fin;
figure(0,0,4u,3u);
trace feuillet;
trace grille(0.5);
fin;
figure(0,0,4u,3u);
pair A,B,C,D;
A=coinbg;
B=coinbd;
C=coinhd;
D=coinhg;
trace feuillet;
for k=1 upto 4:
  trace (k/5)[A,D]--(k/5)[B,C];
endfor;
fin;
figure(0,0,4u,3u);
trace feuillet;
for k=1 upto 4:
  trace (k/5)[A,D]--(k/5)[B,C];
endfor;
trace iso(A,B)--iso(C,D);
fin;
figure(0,0,4u,3u);
trace feuillet;
for k=1 upto 4:
  trace (k/5)[A,D]--(k/5)[B,C];
  trace (k/5)[A,B]--(k/5)[D,C];
endfor;
fin;
figure(0,0,4u,3u);
trace feuillet;
for k=1 upto 9:
  trace (k/10)[A,D]--(k/10)[B,C];
  trace (k/10)[A,B]--(k/10)[D,C];
endfor;
fin;
figure(0,0,4u,4u);
pair O;
O=iso(coinbg,coinhd);
path cc;
cc=cercles(O,2u);
trace cc;
for k=0 upto 14:
  trace pointarc(cc,k*24)--O;
endfor;
fin;
figure(0,0,4u,4u);
trace cc;
for k=0 upto 9:
  trace pointarc(cc,k*36)--O;
endfor;
fin;
figure(0,0,4u,4u);
trace cc;
for k=0 upto 4:
  trace pointarc(cc,k*72)--O;
endfor;
fin;
figure(0,0,4u,4u);
trace cc;
for k=0 upto 19:
  trace pointarc(cc,k*18)--O;
endfor;
fin;
end
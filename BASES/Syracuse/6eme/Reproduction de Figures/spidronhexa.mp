input geometriesyr16;
u:=1.5cm;
figure(0,0,10u,10u);
pair A[],B[],C[],D[],E[],F[],O;
path cc,spidron[];
O=u*(5,5);
cc=cercles(O,4u);
trace cc dashed evenly;
for k=0 upto 5:
  A[k]=pointarc(cc,k*60);
endfor;
trace Codelongueur(A0,A1,A1,A2,A2,A3,A3,A4,A4,A5,A5,A0,2);
A6=A0;
A7=A1;
A8=A2;
for k=0 upto 5:
  B[k]=droite(A[k],A[k+2]) intersectionpoint droite(A[k+1],A[k+3]);
endfor;
B6=B0;
B7=B1;
B8=B2;
for k=0 upto 5:
  C[k]=droite(B[k],B[k+2]) intersectionpoint droite(B[k+1],B[k+3]);
endfor;
C6=C0;
C7=C1;
C8=C2;
for k=0 upto 5:
  D[k]=droite(C[k],C[k+2]) intersectionpoint droite(C[k+1],C[k+3]);
endfor;
D6=D0;
D7=D1;
D8=D2;
for k=0 upto 5:
  E[k]=droite(D[k],D[k+2]) intersectionpoint droite(D[k+1],D[k+3]);
endfor;
E6=E0;
E7=E1;
E8=E2;
for k=0 upto 5:
  F[k]=droite(E[k],E[k+2]) intersectionpoint droite(E[k+1],E[k+3]);
endfor;
%%
trace polygone(A0,A1,A2,A3,A4,A5);
trace polygone(A0,A2,A4);
trace polygone(A1,A3,A5);
%
trace polygone(B0,B2,B4);
trace polygone(B1,B3,B5);
%
trace polygone(C0,C2,C4);
trace polygone(C1,C3,C5);
%
trace polygone(D0,D2,D4);
trace polygone(D1,D3,D5);
%
trace polygone(E0,E2,E4);
trace polygone(E1,E3,E5);
%
spidron1=polygone(A3,A4,B3,C2,D1,E0,F5,E5,D0,C1,B2);
transparence spidron1;
fillcolor:=rouge;
transparence rotation(spidron1,O,60);
fillcolor:=jaune;
transparence rotation(spidron1,O,120);
fillcolor:=vert;
transparence rotation(spidron1,O,180);
fillcolor:=bleu;
transparence rotation(spidron1,O,240);
fillcolor:=orange;
transparence rotation(spidron1,O,300);
fin;
end
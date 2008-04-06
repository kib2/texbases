input geometriesyr11;
figure(-5u,-5u,15u,15u);
pair A[];
A[0]=u*(4.75,5);
A[1]=u*(5.25,5);
marque_p:="plein";
pointe(A0,A1);
path cc[];
color fg[];
fg0=jaune;
fg1=orange;
fg2=blanc;
for k=1 upto 10:
  cc[k]=cercles(A[k mod 2],k*abs(A0-A1));
endfor;
for k=10 downto 1:
  remplis cc[k] withcolor fg[k mod 3];
endfor;
for k=1 upto 10:
  trace cc[k];
endfor;
fin;
figure(0,0,20u,20u);
pair O;
O=u*(10,10);
path cc[];
cc1=cercles(O,7u);
cc2=cercles(O,5.5u);
cc3=cercles(O,4u);
pair A[],B[],C[],D[],E[],F[];
for k=1 upto 3:
  A[k]=pointarc(cc[k],90);
  B[k]=rotation(A[k],O,-60);
  C[k]=rotation(B[k],O,-60);
  D[k]=rotation(C[k],O,-60);
  E[k]=rotation(D[k],O,-60);
  F[k]=rotation(E[k],O,-60);
endfor;
path ccb,ccf;
ccb=cercles(B3,abs(B3-C2)-0.2u);
ccf=cercles(F3,abs(F3-A1)+0.2u);
path branch;
branch=arccercle(reverse(ccf) intersectionpoint reverse(cercles(B3,abs(B3-A1))),reverse(ccf) intersectionpoint reverse(cercles(B3,abs(B3-A2))),F3)--arccercle(reverse(ccf) intersectionpoint reverse(cercles(B3,abs(B3-A2))),C2,B3)--arccercle(C2,ccb intersectionpoint cercles(D3,abs(D3-C2)),D3)--reverse(arccercle(ccb intersectionpoint cercles(D3,abs(D3-C1)),ccb intersectionpoint cercles(D3,abs(D3-C2)),B3))--reverse(arccercle(C1,ccb intersectionpoint cercles(D3,abs(D3-C1)),D3))--reverse(arccercle(reverse(ccf) intersectionpoint reverse(cercles(B3,abs(B3-A1))),C1,B3))--cycle
;
remplis branch withcolor noir;
remplis rotation(branch,O,120) withcolor noir;
remplis rotation(branch,O,-120) withcolor noir;
fin;
figure(0,0,20u,20u);
pair O,A[],B,C,D;
O=u*(10,10);
A0=u*(5,10);
B=rotation(A0,O,-90);
C=rotation(A0,O,180);
D=rotation(A0,O,90);
path d[];
d1=droite(A0,C);
d2=droite(B,D);
path cc[];
cc1=cercles(A0,3.4u);
cc2=cercles(O,8.4u);
A1=cc1 intersectionpoint (A0--D);
A2=symetrie(cc1 intersectionpoint d1,A0);
A3=cercles(D,abs(D-A1)) intersectionpoint cc2;
path goutte;
goutte=arccercle(A1,A2,A0)--arccercle(A2,A3,O)--reverse(arccercle(A1,A3,D))--cycle;
cc3=cercles(O,9u);
cc4=cercles(O,8.7u);
remplis cc3 withcolor noir;
remplis cc4 withcolor blanc;
remplis goutte withcolor noir;
remplis rotation(goutte,O,90) withcolor noir;
remplis rotation(goutte,O,180) withcolor noir;
remplis rotation(goutte,O,-90) withcolor noir;
fin;
figure(0,0,20u,20u);
remplis cc3 withcolor blanc;
remplis cc4 withcolor noir;
remplis goutte withcolor blanc;
remplis rotation(goutte,O,90) withcolor blanc;
remplis rotation(goutte,O,180) withcolor blanc;
remplis rotation(goutte,O,-90) withcolor blanc;
fin;
figure(-5u,-5u,15u,15u);
pair O,A,B,C,D,E,F,G,H,I,J,K,L,M,N,P,Q,R,S;
O=u*(5,5);
path cc;
cc=cercles(O,5u);
A=pointarc(cc,90);
C=rotation(A,O,-60);
E=rotation(C,O,-60);
G=rotation(E,O,-60);
I=rotation(G,O,-60);
K=rotation(I,O,-60);
D=pointarc(cc,0);
B=rotation(D,O,60);
L=rotation(B,O,60);
J=rotation(L,O,60);
H=rotation(J,O,60);
F=rotation(H,O,60);
M=(K--C) intersectionpoint arccercle(A,C,B);
N=(A--E) intersectionpoint arccercle(C,E,D);
P=(C--G) intersectionpoint arccercle(E,G,F);
Q=(E--I) intersectionpoint arccercle(G,I,H);
R=(G--K) intersectionpoint arccercle(I,K,J);
S=(I--A) intersectionpoint arccercle(K,A,L);
path branche[];
branche1=arccercle(A,M,B)--arccercle(M,O,N)--reverse(arccercle(A,O,C))--cycle;
branche2=arccercle(C,M,F)--arccercle(M,O,N)--reverse(arccercle(C,O,E))--cycle;
for k=0 upto 5:
  remplis rotation(branche1,O,60*k) withcolor jaune;
  remplis rotation(branche2,O,60*k) withcolor orange;
  trace rotation(branche1,O,60*k);
  trace rotation(branche2,O,60*k);
endfor;
fin;
figure(-5u,-5u,15u,15u);
for k=0 upto 5:
  remplis rotation(branche1,O,60*k) withcolor jaune;
  trace rotation(branche1,O,60*k);
endfor;
fin;
figure(-5u,-5u,15u,15u);
for k=0 upto 5:
  remplis rotation(branche2,O,60*k) withcolor orange;
  trace rotation(branche2,O,60*k);
endfor;
fin;
figure(0,0,10u,10u);
pair O,A,B,C,D,E,F;
O=u*(5,5);
path cc;
cc=cercles(O,4u);
A=pointarc(cc,15);
B=rotation(A,O,60);
C=rotation(B,O,60);
D=rotation(C,O,60);
E=rotation(D,O,60);
F=rotation(E,O,60);
pair G;
G=(A--C) intersectionpoint (O--B);
pair H;
H=(E--C) intersectionpoint (O--D);
pair I;
I=(E--A) intersectionpoint (O--F);
picture $;
$=image(
  remplis (arccercle(C,A,B)--reverse(arccercle(C,A,G))--cycle) withcolor noir;
  remplis (arccercle(E,C,D)--reverse(arccercle(E,C,H))--cycle) withcolor noir;
  remplis (arccercle(A,E,F)--reverse(arccercle(A,E,I))--cycle) withcolor noir;
%%etape5
trace arccercle(C,A,B);
%etape6
trace arccercle(E,C,D);
%etape7
trace arccercle(A,E,F);
%etape8
trace arccercle(C,A,G);
%etape9
trace arccercle(E,C,H);
%etape10
trace arccercle(A,E,I);
);
trace $;
fin;
figure(-5u,-5u,15u,15u);
u:=5mm;
pair O,A,B,C,D,E,centre[];
path cc[],rayon[];
picture ros[];
O=u*(5,5);
%définition
cc1=cercles(O,4u);
A=pointarc(cc1,15);
cc2=cercles(O,10.5u);
cc3=cercles(O,11.6u);
for k=0 upto 5:
  cc[10+k]=cercles(rotation(A,O,60*k),4u);
endfor;
cc16=cc10;
cc17=cc11;
for k=0 upto 23:
  rayon[k]=demidroite(O,rotation(A,O,15*k));
endfor;
for k=1 step 2 until 23:
  centre[k]=rayon[k] intersectionpoint cc2;
endfor;
%remplissage
remplis cc3 withcolor noir;
remplis cc2 withcolor blanc;
cc20=
for k=1 step 2 until 23:
  reverse(arccercle(pointarc(cc2,30+15*k),pointarc(cc2,15*k),centre[k]))--
endfor
cycle;
remplis cc20 withcolor noir;
for k=0 upto 5:
  remplis cc[10+k] withcolor blanc;
endfor;
for k=0 upto 5:
  ros[k]=image(
    remplis cc[10+k] withcolor noir;
    clip currentpicture to cc[10+k+1];
    );
  trace ros[k];
endfor;
for k=0 upto 5:
  ros[10+k]=image(
    remplis cc[10+k] withcolor blanc;
    clip currentpicture to cc[10+k+2];
    );
  trace ros[10+k];
endfor;
%construction
trace cc1;
for k=0 upto 5:
  trace cc[10+k];
endfor;
trace cc2;
for k=1 step 2 until 23:
  trace cercles(centre[k],abs(pointarc(cc2,30)-pointarc(cc2,15)));
endfor;
trace cc3;
clip currentpicture to cc3;
fin;
u:=2cm;
figure(-5u,-5u,15u,15u);
pair O,A;
O=u*(5,5);
A=u*(3.5,5);
pair B,C,D;
B=symetrie(O,A);
C=symetrie(A,B);
D=symetrie(B,C);
pair E,F,G;
E=rotation(A,O,90);
F=rotation(E,O,90);
G=rotation(F,O,90);
pair H,I,J;
H=rotation(B,O,90);
I=rotation(H,O,90);
J=rotation(I,O,90);
pair K,L,M;
K=rotation(C,O,90);
L=rotation(K,O,90);
M=rotation(L,O,90);
pair P,Q,R;
P=rotation(D,O,90);
Q=rotation(P,O,90);
R=rotation(Q,O,90);
path croix;
croix=arccercle(O,B,A)--(reverse(arccercle(D,B,C)))--reverse(arccercle(O,D,B))--cycle;
remplis croix withcolor jaune;
remplis rotation(croix,O,-90) withcolor ciel;
remplis rotation(croix,O,180) withcolor orange;
remplis rotation(croix,O,90) withcolor violet;
trace croix;
trace rotation(croix,O,-90);
trace rotation(croix,O,180);
trace rotation(croix,O,90);
fin;
u:=1cm;
figure(0,0,20u,20u);
pair O,A[],B,C,D,E;
path cc;
O=u*(10,10);
cc=cercles(O,4u);
B=pointarc(cc,210);
C=rotation(B,O,-120);
D=rotation(B,O,120);
A1-iso(B,D)=u*(-0.5,0);
A2=rotation(A1,O,-120);
E=iso(symetrie(cercles(B,abs(B-A2)) intersectionpoint droite(B,O),B),cercles(B,abs(B-A1)-u) intersectionpoint droite(B,O));
path cerc[];
cerc1=cercles(B,abs(B-A1));
cerc2=cercles(B,abs(B-A2));
cerc3=cercles(E,abs(E-symetrie(cercles(B,abs(B-A2)) intersectionpoint droite(B,O),B)));
cerc4=cercles(E,abs(E-symetrie(cercles(B,abs(B-A1)) intersectionpoint droite(B,O),B)));
cerc5=cercles(B,abs(B-pointarc(cerc3,30)));
cerc6=cercles(B,abs(B-pointarc(cerc4,30)));
cerc7=cercles(pointarc(cerc6,210),abs(pointarc(cerc6,210)-pointarc(cerc5,210)));
cerc8=cercles(E,abs(E-pointarc(cerc6,210)));
path branche;
branche=arccercle(pointarc(cerc1,0),pointarc(cerc1,210),B)--arccercle(pointarc(cerc4,210),pointarc(cerc4,390),E)--arccercle(pointarc(cerc6,30),cerc6 intersectionpoint cerc7,B)--reverse(arccercle(pointarc(cerc7,210),cerc6 intersectionpoint cerc7,pointarc(cerc6,210)))--reverse(arccercle(pointarc(cerc5,30),pointarc(cerc5,210),B))--reverse(arccercle(pointarc(cerc3,210),pointarc(cerc3,390),E))--reverse(arccercle(pointarc(cerc2,60),pointarc(cerc2,210),B));
path triskell;
triskell=reverse(branche)--reverse(rotation(branche,O,120))--reverse(rotation(branche,O,-120))--cycle;
path cont[];
cont1=cercles(O,9u);
cont2=cercles(O,8.6u);
remplis cont1 withcolor noir;
remplis cont2 withcolor blanc;
remplis triskell withcolor noir;
fin;
figure(0,0,20u,20u);
pair O,A[],B,C,D,E,F,G,H,I,J,K,L,M,N,P,Q,R,S,T,U,V;
O=u*(10,10);
path cc;
cc=cercle(O,4u);
B=pointarc(cc,210);
D=pointarc(cc,330);
C=pointarc(cc,90);
G=demidroite(B,rotation(O,B,90)) intersectionpoint cercles(B,0.4u);
F=rotation(B,G,-90);
E=rotation(G,B,90);
A1=iso(B,D) shifted(u*(-0.5,0));
H=pointarc(cercles(B,abs(B-A1)),120);
I=pointarc(cercles(G,abs(G-H)),210);
J=pointarc(cercles(F,abs(F-I)),300);
K=pointarc(cercles(E,abs(E-J)),30);
L=pointarc(cercles(B,abs(B-K)),120);
A3=iso(B,D)+u*(0.5,0);
A2=rotation(A3,B,60);
U=pointarc(cercles(B,abs(B-A2)),120);
T=pointarc(cercles(G,abs(G-U)),210);
S=pointarc(cercles(F,abs(F-T)),300);
R=pointarc(cercles(E,abs(E-S)),30);
Q=pointarc(cercles(B,abs(B-R)),120);
P=pointarc(cercles(G,abs(G-Q)),210);
N=pointarc(cercles(F,abs(F-P)),300);
M=cercles(G,abs(G-L)) intersectionpoint cercles(E,abs(E-N));
path branch;
branch=arccercle(A1,H,B)--arccercle(H,I,G)--arccercle(I,J,F)--arccercle(J,K,E)--arccercle(K,L,B)--arccercle(L,M,G)--reverse(arccercle(N,M,E))--reverse(arccercle(P,N,F))--reverse(arccercle(Q,P,G))--reverse(arccercle(R,Q,B))--reverse(arccercle(S,R,E))--reverse(arccercle(T,S,F))--reverse(arccercle(U,T,G))--reverse(arccercle(A2,U,B));
path trisk;
trisk=branch--rotation(branch,O,-120)--rotation(branch,O,120)--cycle;
remplis cercles(O,8.5u);
remplis cercles(O,8u) withcolor blanc;
fill trisk;
fin;
figure(0,0,20u,20u);
remplis cercles(O,8.5u);
remplis trisk withcolor blanc;
fin;
end
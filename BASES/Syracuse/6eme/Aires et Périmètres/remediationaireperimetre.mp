input geometriesyr16;
figure(0,0,5u,5u);
pair A,B,C,D;
A=u*(2.5,2.5);
path cc;
cc=cercle(A,2u);
trace cc;
B=pointarc(cc,45);
C=symetrie(B,A);
D=pointarc(cc,123);
trace cotation(D,A,0,2mm,btex $r$ etex);
trace cotation(C,B,0,-2mm,btex $d$ etex);
marque_p:="croix";
MarquePoint(A);
fin;
u:=0.5cm;
figure(0,0,7u,6u);
pair E,F,G,H;
E=u*(1,1);
F=u*(6,1);
G=u*(6,5);
H=u*(1,5);
trace E--F--G--H--cycle;
trace cotation(E,H,2mm,2mm,btex $\ell$ etex);
trace cotation(E,F,-2mm,-2mm,btex $L$ etex);
trace codeperp(E,F,G,5);
trace codeperp(F,G,H,5);
trace codeperp(G,H,E,5);
fin;
u:=1cm;
marque_p:="non";
figure(0,-0.5u,6u,5u);
pair A,B,C,D,H,K;
A=u*(0.75,0.75);
B=A shifted(u*(4.5,0));
C=u*(4.5,4);
D=C shifted(u*(-2,0));
path cd;
cd=A--B--C--D--cycle;
fill cd withcolor 0.6*white;
trace cd;
H=projection(D,A,B);
K=projection(C,A,B);
trace D--H dashed evenly;
trace C--K dashed evenly;
trace codeperp(D,H,K,5);
trace codeperp(H,K,C,5);
trace codeperp(K,C,D,5);
trace cotation(A,H,-2mm,-2mm,btex 3~cm etex);
trace cotation(H,K,-2mm,-2mm,btex 5~cm etex);
trace cotation(A,B,-6mm,-2mm,btex 10~cm etex);
trace cotation(K,C,-2mm,-2mm,btex 8~cm etex);
nomme.llft(A);
nomme.lrt(B);
nomme.urt(C);
nomme.ulft(D);
nomme.lrt(K);
nomme.ulft(H);
fin;
figure(0,0,7.5u,6u);
pair E,F,G,H;
E=u*(1,1);
F=u*(6,1);
G=u*(6,5);
H=u*(1,5);
fill (E--F--G--H--cycle) withcolor 0.6*white;
trace E--F--G--H--cycle;
trace cotation(E,H,2mm,2mm,btex 5~cm etex);
trace cotation(E,F,-2mm,-2mm,btex 10~cm etex);
trace codeperp(E,F,G,5);
trace codeperp(F,G,H,5);
trace codeperp(G,H,E,5);
pair L,M,N,O;
L=1/4[E,G];
N=1/4[G,E];
M=1/4[F,H];
O=1/4[H,F];
fill (L--M--N--O--cycle) withcolor white;
trace L--M--N--O--cycle;
trace codeperp(L,M,N,5);
trace codeperp(M,N,O,5);
trace codeperp(N,O,L,5);
nomme.llft(L);
nomme.lrt(M);
nomme.urt(N);
nomme.ulft(O);
nomme.llft(E);
nomme.lrt(F);
nomme.urt(G);
nomme.ulft(H);
trace cotation(O,N,1.5cm,2mm,btex 4~cm etex);
trace cotation(N,M,2cm,2mm,btex 2~cm etex);
fin;
end

input geometriesyr11;
marque_p:="croix";
u:=7.5mm;
figure(0,0,6u,3u);
pair A,B,C;
B=u*(0.75,0.75);
C=u*(2,0.5);
A=u*(4,2);
trace demidroite(B,A);
trace demidroite(B,C);
trace codeangle(C,B,A,2,5mm,btex etex);
nomme.lft(B);
nomme.top(C);
nomme.top(A);
fin;
figure(0,0,6u,3u);
pair R,M,P;
M=u*(0.75,0.75);
P=u*(5.5,1);
R=u*(4,2);
trace demidroite(R,M);
trace demidroite(R,P);
trace codeangle(M,R,P,1,5mm,btex etex);
nomme.ulft(M);
nomme.top(R);
nomme.top(P);
fin;
figure(0,0,6u,3u);
pair I,J,K;
K=u*(0.75,0.75);
I=u*(5,1);
J=u*(3,2);
trace demidroite(I,J);
trace demidroite(I,K);
trace codeangle(J,I,K,3,5mm,btex etex);
nomme.bot(K);
nomme.rt(I);
nomme.top(J);
fin;
figure(0,0,6u,6u);
pair M,N,I,C,T,O,S,V,T;
M=u*(0.75,3);
I=u*(2,2.75);
N=u*(1.5,4);
trace demidroite(I,M);
trace demidroite(I,N);
pair A,B;
A=2/7[I,N];
B=rotation(A,I,angle(M-I)-angle(N-I));
trace hachurage(I--N--arccercle(N,M,I)--cycle,120,0.2,1);
nomme.bot(M);
nomme.rt(N);
nomme.lrt(I);
S=u*(0.75,0.75);
V=u*(4,2);
T=u*(5.5,1);
trace demidroite(V,S);
trace demidroite(V,T);
pair D;
C=2/7[V,S];
D=rotation(C,V,-angle(S-V)+angle(T-V));
trace hachurage(V--C--arccercle(C,D,V)--cycle,120,0.2,0);
nomme.top(S);
nomme.top(V);
nomme.top(T);
O=u*(4,3.5);
C:=u*(3.5,5);
T:=u*(5.5,5);
trace demidroite(O,C);
trace demidroite(O,T);
pair E,F;
E=2/7[O,T];
F=rotation(E,O,angle(C-O)-angle(T-O));
remplis (O--E--arccercle(E,F,O)--cycle) withcolor noir;
nomme.bot(O);
nomme.top(T);
nomme.lft(C);
fin;
u:=1cm;
figure(0,0,4u,4u);
pair A,B,C,D;
B=u*(0.75,0.75);
D=u*(3.25,1.25);
C=3/5[B,D];
A=u*(1.5,3.25);
trace triangle(A,B,D);
trace A--C;
pair P,Q;
P=2/7[A,B];
Q=rotation(P,A,-angle(B-A)+angle(C-A));
remplis A--P--arccercle(P,Q,A)--cycle;
nomme.top(A);
nomme.llft(B);
nomme.bot(C);
nomme.lrt(D);
fin;
figure(0,0,4u,4u);
pair M,N,P,Q;
M=u*(1,1.5);
P=u*(3.25,3.25);
N=2/5[M,P];
Q=u*(2.5,1);
trace triangle(M,P,Q);
trace Q--N;
pair E,F;
E=2/7[N,M];
F=rotation(E,N,angle(Q-N)-angle(M-N));
remplis N--E--arccercle(E,F,N)--cycle;
nomme.top(M);
nomme.top(N);
nomme.top(P);
nomme.bot(Q);
fin;
u:=7.5mm;
figure(0,0,4u,4u);
pair I,J,K,L;
J=u*(1,3.25);
L=u*(2.5,1);
K=1/3[J,L];
I=u*(3.25,2.5);
trace triangle(I,J,L);
trace I--K;
pair A,B;
A=2/7[J,L];
B=rotation(A,J,angle(I-J)-angle(L-J));
remplis J--A--arccercle(A,B,J)--cycle;
nomme.top(J);
nomme.top(I);
nomme.bot(L);
nomme.llft(K);
fin;
u:=1cm;
figure(0,0,8u,5u);
pair I,J,K,L,M;
J=u*(0.75,0.75);
M=u*(7.25,0.75);
I=u*(2,4.25);
L=u*(6.5,4.25);
K=(J--L) intersectionpoint (I--M);
trace J--I--M--L--cycle;
nomme.llft(J);
nomme.top(I);
nomme.top(L);
nomme.lrt(M);
nomme.top(K);
fin;
figure(0,0,8u,4u);
pair A,B,C,D,E,F;
A=u*(0.75,0.75);
D=u*(7.25,0.75);
C=u*(4,3.25);
B=3/10[C,A];
E=55/100[A,D];
F=(D--B) intersectionpoint (C--E);
trace triangle(A,D,B);
trace B--C--E;
nomme.llft(A);
nomme.bot(E);
nomme.lrt(D);
nomme.top(C);
nomme.ulft(B);
nomme.urt(F);
fin;
figure(0,0,6u,6u);
pair U,S,T,V,D,E,F,G;
U=u*(1,4);
V-U=u*(3,0);
T-U=u*(1,1);
S-V=T-U;
trace S--T--U--V--cycle;
nomme.llft(U);
nomme.lrt(V);
nomme.urt(S);
nomme.ulft(T);
path cc;
E=u*(3,1);
G=u*(5.25,3.25);
cc=cercledia(E,G);
D=pointarc(cc,150);
F=pointarc(cc,290);
trace D--E--F--G--cycle;
nomme.llft(E);
nomme.lrt(F);
nomme.urt(G);
nomme.ulft(D);
fin;
end


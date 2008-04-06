input geometriesyr16;

figure(0,0,4u,4u);
trace papierpointe withcolor orange;
pair A,B,C;
A=placepoint(6,6);
B=placepoint(7,4);
C=placepoint(5,2);
trace droite(placepoint(4,7),placepoint(4,0));
label.urt(btex $(d)$ etex,placepoint(4,0));
marque_p:="croix";
nomme.urt(A);
nomme.urt(B);
nomme.urt(C);
fin;

figure(0,0,4u,4u);
trace papierpointe withcolor orange;
pair E,F,D;
D=placepoint(6,6);
E=placepoint(1,5);
F=placepoint(2,7);
trace droite(placepoint(7,4),placepoint(0,4));
label.ulft(btex $(d)$ etex,placepoint(7,4));
marque_p:="croix";
nomme.urt(D);
nomme.urt(E);
nomme.urt(F);
fin;

figure(0,0,4u,4u);
trace papierpointe withcolor orange;
pair G,H,K;
G=placepoint(5,7);
H=placepoint(2,3);
K=placepoint(3,6);
trace droite(placepoint(1,1),placepoint(7,7));
label.lrt(btex $(d)$ etex,placepoint(1,1));
marque_p:="croix";
nomme.ulft(G);
nomme.ulft(H);
nomme.ulft(K);
fin;

figure(0,0,4u,4u);
trace papierpointe withcolor orange;
pair L,M,N;
L=placepoint(2,6);
M=placepoint(4,5);
N=placepoint(7,5);
trace droite(placepoint(1,7),placepoint(7,0));
label.urt(btex $(d)$ etex,placepoint(1,7));
marque_p:="croix";
nomme.urt(L);
nomme.urt(M);
nomme.urt(N);
fin;

end

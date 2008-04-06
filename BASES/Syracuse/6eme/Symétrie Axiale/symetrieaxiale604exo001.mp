input geometriesyr16;
figure(0,0,6.5u,5u);
trace grille(0.5) withcolor orange;
pair M,N,P,Q,R;
M=placepoint(3,6);
N=placepoint(6,8);
P=placepoint(4,3);
Q=placepoint(8,2);
R=placepoint(9,8);
trace droite(P,R) withpen pencircle scaled 1.5bp;
marque_p:="plein";
nomme.top(M);
nomme.ulft(N);
nomme.lrt(Q);
nomme.lrt(P);
label.top(btex $(d)$ etex,R);
fin;
end

input geometriesyr16;
figure(0,0,8u,7u);
pair A,B,C,D,G,H;
%d2
A=u*(1,4);
B-A=u*(6,2);
%d3
C-A=u*(1,-3);
D-B=C-A;
G=perpendiculaire(A,B,2/7[A,B]) intersectionpoint droite(A,B);
H=perpendiculaire(A,B,2/7[A,B]) intersectionpoint droite(C,D);
trace droite(A,B);
trace droite(C,D);
trace droite(G,H);
trace codeperp(A,G,H,8);
trace marque_para(droite(C,D),droite(A,B),0.5);
label.ulft(btex $(d_3)$ etex,A);
label.ulft(btex $(d_2)$ etex,C);
label.urt(btex $(d_1)$ etex,1.25[H,G]);
fin;
end
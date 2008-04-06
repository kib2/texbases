input geometriesyr16;
figure(0,0,8u,7u);
pair A,B,C,D,G,H;
%d3
A=u*(1,5);
B-A=u*(6,-2);
%d1
C-A=u*(1,-3);
D-B=C-A;
%d2
G-A=u*(1,1);
H-B=G-A;
trace droite(A,B);
trace droite(C,D);
trace droite(G,H);
trace marque_para(droite(A,B),droite(G,H),0.5);
trace marque_para(droite(C,D),droite(G,H),0.5);
label.urt(btex $(d_3)$ etex,A);
label.urt(btex $(d_1)$ etex,C);
label.urt(btex $(d_2)$ etex,G);
fin;
end
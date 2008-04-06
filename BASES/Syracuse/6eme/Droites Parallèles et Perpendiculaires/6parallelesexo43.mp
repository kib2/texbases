input geometriesyr16;
figure(0,0,6u,6u);
trace papiercahier withcolor orange;
path coupure;
coupure=coinbg--coinbd--coinhd..3/4[coinbd,coinhg]..3/4[coinbg,coinhg]--cycle;
pair A,B,C,D;
A=u*(1,1);
B-A=u*(1,3);
C-A=u*(3,1);
D-C=B-A+u*(-0.75,0);
trace droite(A,B);
trace droite(C,D);
label.ulft(btex $(d_1)$ etex,A);
label.urt(btex $(d_2)$ etex,C);
clip currentpicture to coupure;
trace coupure;
fin;
end
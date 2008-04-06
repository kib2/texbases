input geometriesyr16;
figure(0,0,5u,4u);
pair A,B,C,D,X,Y;
C=u*(1,1);
A-C=u*(0,2);
B-A=u*(3,0);
D-C=B-A;
X=u*(2,2);
Y=u*(3,2);
trace polygone(A,B,D,C);
trace chemin(A,X,C);
trace chemin(B,Y,D);
nomme.rt(X);
nomme.lft(Y);
fin;
end
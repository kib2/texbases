input geometriesyr16;
figure(0,0,8u,5u);
pair X,Y,Z;
X=u*(1,2);
Z-X=u*(6,0);
Y=iso(X,Z);
marque_p:="creux";
drawarrow X{dir 30}..Y;
drawarrow segment(X,Y);
drawarrow X{dir -30}..Y;
drawarrow Y{dir 30}..Z;
drawarrow Y{dir -30}..Z;
nomme.top(X);
nomme.top(Y);
nomme.top(Z);
fin;
end
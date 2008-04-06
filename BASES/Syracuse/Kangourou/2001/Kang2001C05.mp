input geometriesyr16;
figure(0,0,5u,4u);
pair R,S,T;
T=u*(1,1);
S=u*(4,1);
R=u*(4,3);
trace triangle(R,S,T);
nomme.lft(T);
nomme.lrt(S);
nomme.top(R);
fin;
end
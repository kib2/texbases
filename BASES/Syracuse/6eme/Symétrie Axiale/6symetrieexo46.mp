input geometriesyr16;
figure(0,0,12u,6u);
pair A,B,C,E,F;
A=u*(1,1);
B-A=u*(4,0);
C=rotation(B,A,60);
E=u*(5,9);
F=u*(6,2);
trace droite(E,F);
label.llft(btex $(d)$ etex,F);
trace polygone(A,B,C);
trace symetrie(polygone(A,B,C),E,F) withcolor blanc;
trace Codelongueur(A,B,B,C,C,A,4);
nomme.llft(A);
nomme.lrt(B);
nomme.top(C);
fin;
end

input geometriesyr16;
figure(5u,0,15u,10u);
pair A,B,C,E,F;
A=u*(8,0.5);
C-A=u*(1,3.75);
B=rotation(A,C,90);
E=u*(0,1);
F=u*(12,6);
trace droite(E,F);
label.lrt(btex $(d)$ etex,F);
trace polygone(A,B,C);
trace codeperp(B,C,A,5);
trace symetrie(polygone(A,B,C),E,F) withcolor blanc;
trace Codelongueur(A,C,C,B,4);
nomme.llft(A);
nomme.lrt(B);
nomme.top(C);
fin;
end

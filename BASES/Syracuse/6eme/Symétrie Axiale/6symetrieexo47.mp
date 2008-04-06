input geometriesyr16;
figure(0,0,12u,6u);
pair A,B,C,E,F;
A=u*(1,2.5);
B-A=u*(4,1);
C=3/5[A,rotation(B,A,90)];
E=u*(5,1);
F=u*(7,8);
trace droite(E,F);
label.lrt(btex $(d)$ etex,F);
trace polygone(A,B,C);
trace codeperp(B,A,C,5);
trace symetrie(polygone(A,B,C),E,F) withcolor blanc;
nomme.llft(A);
nomme.lrt(B);
nomme.top(C);
fin;
end

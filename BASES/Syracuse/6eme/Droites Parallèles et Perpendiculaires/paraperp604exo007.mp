input geometriesyr16;
figure(0,0,8u,6u);
pair A,B,C,D;
B=u*(1,2);
C=u*(6,1);
A=3/5[B,rotation(C,B,90)];
D=5/6[C,rotation(B,C,-90)];
trace droite(A,D);
trace droite(B,C);
trace droite(A,B) withcolor violet;
trace droite(C,D) withcolor violet;
trace codeperp(A,B,C,8);
trace codeperp(D,C,B,8);
nomme.ulft(A);
nomme.urt(D);
nomme.llft(B);
nomme.lrt(C);
fin;
end
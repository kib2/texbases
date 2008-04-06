input geometriesyr16
figure(-1u,0,12u,7u);
pair B,C,D,A,Z;
D=u*(1,1);
C=u*(6,1);
A=u*(4.5,5);
B=2/5[A,C];
Z=2[B,C];
trace demidroite(C,D);
trace demidroite(A,D);
trace demidroite(A,Z);
trace segment(D,B);
marque_p:="croix";
nomme.bot(D);
nomme.urt(C);
nomme.urt(B);
nomme.top(A);
fin;
end
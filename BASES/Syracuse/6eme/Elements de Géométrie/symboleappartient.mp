input geometriesyr16;

figure(-1u,-2u,7u,4u);
pair A,B,C,D,E,F,J;
A=u*(1,1);
B=u*(4,2);
C=2/7[A,B];
D=4/7[A,B];
E=3/2[A,B];
F=u*(2.75,0.5);
J=u*(5,-0.5);

trace A--B;
marque_p:="croix";
nomme.top(A);
nomme.top(B);
nomme.top(C);
nomme.top(D);
nomme.top(E);
nomme.bot(F);
nomme.bot(J);

fin;

figure(-1u,-2u,9u,5u);
pair A,B,G,D,E,F,J;
A=u*(1,1);
B=u*(4,2);
J=9/7[B,A];
D=4/7[A,B];
E=2[A,B];
G=11/7[A,B];
F=u*(2.75,0.5);

trace A--B;
marque_p:="croix";
nomme.top(A);
nomme.top(B);
nomme.top(G);
nomme.top(D);
nomme.top(E);
nomme.bot(F);
nomme.bot(J);

fin;

figure(-4u,-2u,9u,5u);
pair A,B,G,D,E,F,J,H;
A=u*(1,4);
B=u*(5,1);
J=9/7[B,A];
D=4/7[A,B];
E=iso(A,B,F);
G=11/7[A,B];
F=u*(2.75,0.5);
H=1.5[B,A];

trace A--B;
marque_p:="croix";
nomme.top(A);
nomme.top(B);
nomme.top(G);
nomme.top(D);
nomme.top(E);
nomme.bot(F);
nomme.bot(J);

fin;
end
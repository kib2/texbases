input geometriesyr12;

u:=1cm;
figure(0u,0u,7u,3u);
pair R,S,T;
R=u*(1,1);
S=u*(4,1);
T=u*(6.5,1);

trace droite(R,T);
labeloffset:=2*labeloffset;
marque_p:="croix";
nomme.top(R);
nomme.top(S);
nomme.top(T);
labeloffset:=labeloffset/2;
fin;
%---------------------------------------------------------------------
%---------------------------------------------------------------------

figure(0u,0u,10u,3u);
pair N,P,Q;
N=u*(1,1);
P=u*(6,1);
Q=u*(9.5,1);

trace droite(N,Q);
labeloffset:=2*labeloffset;
marque_p:="croix";
nomme.top(N);
nomme.top(P);
nomme.top(Q);
labeloffset:=labeloffset/2;
fin;

%---------------------------------------------------------------
%3
%--------------------------------------------------------------

figure(0u,0u,12u,3u);
pair R,S,P,Q;
P=u*(1,1);
Q=u*(4,1);
R=u*(5.5,1);
S=u*(10,1);

trace droite(P,S);
labeloffset:=2*labeloffset;
marque_p:="croix";
nomme.top(P);
nomme.top(Q);
nomme.top(R);
nomme.top(S);
labeloffset:=labeloffset/2;
fin;

%------------------------------------------------
%4
%-------------------------------------------------
figure(0u,0u,10u,6u);
pair A,B,C,T;
B=u*(4,5.5);
A=u*(0.5,4);
C=u*(3.5,1);
T=u*(5.5,1);

trace droite(A,B);
trace droite(C,T);
labeloffset:=2*labeloffset;
marque_p:="croix";
nomme.top(A);
nomme.top(B);
nomme.top(C);
nomme.urt(T);
labeloffset:=labeloffset/2;
fin;





%--------------------------------------------------------------------
%5
%------------------------------------------------------------------

figure(-2u,0u,12u,10u);
pair B,C,D,E,A,F,S,T,R,Z;
C=u*(1,1);
D=u*(5,1);
B=u*(2.5,4);
A=7/4[D,B];
F=2[C,B];
E=3/5[C,D];
S=u*(-0.75,1);
T=2[D,B];
R=2[C,D];
Z=9/4[C,B];

trace droite(C,F);
trace droite(A,D);
trace droite(C,D);
labeloffset:=2*labeloffset;
marque_p:="croix";
nomme.top(C);
nomme.top(D);
nomme.top(B);
nomme.top(A);
nomme.top(F);
nomme.bot(E);
label.bot(btex $x$ etex,S);
label.top(btex $(\Delta)$ etex,T);
label.bot(btex $y$ etex,R);
label.top(btex $(d)$ etex,Z);
labeloffset:=labeloffset/2;
fin;

%--------------------------------------------------------------
%6
%--------------------------------------------------------------

figure(-3u,0u,12u,7u);
pair B,C,D,A,S,T,R,Y,Z;
D=u*(1,1);
C=u*(6,1);
A=u*(4.5,5);
B=2/5[A,C];
S=u*(-0.75,1);
T=9/4[C,A];
Y=2[D,C];
Z=2[B,C];
R=u*(7,1);

trace droite(C,R);
trace droite(A,D);
trace droite(A,Z);
trace D--B;
labeloffset:=2*labeloffset;
marque_p:="croix";
nomme.bot(D);
nomme.urt(C);
nomme.top(R);
nomme.top(B);
nomme.top(A);

label.top(btex $x$ etex,S);
label.top(btex $y$ etex,Y);
label.top(btex $t$ etex,T);
label.top(btex $z$ etex,Z);
labeloffset:=labeloffset/2;
fin;

end
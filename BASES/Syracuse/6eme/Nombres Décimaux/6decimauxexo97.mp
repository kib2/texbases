input geometriesyr16;
figure(0,0,5u,5u);
pair A,B,P;
A=u*(1,1);
B-A=u*(3,0);
marque_r:=3;
trace droite(A,B);
trace marquesegment(A,B);
P=1/5[A,B];
trace marquesegment(A,P);
nomme.bot(P);
label.top(btex 7,1 etex,A);
label.top(btex 7,2 etex,B);
fin;
figure(0,0,5u,5u);
pair A,B,K;
A=u*(1,1);
B-A=u*(3,0);
marque_r:=3;
trace droite(A,B);
trace marquesegment(A,B);
K=3.25/5[A,B];
trace marquesegment(A,K);
nomme.bot(K);
label.top(btex 2,2 etex,A);
label.top(btex 2,3 etex,B);
fin;
figure(0,0,5u,2u);
pair A,B,V;
A=u*(1,1);
B-A=u*(3,0);
marque_r:=3;
trace droite(A,B);
trace marquesegment(A,B);
V=4/5[A,B];
trace marquesegment(A,V);
nomme.bot(V);
label.top(btex 6 etex,A);
label.top(btex 7 etex,B);
fin;
figure(0,0,5u,3u);
pair A,B,R;
A=u*(1,2);
B-A=u*(3,0);
marque_r:=3;
trace droite(A,B);
for k=1 upto 9:
  trace marquesegment((k/10)[A,B],((k+1)/10)[A,B]);
endfor;
trace marquesegment(A,B);
R=3.25/10[A,B];
trace marquesegment(A,R);
drawarrow (3.25/10[A,B] shifted(u*(0,-1)))--(3.25/10[A,B] shifted(u*(0,-0.1)));
labeloffset:=labeloffset*2;
label.top(btex 5 etex,A);
label.top(btex 6 etex,B);
labeloffset:=labeloffset/2;
label.bot(btex $R$ etex,R shifted(u*(0,-1)));
fin;
figure(0,0,5.5u,3u);
pair A,B,S;
A=u*(1,2);
B-A=u*(4,0);
marque_r:=3;
trace droite(A,B);
for k=1 upto 9:
  trace marquesegment((k/10)[A,B],((k+1)/10)[A,B]);
endfor;
trace marquesegment(A,B);
S=7.4/10[A,B];
trace marquesegment(A,S);
drawarrow (7.4/10[A,B] shifted(u*(0,-1)))--(7.4/10[A,B] shifted(u*(0,-0.1)));
labeloffset:=labeloffset*2;
label.top(btex 4,8 etex,A);
label.top(btex 4,9 etex,B);
labeloffset:=labeloffset/2;
label.bot(btex $S$ etex,S shifted(u*(0,-1)));
fin;
end

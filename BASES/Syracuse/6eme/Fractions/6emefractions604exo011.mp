input geometriesyr17;
pair A,B,C,M;
marque_p:="tiretv";
figure(0,0,7u,1.5u);
A=u*(0.5,0.5);
B-A=u*(6,0);
trace segment(A,B);
part:=3;
for k=0 upto part:
  pointe((k/part)[A,B]);
endfor;
M=(1/part)[A,B];
nomme.top(A);
nomme.top(B);
nomme.top(M);
fin;
figure(0,0,7u,1u);
trace segment(A,B);
part:=5;
for k=0 upto part:
  pointe((k/part)[A,B]);
endfor;
M:=(4/part)[A,B];
nomme.top(A);
nomme.top(B);
nomme.top(M);
fin;
figure(0,0,7u,1u);
trace segment(A,B);
part:=10;
for k=0 upto part:
  pointe((k/part)[A,B]);
endfor;
M:=(6/part)[A,B];
nomme.top(A);
nomme.top(B);
nomme.top(M);
fin;
figure(0,0,7u,1u);
B:=A+u*(4,0);
part:=16;
trace demidroite(A,B);
for k=0 upto (part+10):
  pointe((k/part)[A,B]);
endfor;
M:=(20/part)[A,B];
nomme.top(A);
nomme.top(B);
nomme.top(M);
fin;
figure(0,0,7u,1u);
part:=12;
trace demidroite(A,B);
for k=0 upto (part+10):
  pointe((k/part)[A,B]);
endfor;
M:=(15/part)[A,B];
nomme.top(A);
nomme.top(B);
nomme.top(M);
fin;
figure(0,0,7u,1u);
part:=8;
trace demidroite(A,B);
for k=0 upto (part+10):
  pointe((k/part)[A,B]);
endfor;
M:=(11/part)[A,B];
nomme.top(A);
nomme.top(B);
nomme.top(M);
fin;
end
  
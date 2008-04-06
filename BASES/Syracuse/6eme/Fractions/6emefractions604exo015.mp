input geometriesyr17;
pair A,B,C,M;
marque_p:="tiretv";
A=u*(0.5,0.5);
figure(0,0,7u,1u);
B:=A+u*(4,0);
part:=5;
trace demidroite(A,B);
for k=0 upto (part+10):
  pointe((k/part)[A,B]);
endfor;
nomme.top(A);
nomme.top(B);
fin;
figure(0,0,7u,1u);
B:=A+u*(5,0);
part:=8;
trace demidroite(A,B);
for k=0 upto (part+4):
  pointe((k/part)[A,B]);
endfor;
nomme.top(A);
nomme.top(B);
fin;
figure(0,0,7u,1u);
B:=A+u*(4,0);
part:=6;
trace demidroite(A,B);
for k=0 upto (part+10):
  pointe((k/part)[A,B]);
endfor;
nomme.top(A);
nomme.top(B);
fin;
figure(0,0,7u,1u);
B:=A+u*(5,0);
part:=3;
trace demidroite(A,B);
for k=0 upto (part+10):
  pointe((k/part)[A,B]);
endfor;
nomme.top(A);
nomme.top(B);
fin;
figure(0,0,7u,1u);
B:=A+u*(2,0);
part:=1;
trace demidroite(A,B);
for k=0 upto (part+4):
  pointe((k/part)[A,B]);
endfor;
nomme.top(A);
nomme.top(B);
fin;
figure(0,0,7u,1u);
B:=A+u*(4,0);
part:=5;
trace demidroite(A,B);
for k=0 upto (part+10):
  pointe((k/part)[A,B]);
endfor;
nomme.top(A);
nomme.top(B);
fin;
end
  
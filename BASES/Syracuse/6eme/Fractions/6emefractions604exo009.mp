input geometriesyr17;
pair A,B;
marque_p:="tiretv";
figure(0,0,7u,1u);
A=u*(0.5,0.5);
B-A=u*(6,0);
trace segment(A,B);
part:=3;
for k=0 upto part:
  pointe((k/part)[A,B]);
endfor;
fin;
figure(0,0,7u,1u);
trace segment(A,B);
part:=5;
for k=0 upto part:
  pointe((k/part)[A,B]);
endfor;
fin;
figure(0,0,7u,1u);
trace segment(A,B);
part:=10;
for k=0 upto part:
  pointe((k/part)[A,B]);
endfor;
fin;
figure(0,0,7u,1u);
trace segment(A,B);
part:=16;
for k=0 upto part:
  pointe((k/part)[A,B]);
endfor;
fin;
figure(0,0,7u,1u);
trace segment(A,B);
part:=6;
for k=0 upto part:
  pointe((k/part)[A,B]);
endfor;
fin;
figure(0,0,7u,1u);
trace segment(A,B);
part:=12;
for k=0 upto part:
  pointe((k/part)[A,B]);
endfor;
fin;
end
  
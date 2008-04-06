input geometriesyr16;
u:=5mm;
figure(0,0,15u,17u);
pair A,B,C,M[],N[];
path db[],dc[];
B=u*(1,1);
C-B=u*(13,0);
A=cercles(B,16u) intersectionpoint cercles(C,16u);
trace triangle(A,B,C);
for k=0 upto 10:
  M[k]=(k/10)[A,B];
  dc[k]=demidroite(C,M[k]);
endfor;
for k=0 upto 20:
  N[k]=(k/20)[A,C];
  db[k]=demidroite(B,N[k]);
endfor;
for k=0 upto 9:
  if (k mod 2)=0:
    for l=0 step 2 until 18:
      remplis buildcycle(dc[k],db[l],dc[k+1],db[l+1]);
    endfor;
  else:
    for l=1 step 2 until 19:
      remplis buildcycle(dc[k],db[l],dc[k+1],db[l+1]);
    endfor;
  fi;
endfor;
fin;
end
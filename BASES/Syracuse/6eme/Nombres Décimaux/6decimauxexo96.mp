input geometriesyr16;
figure(0,0,12u,12u);
pair A,B,C,D,M[],N[];
A=u*(1,11);
B-A=u*(10,0);
C=rotation(A,B,90);
D-C=A-B;
trace polygone(A,B,C,D);
nomme.ulft(A);
nomme.urt(B);
nomme.lrt(C);
nomme.llft(D);
marque_r:=5;
trace marquesegment(A,B);
for k=1 step 2 until 9:
  trace marquesegment((k/10)[A,B],((k+1)/10)[A,B]);
endfor;
labeloffset:=labeloffset*2;
label.top(btex 9 etex,1/5[A,B]);
label.top(btex 10 etex,3/10[A,B]);
trace marquesegment(B,C);
for k=1 step 2 until 9:
  trace marquesegment((k/10)[B,C],((k+1)/10)[B,C]);
endfor;
label.rt(btex 5,1 etex,1/5[B,C]);
label.rt(btex 5,2 etex,7/10[B,C]);
trace marquesegment(D,C);
for k=1 step 2 until 9:
  trace marquesegment((k/10)[D,C],((k+1)/10)[D,C]);
endfor;
label.bot(btex 7,7 etex,2/5[D,C]);
label.bot(btex 7,8 etex,1/2[D,C]);
trace marquesegment(D,A);
for k=1 step 2 until 9:
  trace marquesegment((k/10)[D,A],((k+1)/10)[D,A]) shifted(D-1/20[D,A]);
endfor;
for k=1 upto 99:
  trace segment(1/200[D,C],symetrie(1/200[D,C],D)) shifted((k/100)[D,A]-D);
endfor;
label.lft(btex 4,01 etex,15/100[D,A]);
label.lft(btex 4,02 etex,25/100[D,A]);
fin;
end
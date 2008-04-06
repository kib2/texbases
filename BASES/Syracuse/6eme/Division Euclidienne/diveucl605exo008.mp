input geometriesyr16;
input LATEX;
u:=8mm;
figure(0,0,16u,16u);
pair A,B,C,D,O,E[];
O=u*(8,8);
A-O=u*(0,6);
B-O=u*(6.5,0);
C-O=u*(0,-7);
D-O=u*(-7.5,0);
for k=0 step 4 until 16:
  E[k]=(((k div 4)+1)/6)[O,A];
endfor;
for k=1 step 4 until 17:
  E[k]=(((k div 4)+1)/6)[O,B];
endfor;
for k=2 step 4 until 18:
  E[k]=(((k div 4)+1)/6)[O,C];
endfor;
for k=3 step 4 until 19:
  E[k]=(((k div 4)+1)/6)[O,D];
endfor;
trace E0
for k=1 upto 16:
  ..E[k]
endfor
..E[17];
for k=0 upto 16:
  remplis cercles(E[k],3.5mm) withcolor blanc;
  trace cercles(E[k],3.5mm);
  label(LATEX(""&decimal(k)&""),E[k]);
endfor;
nomme.top(A);
label.rt("B",E[17]);
label.bot("C",E[18]);
label.lft("D",E[19]);
fin;
end

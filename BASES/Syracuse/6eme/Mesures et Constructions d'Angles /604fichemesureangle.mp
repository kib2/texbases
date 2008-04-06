input geometriesyr15;
marque_p:="croix";
for k=0 upto 11:
  figure(0,0,6u,6u);
  pair A,B,C,O;
  path cc;
  O=u*(3,3);
  cc=cercles(O,2u);
  A=pointarc(cc,uniformdeviate(360));
  B=rotation(A,O,15);
  C=rotation(B,A,15*k+uniformdeviate(10));
  trace demidroite(A,B);
  trace demidroite(A,C);
  pointe(A);
  fin;
endfor;
marque_p:="non";
end
  
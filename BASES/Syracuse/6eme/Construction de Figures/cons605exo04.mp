input geometriesyr16;
figure(-10u,-10u,10u,10u);
pair A,O,M[],N[],P[];
A=(0,0);
path cc;
cc=cercles(A,2.5u);
trace cc;
O=pointarc(cc,0);
marque_p:="plein";
drawoptions(withcolor rouge);
for k=1 step 2 until 359:
  M[k]=pointarc(cc,k);
  N[k]=cercles(M[k],5u) intersectionpoint droite(O,M[k]);
  P[k]=symetrie(N[k],M[k]);
  pointe(N[k],P[k]);
endfor;
drawoptions();
marque_p:="non";
fin;
end

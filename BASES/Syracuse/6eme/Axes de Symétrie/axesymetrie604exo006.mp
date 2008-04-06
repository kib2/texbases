input geometriesyr16;
figure(0,0,10u,7u);
pair A,B,C;
trace triangleqcq(A,B,C);
trace droite(A,iso(B,C));
trace droite(B,iso(A,C));
trace droite(C,iso(A,B));
trace perpendiculaire(B,C,iso(B,C));
trace perpendiculaire(A,C,iso(A,C));
trace perpendiculaire(B,A,iso(B,A));
trace perpendiculaire(B,C,A);
trace perpendiculaire(C,A,B);
trace perpendiculaire(A,B,C);
trace droite(A,CentreCercleI(A,B,C));
trace droite(B,CentreCercleI(A,B,C));
trace droite(C,CentreCercleI(A,B,C));
fin;
end



input geometriesyr16;
figure(0,0,5u,5u);
pair A,B,C;
trace triangleqcq(B,C,A);
trace droite(B,A);
trace droite(B,C);
trace droite(C,A);
trace Codeangle(symetrie(C,A),A,B,0,btex 2 etex);
trace Codeangle(symetrie(A,C),C,symetrie(B,C),0,btex 1 etex);
nomme.lrt(B);
nomme.llft(C);
nomme.top(A);
fin;
end
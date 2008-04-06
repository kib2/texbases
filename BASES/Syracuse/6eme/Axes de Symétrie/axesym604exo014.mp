input geometriesyr16;
figure(0,0,7.5u,7.5u);
pair A,B,C;
trace triangleqcq(A,B,C);
nomme.llft(A);
nomme.lrt(B);
nomme.top(C);
fin;
figure(0,0,6u,5u);
pair A,B,C;
trace triangleqcq(B,A,C);
nomme.llft(B);
nomme.lrt(A);
nomme.top(C);
fin;
end
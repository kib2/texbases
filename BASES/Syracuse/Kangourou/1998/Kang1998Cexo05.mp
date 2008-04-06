input geometriesyr16;
figure(0,0,5u,5u);
pair A,B,C;
B=u*(1,1);
C-B=u*(3,0);
A-C=u*(0,2);
trace triangle(A,B,C);
trace codeperp(B,C,A,5);
trace appelation(B,A,2mm,btex 5~cm etex);
trace appelation(A,C,2mm,btex 3~cm etex);
trace appelation(B,C,-2mm,btex 4~cm etex);
nomme.llft(B);
nomme.lrt(C);
nomme.top(A);
fin;
end
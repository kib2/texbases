input geometriesyr16;
figuremainlevee(0,0,10u,10u);
pair A,B,C,D,E,F;
A=u*(1,1);
B=u*(3,4);
C=u*(6,2);
D-A=u*(8,0);
trace polygone(A,B,C,D);
E=projection(B,A,D);
F=projection(C,A,D);
trace chemin(E,B,F,C);
trace codeperp(B,E,F,8);
trace codeperp(C,F,D,8);
trace appelation(A,E,-2mm,btex 17~mm etex);
trace appelation(B,E,2mm,btex 23~mm etex);
trace appelation(E,F,-2mm,btex 31~mm etex);
trace appelation(F,D,-2mm,btex 15~mm etex);
trace appelation(F,C,2mm,btex 15~mm etex);
nomme.llft(A);
nomme.bot(E);
nomme.bot(F);
nomme.lrt(D);
nomme.top(C);
nomme.top(B);
finmainlevee;
end
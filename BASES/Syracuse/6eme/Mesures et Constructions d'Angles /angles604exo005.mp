input geometriesyr16;
figure(0,0,10u,10u);
pair A,B,C,D,E,F;
E=u*(0.75,2);
D=u*(8,1);
A-E=u*(1,4);
B-A=u*(5,1);
C=iso(B,D);
trace polygone(A,B,D,E);
F=segment(A,C) intersectionpoint segment(E,B);
trace chemin(A,C,E,B);
nomme.lft(E);
nomme.bot(D);
nomme.rt(C);
nomme.top(B);
nomme.top(A);
nomme.top(F);
fin;
end

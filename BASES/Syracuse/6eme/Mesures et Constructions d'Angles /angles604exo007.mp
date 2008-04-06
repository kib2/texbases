input geometriesyr16;
figure(0,0,10u,6u);
pair A,B,C,D,E;
B=u*(0.75,0.75);
A-B=u*(2,3);
D-A=u*(3,-1);
C-D=u*(0.5,-2);
E=segment(A,C) intersectionpoint segment(B,D);
trace polygone(A,B,C,D);
trace segment(D,B);
trace segment(A,C);
nomme.llft(B);
nomme.top(A);
nomme.top(D);
nomme.lrt(C);
nomme.bot(E);
fin;
end
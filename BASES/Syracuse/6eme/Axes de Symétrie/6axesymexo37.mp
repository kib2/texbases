input geometriesyr16;

figure(0,0,10u,10u);
pair A,B,C,D,E,F,M,N;
A=u*(1,1);
B-A=u*(5,0);
E-B=u*(0,6);
F-E=A-B;
M=iso(A,B);
N-M=E-B;
C=rotation(B,A,60);
D=segment(B,E) intersectionpoint perpendiculaire(C,B,iso(B,C));
drawoptions(withpen pensquare scaled 0.25bp);
trace hachurage(polygone(A,D,8/10[D,C]),angle(C-D),0.3,0);
trace hachurage(polygone(2/5[A,C],1/7[C,N],1/7[C,N]+D-C,D,C),90,0.1,0);
drawoptions();
trace polygone(A,B,E,F);
trace triangle(A,D,C);
trace segment(M,N) dashed evenly;
drawarrow reverse(arccercle(C,B,11/10[A,D]));
nomme.llft(A);
nomme.bot(M);
nomme.lrt(B);
nomme.rt(D);
nomme.top(N);
nomme.ulft(C);
fin;
end
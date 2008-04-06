input geometriesyr16;
figure(0,0,5u,5u);
pair A,B,C,D;
A=u*(0.5,0.5);
B-A=u*(4,0);
C-B=u*(0,3);
D-C=A-B;
trace polygone(A,B,C,D);
trace segment(1/3[A,D],1/3[B,C]);
trace segment(2/3[A,D],2/3[B,C]);
fin;
end
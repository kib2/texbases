input geometriesyr16;
figure(0,0,10u,10u);
pair A,B,C,D;
A=u*(1,1);
B-A=u*(8,0);
C=12/13[B,rotation(A,B,-90)];
D-C=A-B;
trace polygone(A,B,C,D);
transparence polygone(B,C,4/13[C,D],4/13[B,A]);
trace segment(4/13[C,D],4/13[B,A]);
trace segment(1/3[B,C],1/3[B,C]+(4/13)*(D-C));
trace segment(2/3[B,C],2/3[B,C]+(4/13)*(D-C));
trace hachurage(polygone(A,4/13[B,A],1/4[B,C]+(4/13)*(D-C),1/4[A,D]),120,0.25,0) withcolor gris;
trace segment(1/4[B,C]+(4/13)*(D-C),1/4[A,D]);
trace segment(3/13[A,B],3/13[A,B]+(1/4)*(D-A));
trace segment(6/13[A,B],6/13[A,B]+(1/4)*(D-A));
fin;
end
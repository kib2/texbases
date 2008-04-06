input geometriesyr16;
u:=7mm;
figure(0,0,8u,8u);
pair A,B,C,D,E,F,G,H;
A=u*(3,5);
B-A=u*(2.5,0);
C=rotation(A,B,90);
D=rotation(B,A,-90);
E=rotation(B,A,60);
F=rotation(C,B,60);
G=rotation(D,C,60);
H=rotation(A,D,60);
trace polygone(A,B,C,D);
trace polygone(E,B,F,C,G,D,H,A);
trace marqueangle(F,B,E,0);
label.urt(btex $\alpha$ etex,w);
fin;
end

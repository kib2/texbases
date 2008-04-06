input geometriesyr16;
figure(0,0,15u,10u);
pair B,C;
path cb,cc;
B=u*(4,4);
C=pointarc(cercles(B,6u),15);
cb=cercles(B,3u);
cc=cercles(C,4u);
pair A,D;
A=cb intersectionpoint cc;
D=symetrie(A,B,C);
remplis arccercle(A,D,C)--arccercle(D,A,B)--cycle withcolor bleu;
trace cb dashed evenly;
trace cc dashed evenly;
marque_p:="croix";
nomme.llft(B);
nomme.urt(C);
fin;
end
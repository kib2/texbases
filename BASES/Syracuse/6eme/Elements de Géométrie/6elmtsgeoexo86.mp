input geometriesyr16;
figuremainlevee(-0.5u,0,4u,4u);
pair I,J,K;
trace triangleqcq(I,J,K);
nomme.lrt(J);
nomme.top(K);
nomme.llft(I);
trace Codelongueur(J,I,I,K,2);
trace appelation(K,J,3mm,btex 3~cm etex);
trace appelation(I,K,4mm,btex 4~cm etex);
finmainlevee;
figuremainlevee(0,0,4u,4u);
pair R,P,T;
trace triangleqcq(R,P,T);
nomme.llft(R);
nomme.rt(P);
nomme.top(T);
trace appelation(T,P,2mm,btex 8~cm etex);
trace appelation(R,P,-3mm,btex 6~cm etex);
trace appelation(R,T,3mm,btex 4~cm etex);
finmainlevee;
u:=0.8cm;
figure(0,0,5u,6u);
trace feuillet withcolor blanc;
pair A,B,C,D;
A=u*(0.5,2.5);
C-A=u*(4,0.5);
B=cercles(A,3u) intersectionpoint cercles(C,3u);
D-A=C-B;
%trace polygone(A,B,C,D);
trace chemin(A,B,C);
trace Codelongueur(A,B,B,C,2);
trace marquedemidroite(A,B);
trace marquedemidroite(C,B);
nomme.ulft(A);
nomme.top(B);
nomme.urt(C);
fin;
figure(0,0,5u,5u);
trace feuillet withcolor blanc;
pair A,B,C,D;
A=u*(1.5,1);
B-A=u*(-1,3);
D=rotation(B,A,-120);
C-D=B-A;
%trace polygone(A,B,C,D);
trace chemin(B,A,D);
trace Codelongueur(B,A,A,D,1);
trace marquedemidroite(B,A);
trace marquedemidroite(D,A);
nomme.llft(A);
nomme.rt(D);
nomme.top(B);
fin;
figure(0,0,5u,5u);
trace feuillet withcolor blanc;
pair A,B,C,D;
C=u*(1.5,1);
B-C=u*(-1,3);
D=rotation(B,C,-100);
A-D=B-C;
%trace polygone(A,B,C,D);
trace segment(B,C);
trace segment(C,2/3[C,D]);
trace marquedemidroite(B,C);
nomme.ulft(B);
nomme.llft(C);
fin;
figure(0,0,5u,5.5u);
trace feuillet withcolor blanc;
pair A,B,C,D;
A=u*(3.5,0.5);
D-A=u*(1,2.5);
B=rotation(D,A,60);
C-B=D-A;
%trace polygone(A,B,C,D);
trace segment(A,D);
trace marquedemidroite(D,A);
trace segment(A,3/5[A,B]);
nomme.top(D);
nomme.lrt(A);
fin;
end
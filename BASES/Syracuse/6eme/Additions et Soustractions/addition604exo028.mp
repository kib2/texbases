input geometriesyr16;
figure(0,0,5u,5u);
pair A,B,C,D,E,F,G,H,I;
A=u*(1,2);
B=u*(2,2);
C-B=u*(0,1);
D-C=u*(1,0);
E-D=D-C;
F-E=A-C;
G-F=F-E;
H-G=D-C;
I-E=B-C;
path cc;
cc=cercles(A,2.5mm);
trace chemin(A,B,C,E,G,H,D);
trace segment(E,I);
trace segment(B,G);
fill cc withcolor jaune;
trace cc;
fill (cc shifted(B-A)) withcolor jaune;
trace cc shifted(B-A);
fill (cc shifted(C-A)) withcolor jaune;
trace cc shifted(C-A);
fill (cc shifted(D-A)) withcolor jaune;
trace cc shifted(D-A);
fill (cc shifted(E-A)) withcolor jaune;
trace cc shifted(E-A);
fill (cc shifted(F-A)) withcolor jaune;
trace cc shifted(F-A);
fill (cc shifted(G-A)) withcolor jaune;
trace cc shifted(G-A);
fill (cc shifted(H-A)) withcolor jaune;
trace cc shifted(H-A);
fill (cc shifted(I-A)) withcolor jaune;
trace cc shifted(I-A);
label(btex 6 etex,A);
label(btex 1 etex,F);
fin;
end
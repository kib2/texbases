input geometriesyr16;
figuremainlevee(0,0,7u,3u);
trace grille(0.5) withcolor blue;
pair A,B,C,D,E,F,G,H,I,J;
A=pp(1,5);
B=pp(5,5);
C=pp(6,5);
D=pp(9,5);
E=pp(12,5);
F=pp(13,5);
G=pp(13,1);
H=pp(9,1);
I=pp(5,1);
J=pp(1,1);
drawoptions(withpen pensquare scaled 1.5bp);
trace segment(A,F);
trace segment(J,G);
trace chemin(J,B,I,C,H,E);
trace segment(H,D);
drawoptions();
finmainlevee;
end


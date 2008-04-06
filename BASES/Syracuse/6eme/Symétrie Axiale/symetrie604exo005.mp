input geometriesyr16;
figure(0,0,2u,2.5u);
trace grille(0.5) withcolor orange;
pair A,B,C;
B=placepoint(1,1);
C=placepoint(3,1);
A=placepoint(3,4);
trace polygone(A,B,C);
trace codeperp(A,C,B,8);
nomme.llft(B);
nomme.lrt(C);
nomme.urt(A);
fin;
end
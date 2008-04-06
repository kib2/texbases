input geometriesyr16; 
input papiers2;

u:=0.5cm;
figure(0u,0u,12u,8u); 
trace grille(0.5) withcolor gris;
pair A,B,C,D,E,F,G,H,I,J,K,L,M,N,A',B',C',D',E';
A=placepoint(0,5);
B=placepoint(1,5);
C=placepoint(2,5);
D=placepoint(3,5);
E=placepoint(4,5);
trace arccercle(E,A,C);
trace arccercle(D,B,C);
A'=placepoint(8,5);
B'=placepoint(9,5);
C'=placepoint(10,5);
D'=placepoint(11,5);
E'=placepoint(12,5);
trace arccercle(E',A',C');
trace arccercle(D',B',C');
F=placepoint(5,5);
G=placepoint(6,5);
H=placepoint(7,5);
I=placepoint(8,5);
trace arccercle(H,F,G);
trace arccercle(E,I,G);
J=placepoint(4,1);
K=placepoint(5,1);
L=placepoint(6,1);
M=placepoint(7,1);
N=placepoint(8,1);
trace arccercle(M,K,L);
trace arccercle(N,J,L);
fin;

u:=1cm;
figure(0u,0u,12u,8u); 
trace grille(1) withcolor gris;
fin;

end 
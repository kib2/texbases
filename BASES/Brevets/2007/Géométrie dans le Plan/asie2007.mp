input geometriesyr16;
figure(0,0,10u,10u);
pair R,M,N,S,P;
M=u*(1,1);
P-M=u*(6,0);
N-P=u*(0,4);
S=5/6[M,P];
R=5/6[M,N];
trace polygone(M,N,P);
trace segment(R,S);
trace codeperp(R,S,M,5);
trace codeperp(N,P,S,5);
nomme.llft(M);
nomme.bot(S);
nomme.bot(P);
nomme.top(N);
nomme.top(R);
fin;
end
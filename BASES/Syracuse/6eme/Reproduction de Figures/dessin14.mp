input geometriesyr15;
figure(-0.5u,-10u,14.5u,10u) ;
pair A,B,C,D,E,F,G,H,I;
path bc,dc;
a:=2cm ;
b:=7cm ;
c:=14cm ;
d:=5cm ;
A=(0,0) ;
B=(b,0) ;
C=(c,0) ;
D=milieu(A,B) ;
E=milieu(B,C) ;
nomme.lft(A);
nomme.bot(B);
nomme.rt(C);
nomme.llft(D);
nomme.llft(E);
trace segment(A,C); trace mediatrice(A,B); trace mediatrice(B,C);
vardef triangle=
  pair aa[],bb[],cc[],dd[];
  numeric k,t;
  t:=0;
      for k=1 upto 5:
      t:=t+1;
	aa[k]=u*(3.5,t*2);
	bb[k]=u*(3.5,-t*2);
	cc[k]=u*(10.5,t*2);
	dd[k]=u*(10.5,-t*2);	
	trace segment(A,aa[k]);
	trace segment(A,bb[k]);
	trace segment(B,cc[k]);
	trace segment(B,dd[k]);
	trace segment(B,aa[k]);
	trace segment(B,bb[k]);
	trace segment(C,cc[k]);
	trace segment(C,dd[k]);
      endfor;
enddef;

triangle;

fin ;
end
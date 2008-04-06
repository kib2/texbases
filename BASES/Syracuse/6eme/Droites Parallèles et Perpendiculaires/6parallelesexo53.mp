input geometriesyr16;

vardef Paveorig(text t)(expr aa,bb,cc,OR)=
  picture pave;
  pave=image(
  NbS:=8;
  Sommet1:=(aa,0,0)+OR;
  Sommet2:=(aa,bb,0)+OR;
  Sommet3:=(0,bb,0)+OR;
  Sommet4:=(0,0,0)+OR;
  Sommet5:=(0,0,cc)+OR;
  Sommet6:=(aa,0,cc)+OR;
  Sommet7:=(aa,bb,cc)+OR;
  Sommet8:=(0,bb,cc)+OR;
%%Faces
  NF:=6;
  Fc[100]:=4;Fc[101]:=1;Fc[102]:=4;Fc[103]:=3;Fc[104]:=2;
  Fc[200]:=4;Fc[201]:=4;Fc[202]:=5;Fc[203]:=8;Fc[204]:=3;
  Fc[300]:=4;Fc[301]:=1;Fc[302]:=6;Fc[303]:=5;Fc[304]:=4;
  Fc[400]:=4;Fc[401]:=5;Fc[402]:=6;Fc[403]:=7;Fc[404]:=8;
  Fc[500]:=4;Fc[501]:=2;Fc[502]:=3;Fc[503]:=8;Fc[504]:=7;
  Fc[600]:=4;Fc[601]:=1;Fc[602]:=2;Fc[603]:=7;Fc[604]:=6;
  DessineObjetColore;
  k:=1;
  for p_=t:
    if color p_:
      p_=Sommet[k];
      k:=k+1;
    fi
  endfor;
  );
pave
enddef;

figureespace(-3u,-10u,6u,3u);
Initialisation(5,45,22,500);
pointilles:="non";
color A,B,C,D,E,F,G,H,I[],J[],K[],L[];
A=(1,2,0);
B=(1.5,-0.4,0);
C=(-0.5,0.5,0);
B:=2/4[B,C];
transparence polygone((2,-1,0),(-2,-1,0),(-2,2.5,0),(2,2.5,0));
trace polygone((2,-1,0),(-2,-1,0),(-2,2.5,0),(2,2.5,0));
trace droite(B,C);
label.top(btex $(d)$ etex,Projette(B));
marque_p:="croix";
nomme.rt(A);
trace 
Paveorig(I1,I2,I3,I4,I5,I6,I7,I8)(2.5,0.75,0.75,2/3[C,A]+0.5*(C-B)) 
scaled0.4;
finespace;
typerepre:="persp";
figureespace(-3u,-15u,6u,0u);
Initialisation(5,45,90,150);
pointilles:="non";
color A,B,C,D,E,F,G,H,I[],J[],K[],L[];
A=(1,2,0);
B=(1.5,-0.4,0);
C=(-0.5,0.5,0);
B:=2/4[B,C];
trace droite(B,C);
label.top(btex $(d)$ etex,Projette(B));
marque_p:="croix";
nomme.rt(A);
trace Paveorig(I1,I2,I3,I4,I5,I6,I7,I8)(2.5,0.75,0.5,3/4[C,A]+0.5*(C-B)) scaled0.4;
finespace;
end

prologues:=2;
input geometriesyr16

numeric r;
r=0.1;

vardef Sommecube(expr aa,bb,cc)=
  picture toto;
  toto=image(
  color A,B,C,D,E,F,G,H;
  trace Cube(A,B,C,D,E,F,G,H);
  path caa,cbb,ccc;
  caa=cercles((0,0,0),(0,r,0),(0,0,0),(0,r,0),(0,0,r));
  cbb=cercles((0,0,0),(-r,0,0),(0,0,0),(-r,0,0),(0,0,r));
  ccc=cercles((0,0,0),(0,r,0),(0,0,0),(0,r,0),(-r,0,0));
  if aa=1:
    remplis caa shifted(1/2[Projette(A),Projette(G)]) withcolor jaune;
  elseif aa=2:
    remplis caa shifted(1/4[Projette(A),Projette(G)]) withcolor jaune;
    remplis caa shifted(3/4[Projette(A),Projette(G)]) withcolor jaune;
  elseif aa=3:
    remplis caa shifted(1/2[Projette(A),Projette(G)]) withcolor jaune;
    remplis caa shifted(1/4[Projette(A),Projette(G)]) withcolor jaune;
    remplis caa shifted(3/4[Projette(A),Projette(G)]) withcolor jaune;
  elseif aa=4:
    remplis caa shifted(1/4[Projette(F),Projette(B)]) withcolor jaune;
    remplis caa shifted(1/4[Projette(A),Projette(G)]) withcolor jaune;
    remplis caa shifted(3/4[Projette(A),Projette(G)]) withcolor jaune;
    remplis caa shifted(3/4[Projette(F),Projette(B)]) withcolor jaune;
  elseif aa=5:
    remplis caa shifted(1/2[Projette(A),Projette(G)]) withcolor jaune;
    remplis caa shifted(1/4[Projette(F),Projette(B)]) withcolor jaune;
    remplis caa shifted(1/4[Projette(A),Projette(G)]) withcolor jaune;
    remplis caa shifted(3/4[Projette(A),Projette(G)]) withcolor jaune;
    remplis caa shifted(3/4[Projette(F),Projette(B)]) withcolor jaune;
  elseif aa=6:
    remplis caa shifted(1/4[Projette(F),Projette(B)]) withcolor jaune;
    remplis caa shifted(1/4[Projette(A),Projette(G)]) withcolor jaune;
    remplis caa shifted(3/4[Projette(A),Projette(G)]) withcolor jaune;
    remplis caa shifted(3/4[Projette(F),Projette(B)]) withcolor jaune;
    remplis caa shifted(1/2[3/4[Projette(F),Projette(B)],3/4[Projette(A),Projette(G)]]) withcolor jaune;
    remplis caa shifted(1/2[1/4[Projette(F),Projette(B)],1/4[Projette(A),Projette(G)]]) withcolor jaune;      
  fi;
  if bb=1:
    remplis cbb shifted(1/2[Projette(B),Projette(H)]) withcolor jaune;
  elseif bb=2:
    remplis cbb shifted(1/4[Projette(B),Projette(H)]) withcolor jaune;
    remplis cbb shifted(3/4[Projette(B),Projette(H)]) withcolor jaune;
  elseif bb=3:
    remplis cbb shifted(1/2[Projette(B),Projette(H)]) withcolor jaune;
    remplis cbb shifted(1/4[Projette(B),Projette(H)]) withcolor jaune;
    remplis cbb shifted(3/4[Projette(B),Projette(H)]) withcolor jaune;
  elseif bb=4:
    remplis cbb shifted(1/4[Projette(G),Projette(C)]) withcolor jaune;
    remplis cbb shifted(1/4[Projette(B),Projette(H)]) withcolor jaune;
    remplis cbb shifted(3/4[Projette(B),Projette(H)]) withcolor jaune;
    remplis cbb shifted(3/4[Projette(G),Projette(C)]) withcolor jaune;
  elseif bb=5:
    remplis cbb shifted(1/2[Projette(B),Projette(H)]) withcolor jaune;
    remplis cbb shifted(1/4[Projette(G),Projette(C)]) withcolor jaune;
    remplis cbb shifted(1/4[Projette(B),Projette(H)]) withcolor jaune;
    remplis cbb shifted(3/4[Projette(B),Projette(H)]) withcolor jaune;
    remplis cbb shifted(3/4[Projette(G),Projette(C)]) withcolor jaune;
  elseif bb=6:
    remplis cbb shifted(1/4[Projette(G),Projette(C)]) withcolor jaune;
    remplis cbb shifted(1/4[Projette(B),Projette(H)]) withcolor jaune;
    remplis cbb shifted(3/4[Projette(B),Projette(H)]) withcolor jaune;
    remplis cbb shifted(3/4[Projette(G),Projette(C)]) withcolor jaune;
    remplis cbb shifted(1/2[3/4[Projette(G),Projette(C)],3/4[Projette(B),Projette(H)]]) withcolor jaune;
    remplis cbb shifted(1/2[1/4[Projette(G),Projette(C)],1/4[Projette(B),Projette(H)]]) withcolor jaune;      
  fi;
  if cc=1:
    remplis ccc shifted(1/2[Projette(F),Projette(H)]) withcolor jaune;
  elseif cc=2:
    remplis ccc shifted(1/4[Projette(F),Projette(H)]) withcolor jaune;
    remplis ccc shifted(3/4[Projette(F),Projette(H)]) withcolor jaune;
  elseif cc=3:
    remplis ccc shifted(1/2[Projette(F),Projette(H)]) withcolor jaune;
    remplis ccc shifted(1/4[Projette(F),Projette(H)]) withcolor jaune;
    remplis ccc shifted(3/4[Projette(F),Projette(H)]) withcolor jaune;
  elseif cc=4:
    remplis ccc shifted(1/4[Projette(E),Projette(G)]) withcolor jaune;
    remplis ccc shifted(1/4[Projette(F),Projette(H)]) withcolor jaune;
    remplis ccc shifted(3/4[Projette(F),Projette(H)]) withcolor jaune;
    remplis ccc shifted(3/4[Projette(E),Projette(G)]) withcolor jaune;
  elseif cc=5:
    remplis ccc shifted(1/2[Projette(F),Projette(H)]) withcolor jaune;
    remplis ccc shifted(1/4[Projette(E),Projette(G)]) withcolor jaune;
    remplis ccc shifted(1/4[Projette(F),Projette(H)]) withcolor jaune;
    remplis ccc shifted(3/4[Projette(F),Projette(H)]) withcolor jaune;
    remplis ccc shifted(3/4[Projette(E),Projette(G)]) withcolor jaune;
  elseif cc=6:
    remplis ccc shifted(1/4[Projette(E),Projette(G)]) withcolor jaune;
    remplis ccc shifted(1/4[Projette(F),Projette(H)]) withcolor jaune;
    remplis ccc shifted(3/4[Projette(F),Projette(H)]) withcolor jaune;
    remplis ccc shifted(3/4[Projette(E),Projette(G)]) withcolor jaune;
    remplis ccc shifted(1/2[3/4[Projette(E),Projette(G)],3/4[Projette(F),Projette(H)]]) withcolor jaune;
    remplis ccc shifted(1/2[1/4[Projette(E),Projette(G)],1/4[Projette(F),Projette(H)]]) withcolor jaune;      
  fi;);
toto
enddef;

pointilles:="oui";
typerepre:="persp";

figureespace(-10u,-10u,10u,10u);
Initialisation(5,30,20,100);
trace Sommecube(6,2,3);
finespace;
end
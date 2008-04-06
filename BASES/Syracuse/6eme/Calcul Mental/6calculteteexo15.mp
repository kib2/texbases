input geometriesyr16

numeric r;
r=0.1;

vardef Sommecube(expr aa,bb,cc)=
  figureespace(-10u,-10u,10u,10u);
  Initialisation(5,30,20,50);
  pointilles:="non";
  typerepre:="persp";
  color A,B,C,D,E,F,G,H;
  trace Cube(A,B,C,D,E,F,G,H);
  path caa,cbb,ccc;
  caa=cercles((0,0,0),(0,r,0),(0,0,0),(0,r,0),(0,0,r));
  cbb=cercles((0,0,0),(-r,0,0),(0,0,0),(-r,0,0),(0,0,r));
  ccc=cercles((0,0,0),(0,r,0),(0,0,0),(0,r,0),(-r,0,0));
  if aa=1:
    remplis caa shifted(1/2[Projette(A),Projette(G)]);
  elseif aa=2:
    remplis caa shifted(1/4[Projette(A),Projette(G)]);
    remplis caa shifted(3/4[Projette(A),Projette(G)]);
  elseif aa=3:
    remplis caa shifted(1/2[Projette(A),Projette(G)]);
    remplis caa shifted(1/4[Projette(A),Projette(G)]);
    remplis caa shifted(3/4[Projette(A),Projette(G)]);
  elseif aa=4:
    remplis caa shifted(1/4[Projette(F),Projette(B)]);
    remplis caa shifted(1/4[Projette(A),Projette(G)]);
    remplis caa shifted(3/4[Projette(A),Projette(G)]);
    remplis caa shifted(3/4[Projette(F),Projette(B)]);
  elseif aa=5:
    remplis caa shifted(1/2[Projette(A),Projette(G)]);
    remplis caa shifted(1/4[Projette(F),Projette(B)]);
    remplis caa shifted(1/4[Projette(A),Projette(G)]);
    remplis caa shifted(3/4[Projette(A),Projette(G)]);
    remplis caa shifted(3/4[Projette(F),Projette(B)]);
  elseif aa=6:
    remplis caa shifted(1/4[Projette(F),Projette(B)]);
    remplis caa shifted(1/4[Projette(A),Projette(G)]);
    remplis caa shifted(3/4[Projette(A),Projette(G)]);
    remplis caa shifted(3/4[Projette(F),Projette(B)]);
    remplis caa shifted(1/2[3/4[Projette(F),Projette(B)],3/4[Projette(A),Projette(G)]]);
    remplis caa shifted(1/2[1/4[Projette(F),Projette(B)],1/4[Projette(A),Projette(G)]]);      
  fi;
  if bb=1:
    remplis cbb shifted(1/2[Projette(B),Projette(H)]);
  elseif bb=2:
    remplis cbb shifted(1/4[Projette(B),Projette(H)]);
    remplis cbb shifted(3/4[Projette(B),Projette(H)]);
  elseif bb=3:
    remplis cbb shifted(1/2[Projette(B),Projette(H)]);
    remplis cbb shifted(1/4[Projette(B),Projette(H)]);
    remplis cbb shifted(3/4[Projette(B),Projette(H)]);
  elseif bb=4:
    remplis cbb shifted(1/4[Projette(G),Projette(C)]);
    remplis cbb shifted(1/4[Projette(B),Projette(H)]);
    remplis cbb shifted(3/4[Projette(B),Projette(H)]);
    remplis cbb shifted(3/4[Projette(G),Projette(C)]);
  elseif bb=5:
    remplis cbb shifted(1/2[Projette(B),Projette(H)]);
    remplis cbb shifted(1/4[Projette(G),Projette(C)]);
    remplis cbb shifted(1/4[Projette(B),Projette(H)]);
    remplis cbb shifted(3/4[Projette(B),Projette(H)]);
    remplis cbb shifted(3/4[Projette(G),Projette(C)]);
  elseif bb=6:
    remplis cbb shifted(1/4[Projette(G),Projette(C)]);
    remplis cbb shifted(1/4[Projette(B),Projette(H)]);
    remplis cbb shifted(3/4[Projette(B),Projette(H)]);
    remplis cbb shifted(3/4[Projette(G),Projette(C)]);
    remplis cbb shifted(1/2[3/4[Projette(G),Projette(C)],3/4[Projette(B),Projette(H)]]);
    remplis cbb shifted(1/2[1/4[Projette(G),Projette(C)],1/4[Projette(B),Projette(H)]]);      
  fi;
  if cc=1:
    remplis ccc shifted(1/2[Projette(F),Projette(H)]);
  elseif cc=2:
    remplis ccc shifted(1/4[Projette(F),Projette(H)]);
    remplis ccc shifted(3/4[Projette(F),Projette(H)]);
  elseif cc=3:
    remplis ccc shifted(1/2[Projette(F),Projette(H)]);
    remplis ccc shifted(1/4[Projette(F),Projette(H)]);
    remplis ccc shifted(3/4[Projette(F),Projette(H)]);
  elseif cc=4:
    remplis ccc shifted(1/4[Projette(E),Projette(G)]);
    remplis ccc shifted(1/4[Projette(F),Projette(H)]);
    remplis ccc shifted(3/4[Projette(F),Projette(H)]);
    remplis ccc shifted(3/4[Projette(E),Projette(G)]);
  elseif cc=5:
    remplis ccc shifted(1/2[Projette(F),Projette(H)]);
    remplis ccc shifted(1/4[Projette(E),Projette(G)]);
    remplis ccc shifted(1/4[Projette(F),Projette(H)]);
    remplis ccc shifted(3/4[Projette(F),Projette(H)]);
    remplis ccc shifted(3/4[Projette(E),Projette(G)]);
  elseif cc=6:
    remplis ccc shifted(1/4[Projette(E),Projette(G)]);
    remplis ccc shifted(1/4[Projette(F),Projette(H)]);
    remplis ccc shifted(3/4[Projette(F),Projette(H)]);
    remplis ccc shifted(3/4[Projette(E),Projette(G)]);
    remplis ccc shifted(1/2[3/4[Projette(E),Projette(G)],3/4[Projette(F),Projette(H)]]);
    remplis ccc shifted(1/2[1/4[Projette(E),Projette(G)],1/4[Projette(F),Projette(H)]]);      
  fi;
  finespace;
enddef;

Sommecube(6,2,3);
Sommecube(6,1,3);
Sommecube(5,4,1);
Sommecube(5,3,6);
Sommecube(6,3,2);
Sommecube(6,5,4);
Sommecube(5,3,1);
Sommecube(5,4,1);
Sommecube(5,6,4);
Sommecube(5,3,6);
end
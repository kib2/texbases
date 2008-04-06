input geometriesyr16;

vardef cubegrillage(expr nbcase)=
  picture cubegri;
  color St[];
  numeric NbC;
  NbC=nbcase;
  cubegri=image(
    trace Cube(St1,St2,St3,St4,St5,St6,St7,St8);
    for k=1 upto (nbcase-1):
      trace chemin((k/nbcase)[St1,St2],(k/nbcase)[St6,St7],(k/nbcase)[St5,St8]);
      trace chemin((k/nbcase)[St1,St6],(k/nbcase)[St2,St7],(k/nbcase)[St3,St8]);
      trace chemin((k/nbcase)[St6,St5],(k/nbcase)[St7,St8],(k/nbcase)[St2,St3]);
    endfor;
    );
  cubegri
enddef;

vardef caseX(expr aa,bb)=
  path casex;
  casex=buildcycle(
    droite((aa/NbC)[St1,St2],(aa/NbC)[St6,St7]),
    droite((bb/NbC)[St1,St6],(bb/NbC)[St2,St7]),
    droite(((aa+1)/NbC)[St1,St2],((aa+1)/NbC)[St6,St7]),
    droite(((bb+1)/NbC)[St1,St6],((bb+1)/NbC)[St2,St7])
    );
  casex
enddef;

vardef caseY(expr aa,bb)=
  path casex;
  casex=buildcycle(
    droite((aa/NbC)[St2,St3],(aa/NbC)[St7,St8]),
    droite((bb/NbC)[St2,St7],(bb/NbC)[St3,St8]),
    droite(((aa+1)/NbC)[St2,St3],((aa+1)/NbC)[St7,St8]),
    droite(((bb+1)/NbC)[St2,St7],((bb+1)/NbC)[St3,St8])
    );
  casex
enddef;

vardef caseZ(expr aa,bb)=
  path casex;
  casex=buildcycle(
    droite((aa/NbC)[St6,St7],(aa/NbC)[St5,St8]),
    droite((bb/NbC)[St6,St5],(bb/NbC)[St7,St8]),
    droite(((aa+1)/NbC)[St6,St7],((aa+1)/NbC)[St5,St8]),
    droite(((bb+1)/NbC)[St6,St5],((bb+1)/NbC)[St7,St8])
    );
  casex
enddef;

figureespace(-10u,-10u,10u,10u);
Initialisation(5,30,25,800);
pointilles:="non";
trace cubegrillage(5);
remplis caseX(1,2);
fin;
figureespace(-10u,-10u,10u,10u);
Initialisation(5,30,25,1250);
pointilles:="non";
trace cubegrillage(4);
remplis caseX(1,2);
remplis caseY(2,1);
remplis caseZ(2,1);
fin;
figureespace(-10u,-10u,10u,10u);
Initialisation(5,30,25,1250);
pointilles:="non";
trace cubegrillage(5);
remplis caseX(1,1);
remplis caseY(1,2);
remplis caseY(3,3);
remplis caseZ(2,2);
fin;
figureespace(-10u,-10u,10u,10u);
Initialisation(5,30,25,1250);
pointilles:="non";
trace cubegrillage(4);
remplis caseX(1,1);
remplis caseX(2,2);
remplis caseY(3,0);
remplis caseZ(1,2);
fin;
figureespace(-10u,-10u,10u,10u);
Initialisation(5,30,25,1250);
pointilles:="non";
trace cubegrillage(4);
remplis caseX(0,0);
remplis caseX(1,2);
remplis caseX(2,1);
remplis caseY(1,1);
remplis caseY(2,2);
remplis caseY(3,0);
remplis caseZ(1,2);
remplis caseZ(2,1);
fin;
figureespace(-10u,-10u,10u,10u);
Initialisation(5,30,25,1250);
pointilles:="non";
trace cubegrillage(6);
remplis caseX(1,0);
remplis caseX(1,2);
remplis caseX(1,4);
remplis caseX(2,1);
remplis caseX(2,3);
remplis caseX(4,1);
remplis caseX(4,3);
remplis caseY(1,0);
remplis caseY(1,2);
remplis caseY(1,4);
remplis caseY(2,1);
remplis caseY(2,3);
remplis caseY(4,1);
remplis caseY(4,3);
remplis caseZ(1,0);
remplis caseZ(1,2);
remplis caseZ(1,4);
remplis caseZ(2,1);
remplis caseZ(2,3);
remplis caseZ(4,1);
remplis caseZ(4,3);
fin;
end
  
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
  path casey;
  casey=buildcycle(
    droite((aa/NbC)[St2,St3],(aa/NbC)[St7,St8]),
    droite((bb/NbC)[St2,St7],(bb/NbC)[St3,St8]),
    droite(((aa+1)/NbC)[St2,St3],((aa+1)/NbC)[St7,St8]),
    droite(((bb+1)/NbC)[St2,St7],((bb+1)/NbC)[St3,St8])
    );
  casey
enddef;

vardef caseZ(expr aa,bb)=
  path casez;
  casez=buildcycle(
    droite((aa/NbC)[St6,St7],(aa/NbC)[St5,St8]),
    droite((bb/NbC)[St6,St5],(bb/NbC)[St7,St8]),
    droite(((aa+1)/NbC)[St6,St7],((aa+1)/NbC)[St5,St8]),
    droite(((bb+1)/NbC)[St6,St5],((bb+1)/NbC)[St7,St8])
    );
  casez
enddef;

figureespace(-10u,-10u,10u,10u);
Initialisation(5,30,40,1000);
pointilles:="non";
trace cubegrillage(3);
remplis caseX(0,0);
remplis caseX(1,0) withcolor rouge;
remplis caseY(1,1) withcolor jaune;
remplis caseY(2,1) withcolor bleu;
remplis caseY(1,2);
remplis caseY(2,2);
remplis caseZ(0,1) withcolor rouge;
remplis caseZ(0,2) withcolor bleu;
remplis caseZ(2,2) withcolor jaune;
trace cubegrillage(3) withpen pencircle scaled1.25bp;
fin;
figureespace(-10u,-10u,10u,10u);
Initialisation(5,45,30,1250);
pointilles:="non";
trace cubegrillage(4);
remplis caseX(1,1) withcolor bleu;
remplis caseX(1,2);
remplis caseX(1,3);
remplis caseX(3,3) withcolor jaune;
remplis caseY(0,0) withcolor vert;
remplis caseY(0,3) withcolor rouge;
remplis caseY(1,0) withcolor orange;
remplis caseY(1,2) withcolor vert;
remplis caseY(3,1) withcolor orange;
remplis caseY(3,2) withcolor bleu;
remplis caseZ(1,0);
remplis caseZ(1,1);
remplis caseZ(1,2) withcolor jaune;
remplis caseZ(2,1) withcolor rouge;
trace cubegrillage(4) withpen pencircle scaled1.25bp;
fin;
figureespace(-10u,-10u,10u,10u);
Initialisation(5,45,30,1250);
pointilles:="non";
trace cubegrillage(4);
remplis caseX(0,0) withcolor vert;
remplis caseX(0,1);
remplis caseX(0,2) withcolor orange;
remplis caseX(1,1);
remplis caseX(2,2) withcolor orange;
remplis caseX(3,0) withcolor rouge;
remplis caseY(3,0) withcolor vert;
remplis caseY(3,1) withcolor violet;
remplis caseY(3,2);
remplis caseY(3,3);
remplis caseZ(1,2) withcolor rouge;
remplis caseZ(3,3) withcolor violet;
trace cubegrillage(4) withpen pencircle scaled1.25bp;
fin;
figureespace(-10u,-10u,10u,10u);
Initialisation(5,45,30,1250);
pointilles:="non";
trace cubegrillage(5);
remplis caseX(4,3) withcolor jaune;
remplis caseY(0,4) withcolor bleu;
remplis caseY(1,4) withcolor rouge;
remplis caseY(2,2) withcolor violet;
remplis caseY(3,4) withcolor vert;
remplis caseZ(2,1) withcolor rouge;
remplis caseZ(2,2) withcolor vert;
remplis caseZ(3,2) withcolor bleu;
remplis caseZ(3,4) withcolor violet;
remplis caseZ(4,4) withcolor jaune;
trace cubegrillage(5) withpen pencircle scaled1.25bp;
fin;
end
  
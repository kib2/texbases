input geometriesyr16;

vardef comptage(expr ll,hh,pp)=
  save compt;
  picture compt;
  color A,B,C,D,E,F,G,H;
  color pts[];
  pts1=(1/hh)[D,E];
  pts2=(1/hh)[C,H];
  compt=image(
    trace Pave(A,B,C,D,E,F,G,H)(pp/4,ll/4,hh/4) withcolor gris;
    %horizontal longueur
    trace segment(pts1+(1/ll)*(H-E),pts2);
    trace segment(pts1+(1/pp)*(B-C),pts2+(1/pp)*(B-C));
    trace segment((1/pp)[C,B],(1/pp)[D,A]+(1/ll)*(C-D));
    trace chemin((1/hh)[C,H],C,(1/pp)[C,B]);
    for k=1 upto ll:
      trace segment((k/ll)[pts1,pts2],(k/ll)[pts1,pts2]+(1/pp)*(B-C));
      trace segment((k/ll)[pts1,pts2]+(1/pp)*(B-C),(k/ll)[pts1,pts2]+(1/pp)*(B-C)+(1/hh)*(D-E));
    endfor;
    %horizontal profondeur
    trace segment(pts1+(1/pp)*(A-D),pts1+A-D);
    trace segment(pts1+(1/ll)*(C-D),pts1+A-D+(1/ll)*(C-D));
    trace segment((1/ll)[A,B],(1/ll)[A,B]+((pp-1)/pp)*(D-A));
    trace chemin((1/hh)[A,F],A,(1/ll)[A,B]);
    for k=0 upto (pp-2):
      trace segment((1/hh)[A,F]+(k/pp)*(D-A),(1/hh)[A,F]+(k/pp)*(D-A)+(1/ll)*(B-A));
      trace segment((1/hh)[A,F]+(k/pp)*(D-A)+(1/ll)*(B-A),(k/pp)*(D-A)+(1/ll)[A,B]);
    endfor;
    %vertical
    trace segment((1/pp)[E,F],(1/pp)[E,F]+((hh-1)/hh)*(D-E));
    trace segment((1/ll)[E,H],(1/ll)[E,H]+((hh-1)/hh)*(D-E));
    trace segment((1/pp)[E,F]+(1/ll)*(H-E),(1/pp)[E,F]+(1/ll)*(H-E)+((hh-1)/hh)*(D-E));
    trace chemin((1/pp)[E,F],E,(1/ll)[E,H]);
    for k=0 upto (hh-2):
      trace segment((1/pp)[E,F]+(k/hh)*(D-E),(1/pp)[E,F]+(k/hh)*(D-E)+(1/ll)*(H-E));
      trace segment((1/ll)[E,H]+(k/hh)*(D-E),(1/ll)[E,H]+(k/hh)*(D-E)+(1/pp)*(F-E));
    endfor;
    );
  compt
enddef;

figureespace(-10u,-10u,10u,10u);
Initialisation(5,30,22,500);
trace comptage(1,1,1);
finespace;

figureespace(-10u,-10u,10u,10u);
Initialisation(5,30,22,400);
trace comptage(6,4,5);
finespace;

figureespace(-10u,-10u,10u,10u);
Initialisation(5,30,22,500);
trace comptage(4,8,3);
finespace;

figureespace(-10u,-10u,10u,10u);
Initialisation(5,60,40,500);
trace comptage(7,4,2);
finespace;

end
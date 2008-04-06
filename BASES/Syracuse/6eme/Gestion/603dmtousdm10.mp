input macrostat2;

verbatimtex
%&latex
\documentclass{article}
\usepackage[latin1]{inputenc}
\usepackage[frenchb]{babel}
\begin{document}
etex
%%

beginfig(1);
  cadre((0,0),(12,6));
  draw grille(0.5) withcolor orange;
  x.u=1cm;
  y.u=0.5cm;
  origine:=(1,0.5);
  legendex(btex Heure etex);
  legendey(btex Température (en \degres C) etex);
  graduax(btex 1 etex,1);
  graduay(btex 1 etex,1);
  draw axes;
  marque_releve:="poly";
  draw releve((0,2),(1,2),(2,1.25),(3,1),(4,1),(5,0.5),(6,1),(7,2),(8,4),(9,5),(10,8),(11,10)) withcolor violet;
  label.llft(btex 0 etex,(1cm,0.5cm));
endfig;
end
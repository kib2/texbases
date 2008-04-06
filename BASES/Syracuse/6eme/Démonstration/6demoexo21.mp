% -*- coding: iso-8859-15 -*-
% fichier quadimpos.mp
% Time-stamp: <2007-03-07T09:29:02 (cet) [yvon sur hypatie]>
% création : 2007-03-07T08:15:02+0100
%
% d'après ERNST (Bruno), L'aventure des figures impossibles
% Taschen, © 1990
% Traduction française de « Avonturen met onmogelijke figuren »
% Amsterdam, Aramith © 1985 J.A.F. de Rijk
%
% codage et adaptation : Le TeXnicien de surface

numeric haut, large, u, epais[], ep_trait;
u = 1cm;
haut = 10u;
large= 12u;
epais7 = haut/4; % sens descendant
epais1 = haut/4; % sens montant
epais2 = haut/4; % verticale

ep_trait = 0.5pt; % épaisseur du « trait de crayon »

pair montant, descendant;
montant   = unitvector(1,0.5);
descendant = unitvector(1,-0.5);

color coul[];
% couleurs des « faces »
coul1 = 0.60*white; 
coul2 = 0.85*white;
coul3 = white;
% couleur des « traits de crayon »
coul4 = black;

beginfig(1);
% points de base (un trapèze)  
  z0 = origin;
  z1 = z0 shifted (descendant scaled large);
  z2 = z0 shifted (haut*up);
  z3 = z2 shifted (montant scaled large);
%  draw z0--z1--z3--z2--cycle; % pour construction
%  dotlabels(0,1,2,3); % pour construction

% points de la figure avec points intermédiaires   
  z4 = z2 shifted (descendant scaled epais7);
  z5-z4 = whatever*montant; z5-z1 = whatever*up;
  z6-z5 = whatever*descendant; z6-z2 = whatever*(z2-z3);
  z7-z6 = whatever*up; z7-z0 = whatever*descendant;
  z8-z7 = whatever*montant; z8-z1 = whatever*up;
  z10 = (z4 shifted (z0-z2)) shifted (epais2*up);
  z11-z10=epais1*montant;
  z12a-z11 = whatever*up; z12a-z4 = whatever*(z5-z4);
  z12 = z12a shifted (epais2*down);
  z13-z12 = whatever*montant; z13-z7 = whatever*up;
  z15a-z10 = whatever*descendant; z15a-z7 = whatever*up;
  z15 = z15a shifted (-epais7*descendant);
  z16-z15 = whatever*up; z16-z12 = whatever*montant;
  z17-z11 = whatever*descendant; z17-z15 = whatever*up;

% coloriage puis traçage  
  fill z2--z4--z5--z6--cycle withcolor coul2;
  fill z10--z15--z17--z11--cycle withcolor coul2;
  fill z2--z0--z7--z15a--z13--z16--z15--z10--z4--cycle withcolor coul1;
  fill z7--z8--z5--z4--z10--z11--z12--z13--cycle withcolor coul3;

  drawoptions(withcolor coul4);
  pickup pencircle scaled ep_trait;  
  draw z2--z4--z5--z6--cycle;   
  draw z4--z10--z11--z12--z13--z7;
  draw z2--z0--z7--z8--z5;
  draw z10--z15--z16;
  draw z11--z17;
  
endfig;

end
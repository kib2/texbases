verbatimtex
%&latex
\documentclass{article}
\usepackage{lmodern}
\begin{document}
etex

input geometriesyr16;

vardef axegradue(expr lon,pas)=
  save $;
  picture $;
  $=image(
    x.u:=lon*cm;
    y.u:=0.5cm;
    quad.u:=4cm;
    origine((0.1,0));
    trace droite(pp(0,1),pp(3,1));
    for k=0 upto 110:
      trace segment(pp(0,0.5),pp(0,1.5)) shifted(k*(pp(pas,0)-pp(0,0)));
    endfor;
    );
  $
enddef;

vardef abscisse(expr nom,sci)=
  save $;
  picture $;
  $=image(
    drawarrow pp(sci,-0.5)--pp(sci,0.5);
    label.bot(nom,pp(sci,-0.5));
    );
  $
enddef;
figure(0,-u,8.4u,2u);
trace axegradue(4.5,1/9);
label.top(btex 0 etex,pp(0,2));
label.top(btex 1 etex,pp(1,2));
trace abscisse(btex e etex,2/9);
trace abscisse(btex f etex,4/9);
trace abscisse(btex g etex,7/9);
trace abscisse(btex h etex,12/9);
fin;
end

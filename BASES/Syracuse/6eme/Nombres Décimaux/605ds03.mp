verbatimtex
%&latex
\documentclass{article}
\usepackage{lmodern}
\begin{document}
etex

input geometriesyr16;

vardef axegradue=
  save $;
  picture $;
  $=image(
    x.u:=2cm;
    y.u:=0.5cm;
    quad.u:=2cm;
    origine((0.1,0));
trace droite(pp(0,1),pp(3,1));
for k=0 upto 5:
  trace segment(pp(0,0),pp(0,2)) shifted(k*(pp(1,0)-pp(0,0)));
endfor;
for k=0 upto 110:
  trace segment(pp(0,0.5),pp(0,1.5)) shifted(k*(pp(0.5,0)-pp(0,0)));
endfor;
for k=0 upto 50:
  trace segment(pp(0,0.75),pp(0,1.25)) shifted(k*(pp(0.1,0)-pp(0,0)));
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
trace axegradue;
label.top(btex 3 etex,pp(1,2));
label.top(btex 4 etex,pp(2,2));
trace abscisse(btex e etex,0.3);
trace abscisse(btex f etex,1.4);
trace abscisse(btex g etex,2.5);
trace abscisse(btex h etex,3.6);
fin;

figure(0,-u,8.4u,2u);
trace axegradue;
label.top(btex 2,6 etex,pp(1,2));
label.top(btex 2,8 etex,pp(3,2));
fin;
end

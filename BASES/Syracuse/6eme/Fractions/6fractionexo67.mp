verbatimtex
%&latex
\documentclass{article}
\usepackage{lmodern}
\usepackage{amsmath}
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
    for k=0 upto 50:
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
figure(0,-u,12.5u,2u);
trace axegradue(3.25,1/6);
label.top(btex 0 etex,pp(0,2));
label.top(btex 1 etex,pp(1,2));
fin;
figure(0,-1.5u,12.5u,2u);
trace axegradue(3.25,1/6);
label.top(btex 0 etex,pp(0,2));
label.top(btex 1 etex,pp(1,2));
trace abscisse(btex $\dfrac12$ etex,3/6);
trace abscisse(btex $\dfrac13$ etex,2/6);
trace abscisse(btex $\dfrac52$ etex,15/6);
trace abscisse(btex $\dfrac{13}6$ etex,13/6);
trace abscisse(btex $\dfrac73$ etex,14/6);
trace abscisse(btex $\dfrac{12}6$ etex,12/6);
trace abscisse(btex $\dfrac{10}3$ etex,20/6);
fin;
end

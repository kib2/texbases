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
figure(0,-u,8.4u,2u);
trace axegradue(2,1/4);
label.top(btex 0 etex,pp(0,2));
label.top(btex 1 etex,pp(1,2));
fin;
figure(0,-1.5u,8.4u,2u);
trace axegradue(2,1/4);
label.top(btex 0 etex,pp(0,2));
label.top(btex 1 etex,pp(1,2));
trace abscisse(btex $\dfrac12$ etex,1/2);
trace abscisse(btex $\dfrac32$ etex,3/2);
trace abscisse(btex $\dfrac72$ etex,7/2);
trace abscisse(btex $\dfrac14$ etex,1/4);
trace abscisse(btex $\dfrac34$ etex,3/4);
trace abscisse(btex $\dfrac74$ etex,7/4);
trace abscisse(btex $\dfrac52$ etex,5/2);
trace abscisse(btex $\dfrac{12}4$ etex,12/4);
fin;
end

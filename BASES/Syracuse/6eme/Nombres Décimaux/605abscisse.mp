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
    for k=0 upto 8:
      trace segment(pp(0,0),pp(0,2)) shifted(k*(pp(1,0)-pp(0,0)));
    endfor;
    %for k=0 upto 110:
    %  trace segment(pp(0,0.5),pp(0,1.5)) shifted(k*(pp(0.5,0)-pp(0,0)));
    %endfor;
    for k=0 upto 80:
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

%nouvel exercice
figure(0,-u,16.4u,2u);
trace axegradue;
label.top(btex 6 etex,pp(3,2));
label.top(btex 6,1 etex,pp(4,2));
fin;
figure(0,-u,16.4u,2u);
trace axegradue;
label.top(btex 0 etex,pp(0,2));
label.top(btex 0,5 etex,pp(5,2));
fin;
end

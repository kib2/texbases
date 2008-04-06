input macrostat2;
beginfig(1);
  cadre((0,0),(8.5,6));
  draw grille(0.1) withcolor gris;
  origine:=(1,2);
%  fill z.so*cm--(x.ne*cm,0)--(x.ne*cm,ypart(origine)*cm)--(x.so*cm,ypart(origine)*cm)--cycle withcolor blanc;
  x.u=1cm;
  y.u=0.25cm;
  valeur1=0;
  intervallex=1;
  legendey(btex Nombre de visiteurs (en millions) etex);
  drawarrow placepoint(0,0)--(x.ne*cm,ypart(origine)*cm) withpen pencircle scaled 1.5bp;
  drawarrow placepoint(0,0)--(xpart(origine)*cm,y.ne*cm) withpen pencircle scaled 1.5bp;
  graduay(btex 0 etex,0);
  graduay(btex 2 etex,2);
  graduay(btex 4 etex,4);
  graduay(btex 6 etex,6);
  graduay(btex 8 etex,8);
  graduay(btex 10 etex,10);
  graduay(btex 12 etex,12);
  marque_histo:="blanc";
  draw histo((0,12),(1,5.6),(2,4.4),(3,4),(4,0));
  picture texte[];
  texte1=image(
    label.lft(btex Disneyland etex,placepoint(1.5,-0.5));
    );
  draw texte1 rotatedabout(placepoint(1.5,-0.5),40);
  texte2=image(
    label.lft(btex Tour Eiffel etex,placepoint(2.5,-0.5));
    );
  draw texte2 rotatedabout(placepoint(2.5,-0.5),40);
  texte3=image(
    label.lft(btex Le Louvre etex,placepoint(3.5,-0.5));
    );
  draw texte3 rotatedabout(placepoint(3.5,-0.5),40);
  texte4=image(
    label.lft(btex Cit\'e des Sciences etex,placepoint(4.5,-0.5));
    );
  draw texte4 rotatedabout(placepoint(4.5,-0.5),40);
  texte5=image(
    label.lft(btex Parc Ast\'erix etex,placepoint(5.5,-0.5));
    );
  draw texte5 rotatedabout(placepoint(5.5,-0.5),40);
  texte6=image(
    label.lft(btex Le Futuroscope etex,placepoint(6.5,-0.5));
    );
  draw texte6 rotatedabout(placepoint(6.5,-0.5),40);
endfig;
end
  
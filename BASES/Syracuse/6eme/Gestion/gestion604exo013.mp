input macrostat2;
beginfig(1);
  cadre((0,0),(8,7));
  draw papiermillimetre withcolor orange;
  x.u:=5mm;
  y.u:=1cm;
  label.llft(btex $O$ etex,placepoint(0,0));
  draw axes;
  graduax(btex 2 etex,2);
  graduay(btex 1 etex,1);
  legendex(btex Heure etex);
  legendey(btex Hauteur d'eau (en m) etex);
  marque_releve:="courbe";
  draw releve((0,2.6),(2,1.2),(4,2.2),(6,4),(8,4.7),(10,4.15),(12,2.9)) withcolor violet;
endfig;
end
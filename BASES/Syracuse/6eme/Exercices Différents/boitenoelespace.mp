input espacefr;
color jaune;
jaune=red+green;
beginfig(1);
  rotZ:=30;
  rotX:=-30;
  rotY:=-5;
  sommet1:=(0,0,0);
  sommet2:=(1,0,0);
  sommet3:=(1,1,0);
  sommet4:=(0,1,0);
  sommet5:=(0,0,1);
  sommet6:=(1,0,1);
  sommet7:=(1,1,1);
  sommet8:=(0,1,1);
  sommet9:=sommet8+1/2(sommet6-sommet2);
  sommet10:=sommet3+1/2(sommet6-sommet2);
  sommet11-sommet10=sommet9-sommet6;
  sommet12-sommet3=sommet9-sommet6;
  for i:=1 upto 12:
    sommet[i]:=rotaZ(sommet[i],rotZ);
    sommet[i]:=rotaX(sommet[i],rotX);
    sommet[i]:=rotaY(sommet[i],rotY);    
  endfor;
  for i:=1 upto 12:
    z[i]=getPixel(10*sommet[i]);
  endfor;
  z13=(z6--z9) intersectionpoint (z5--z8);
  fill Face(2,3,6) withcolor 0.8red;
  fill Face(1,2,6,5) withcolor 0.9red;
  fill (z6--z5--z13--cycle) withcolor red;
  fill Face(6,9,11,10) withcolor jaune;
  fill Face(6,10,3) withcolor 0.9jaune;
  fill Face(3,10,11,12) withcolor 0.8jaune;
  draw Face(2,3,6);
  draw Face(1,2,6,5);
  draw z5--z13;
  draw Face(3,4,8) dashed evenly;
  draw z6--z8--z13 dashed evenly;
  draw Arete(9,8,12) dashed evenly;
  draw Arete(6,9);
  draw Arete(6,10,3);
  draw Arete(9,11,10);
  draw Arete(3,12,11);
  draw Arete(1,4) dashed evenly;
endfig;
end
  

input constantes;
input geometriepoint;
input papiers;
input espaceisom;

beginfig(0);
  defcube;
  draw tour(cubeplein,1,1,1);
endfig;
beginfig(1);
  defcube;
  picture combo[];
  combo1=tour(cubeplein,4,5,5);
  combo2=tour(cubeplein,1,5,4);
  combo3=tour(cubeplein,1,4,1);
  draw combo1;
  draw combo2 shifted((0,4)*cm);
  draw combo3 shifted((vectrans+4*vectransb+(0,4))*cm);
endfig;
beginfig(2);
  defcube;
  picture combo[];
  combo1=tour(cubeplein,3,5,5);
  combo2=tour(cubeplein,2,5,3);
  combo3=tour(cubeplein,2,3,2);
  draw combo1;
  draw combo2 shifted((0,3)*cm);
  draw combo3 shifted((vectrans+4*vectransb+(0,4))*cm);
  currentpicture:=currentpicture shifted(5*vectrans*cm);
endfig;
beginfig(3);
  defcube;
  picture combo[];
  combo1=tour(cubeplein,2,5,5);
  combo2=tour(cubeplein,3,5,2);
  combo3=tour(cubeplein,3,2,3);
  draw combo1;
  draw combo2 shifted((0,2)*cm);
  draw combo3 shifted((vectrans+4*vectransb+(0,4))*cm);
  currentpicture:=currentpicture shifted(5*vectrans*cm);
endfig;
beginfig(4);
  defcube;
  picture combo[];
  combo1=tour(cubeplein,4,5,5);
  combo2=tour(cubeplein,1,4,1);
  combo3=tour(cubeplein,1,5,3);
  combo4=tour(cubeplein,1,4,1);
  draw combo1;
  draw combo2 shifted(((0,4)+vectrans)*cm);
  draw combo3 shifted((vectrans+(0,3))*cm);
  draw combo4 shifted((4*vectransb+(0,4))*cm);
endfig;
beginfig(5);
  defcube;
  picture combo[];
  combo1=tour(cubeplein,3,5,5);
  combo2=tour(cubeplein,1,4,1);
  combo3=tour(cubeplein,1,5,3);
  combo4=tour(cubeplein,1,4,1);
  combo5=tour(cubeplein,1,3,2);
  combo6=tour(cubeplein,1,5,1);
  draw combo1;
  draw combo2 shifted(((0,3)+vectrans)*cm);
  draw combo3 shifted((vectrans+(0,2))*cm);
  draw combo4 shifted((4*vectransb+(0,3))*cm);
  draw combo5 shifted((2*vectrans+(0,4))*cm);
  draw combo6 shifted((vectrans+vectransb+(0,3))*cm);
  draw combo5 shifted((vectrans+2*vectransb+(0,3))*cm);
endfig;
beginfig(6);
  defcube;
  picture combo[];
  combo1=tour(cubeplein,2,5,5);
  combo2=tour(cubeplein,1,4,1);
  combo3=tour(cubeplein,1,5,3);
  combo4=tour(cubeplein,1,4,1);
  combo5=tour(cubeplein,1,3,2);
  combo6=tour(cubeplein,1,5,1);
  combo7=tour(cubeplein,1,2,2);
  draw combo1;
  draw combo2 shifted(((0,2)+vectrans)*cm);
  draw combo3 shifted((vectrans+(0,1))*cm);
  draw combo4 shifted((4*vectransb+(0,2))*cm);
  draw combo5 shifted((2*vectrans+(0,3))*cm);
  draw combo6 shifted((vectrans+vectransb+(0,2))*cm);
  draw combo5 shifted((vectrans+2*vectransb+(0,2))*cm);
  draw combo7 shifted((3*vectrans+(0,4))*cm);
  draw combo7 shifted((3*vectransb+(0,4))*cm);
endfig;
beginfig(7);
  defcube;
  picture combo[];
  combo1=tour(cubeplein,5,5,1);
  combo2=tour(cubeplein,4,5,1);
  combo3=tour(cubeplein,3,5,1);
  combo4=tour(cubeplein,2,5,1);
  combo5=tour(cubeplein,1,5,1);
  for j=1 upto 5:
    draw combo[j] shifted((j-1)*vectransb*cm);
  endfor
endfig;
beginfig(8);
  defcube;
  picture combo[];
  combo1=tour(cubeplein,2,5,5);
  combo2=tour(cubeplein,2,3,3);
  combo3=tour(cubeplein,1,1,1);
  draw combo1;
  draw combo2 shifted((2*vectrans+(0,2))*cm);
  draw combo3 shifted(((0,2)+4*vectrans+4*vectransb)*cm);
endfig;
beginfig(9);
  defcube;
  picture combo[];
  combo1=tour(cubeplein,2,3,5);
  combo2=tour(cubeplein,1,1,5);
  draw combo1;
  draw combo2 shifted((2*vectrans+(0,2))*cm);
  draw combo1 shifted((0,3)*cm);
endfig;

end
  
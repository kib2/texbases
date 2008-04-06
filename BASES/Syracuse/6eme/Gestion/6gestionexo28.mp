input geometriesyr16;
input TEX;
figure(0,0,6u,5u);
trace grille(0.5) withcolor white;
origine((1,1));
drawarrow pp(0,0)--pp(11,0);
drawarrow pp(0,0)--pp(0,9);
for k=1 upto 7:
  trace segment(pp(0,k),pp(15,k)) dashed evenly;
endfor;
label.lft(btex 0 etex,pp(0,0));
label.lft(btex 1 etex,pp(0,1));
label.lft(btex 2 etex,pp(0,2));
label.lft(btex 3 etex,pp(0,3));
label.lft(btex 4 etex,pp(0,4));
label.lft(btex 5 etex,pp(0,5));
label.lft(btex 6 etex,pp(0,6));
label.lft(btex 7 etex,pp(0,7));
for k=0 upto 4:
  label.bot(TEX(""&decimal(k)&""),pp(k+1,0));
endfor;
marque_r:=2;
for k=1 step 2 until 4:
  trace marquesegment(pp(k,0),pp(k+1,0));
endfor;
label.rt(btex Nombre d'\'equipes etex,pp(0,8));
label.bot(btex Nombre de buts etex,pp(8,0));
drawoptions(withpen pencircle scaled 1.5bp);
trace pp(1,0)--pp(1,2);
trace pp(2,0)--pp(2,3);
trace pp(3,0)--pp(3,6);
trace pp(4,0)--pp(4,4);
trace pp(5,0)--pp(5,1);
drawoptions();
fin;
end
input geometriesyr16;
input TEX;
figure(0,0,8u,4u);
trace grille(0.5) withcolor white;
origine((1,1));
drawarrow pp(0,0)--pp(15,0);
drawarrow pp(0,0)--pp(0,7);
for k=1 upto 5:
  trace segment(pp(0,k),pp(15,k)) dashed evenly;
endfor;
label.lft(btex 1 etex,pp(0,1));
for k=0 upto 9:
  label.bot(TEX(""&decimal(8+k)&""),pp(k+1,0));
endfor;
marque_r:=2;
for k=1 step 2 until 9:
  trace marquesegment(pp(k,0),pp(k+1,0));
endfor;
label.rt(btex Effectifs etex,pp(0,6.5));
label.bot(btex Notes etex,pp(13,0));
drawoptions(withpen pencircle scaled 1.5bp);
trace pp(1,0)--pp(1,2);
trace pp(2,0)--pp(2,3);
drawoptions();
fin;
end
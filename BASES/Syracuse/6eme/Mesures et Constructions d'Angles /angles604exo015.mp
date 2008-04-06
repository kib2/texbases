input geometriesyr16;
figure(0,0,10u,5u);
trace papiermillimetre withcolor orange;
origine((1,1));
trace axes;
unites(1,0.1);
label.ulft(btex Longueur du segment en cm etex,placepoint(9,0));
label.rt(btex Mesure de l'angle en degr\'e etex,placepoint(0,35));
for k=1 upto 4:
  dotlabel.bot(format("%10f",k),placepoint(k,0));
endfor;
for k=10 step 10 until 30:
  dotlabel.lft(format("%10f",k),placepoint(0,k));
endfor;
fin;
end
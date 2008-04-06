input geometriesyr16
labeloffset:=labeloffset*2;
figure(-0.5u,0,12.5u,u);
trace grille(0.25) withcolor blanc;
trace segment(pp(0,1),pp(48,1)) withpen pencircle scaled1.5bp;
for k=0 step 8 until 44:
  trace marquesegment(pp(k,1),pp(k+4,1));
endfor;
trace marquedemidroite(pp(48,1),pp(0,1));
label.top(btex 0 etex,pp(0,1));
label.top(btex 12 etex,pp(48,1));
fin;
figure(-0.5u,0,12.5u,u);
trace grille(0.25) withcolor blanc;
trace segment(pp(0,1),pp(48,1)) withpen pencircle scaled1.5bp;
for k=0 step 8 until 44:
  trace marquesegment(pp(k,1),pp(k+4,1));
endfor;
label.top(btex A etex,pp(16,1));
label.top(btex 0 etex,pp(0,1));
label.top(btex 12 etex,pp(48,1));
trace marquedemidroite(pp(48,1),pp(0,1));
fin;
end
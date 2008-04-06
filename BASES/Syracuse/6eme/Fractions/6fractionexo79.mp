input geometriesyr16
labeloffset:=labeloffset*2;
figure(0,0,5u,5u);
pair C,D;
C=u*(0.5,0.5);
D-C=u*(3,0);
trace segment(C,D);
trace marquesegment(C,D);
for k=1 step 2 until 5:
  trace marquesegment((k/7)[C,D],((k+1)/7)[C,D]);
endfor;
trace segment(3/7[C,D],D) withpen pencircle scaled2bp;
nomme.top(C);
nomme.top(D);
fin;
figure(0,0,5u,5u);
pair C,D;
C=u*(0.5,0.5);
D-C=u*(3,0);
trace segment(C,D);
trace marquedemidroite(C,D);
for k=1 step 2 until 3:
  trace marquesegment((k/4)[C,D],((k+1)/4)[C,D]);
endfor;
trace segment(C,3/4[C,D]) withpen pencircle scaled2bp;
nomme.top(C);
nomme.top(D);
fin;
figure(0,0,5u,5u);
pair C,D;
C=u*(0.5,0.5);
D-C=u*(3,0);
trace segment(C,D);
trace marquedemidroite(C,D);
for k=1 step 2 until 3:
  trace marquesegment((k/3)[C,D],((k+1)/3)[C,D]);
endfor;
trace segment(C,4/3[C,D]) withpen pencircle scaled2bp;
nomme.top(C);
nomme.top(D);
fin;
%4
figure(0,0,5u,5u);
pair C,D;
C=u*(0.5,0.5);
D-C=u*(4,0);
trace segment(C,D);
trace marquesegment(C,D);
for k=1 step 2 until 5:
  trace marquesegment((k/7)[C,D],((k+1)/7)[C,D]);
endfor;
trace segment(C,3/7[C,D]) withpen pencircle scaled2bp;
nomme.top(C);
nomme.top(D);
fin;
figure(0,0,7u,5u);
pair C,D;
C=u*(0.5,0.5);
D-C=u*(4,0);
trace segment(C,D);
trace marquedemidroite(C,D);
for k=1 step 2 until 3:
  trace marquesegment((k/3)[C,D],((k+1)/3)[C,D]);
endfor;
trace segment(C,4/3[C,D]) withpen pencircle scaled2bp;
nomme.top(C);
nomme.top(D);
fin;
figure(0,0,5u,5u);
pair C,D;
C=u*(0.5,0.5);
D-C=u*(4,0);
trace segment(C,D);
trace marquedemidroite(C,D);
for k=1 step 2 until 3:
  trace marquesegment((k/4)[C,D],((k+1)/4)[C,D]);
endfor;
trace segment(C,3/4[C,D]) withpen pencircle scaled2bp;
nomme.top(C);
nomme.top(D);
fin;
figure(0,0,15u,u);
trace grille(0.5) withcolor orange;
trace segment(pp(1,1),pp(19,1)) withpen pencircle scaled1.5bp;
trace marquesegment(pp(1,1),pp(19,1)) withpen pencircle scaled1.5bp;
fin;
figure(0,0,15u,u);
trace grille(0.5) withcolor orange;
fin;
figure(-0.5u,0,12u,u);
trace grille(0.25) withcolor blanc;
trace segment(pp(0,1),pp(48,1)) withpen pencircle scaled1.5bp;
for k=0 step 8 until 44:
  trace marquesegment(pp(k,1),pp(k+4,1));
endfor;
trace marquedemidroite(pp(48,1),pp(0,1));
label.top(btex O etex,pp(0,1));
fin;
figure(-0.5u,0,12u,u);
trace grille(0.25) withcolor blanc;
trace segment(pp(0,1),pp(48,1)) withpen pencircle scaled1.5bp;
for k=0 step 8 until 44:
  trace marquesegment(pp(k,1),pp(k+4,1));
endfor;
label.top(btex A etex,pp(16,1));
label.top(btex O etex,pp(0,1));
trace marquedemidroite(pp(48,1),pp(0,1));
fin;
end
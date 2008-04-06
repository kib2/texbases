input geometriesyr16;
figure(0,0,5u,4u);
trace grille(0.5) withcolor orange;
trace (0.5cm,0.5cm)--(0.5cm,2cm)--(2cm,3.5cm) withpen pencircle scaled 2bp;
draw (0.5cm,2cm)--(3.5cm,2cm) withpen pencircle scaled 2bp;
fin;
%fig2
figure(0,0,6u,4u);
trace grille(0.5) withcolor orange;
draw (u*(3,0.5))--(u*(3.5,2.5))--(u*(0.5,3)) withpen pencircle scaled 2bp;
draw (u*(3.5,2.5))--(u*(4.5,3)) withpen pencircle scaled 2bp;
fin;
figure(0,0,5u,4.5u);
trace grille(0.5) withcolor orange;
trace (u*(1,0.5))--(u*(.5,2))--(u*(3.5,3))--(u*(4,4)) withpen pencircle scaled 2bp;
fin;
end
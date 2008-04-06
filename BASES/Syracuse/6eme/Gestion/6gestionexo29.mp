verbatimtex
%&latex
\documentclass{article}
\begin{document}
etex

input geometriesyr16;
input TEX;
figure(0,0,14u,10u);
trace grille(0.2) withcolor orange;
pair A,B,C,D;
A=u*(1,1);
B=u*(13,1);
C=u*(13,9);
D=u*(1,9);
for k=0 upto 8:
  trace segment((k/8)[A,D],(k/8)[B,C]) withpen pencircle scaled1.5bp withcolor orange;
endfor;
for k=0 upto 6:
  trace segment((k/6)[A,B],(k/6)[D,C]) withpen pencircle scaled1.5bp withcolor orange;
endfor;
clip currentpicture to polygone(A,B,C,D);
trace appelation(A,D,0.75cm,btex Longueur en m\`etres etex);
trace appelation(A,B,-0.7cm,btex Ann\'ee etex);
trace appelation(D,C,0.5cm,btex \textbf{Saut en longueur} etex);
for k=0 upto 8:
  if (k mod 2)=1:
    label.lft(TEX(""&decimal(floor(5+k/2))&","&decimal(((5+k/2)-floor(5+k/2))*10)&""),(k/8)[A,D]);
  else:
    label.lft(TEX(""&decimal(floor(5+k/2))&""),(k/8)[A,D]);
  fi;
endfor;
labeloffset:=labeloffset*2;
for k=0 upto 6:
  label.bot(TEX(""&decimal(1940+10*k)&""),(k/6)[A,B]);
endfor;
labeloffset:=labeloffset/2;
marque_p:="plein";
pointe(A+u*(1.6,5.6));
fin;
end
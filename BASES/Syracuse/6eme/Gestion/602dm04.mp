verbatimtex
%&latex
\documentclass{article}
\usepackage[frenchb]{babel}
\begin{document}
etex
input geometriesyr16;
figure(0,0,10u,10u);
pair A,B,C,D;
B=u*(1,1);nomme.llft(B);
C=u*(5,0.5);nomme.lrt(C);
D=4/5[C,B rotatedabout(C,-61)];nomme.top(D);
A=7/8[D,C rotatedabout(D,-80)];nomme.ulft(A);
trace A--B--C--D--cycle;
trace cotation(B,C,-2mm,-2mm,btex 8~cm etex);
trace cotation(D,C,2mm,2mm,btex 6~cm etex);
trace cotation(A,D,2mm,2mm,btex 6,8~cm etex);
trace Codeangle(D,C,B,0,btex 61\degres etex);
trace Codeangle(A,D,C,0,btex 80\degres etex);
fin;
figure(-2u,0,6u,6u);
pair O,A,B,C,D,E,F,K;
O=u*(3,3);
marque_p:="croix";
nomme.bot(O);
marque_p:="non";
path cerc;
cerc=cercles(O,1.5u);
A=pointarc(cerc,200);
K=pointarc(cerc,340);
D=pointarc(cerc,60);
B=perpendiculaire(K,A,D) intersectionpoint (A--K);
E=arccercle(A,B,O) intersectionpoint droite(D,B);
F=pointarc(cerc,170);
C=droite(D,F) intersectionpoint droite(B,A);nomme.top(C);
trace droite(D,C);
trace droite(C,B);
trace droite(D,E);
trace codeperp(D,B,K,5);
trace cerc;
fin;
figure(0,0,10u,6u);
trace grille(0.5) withcolor orange;
drawarrow (u*(1,0.5))--(u*(1,5.5));
drawarrow (u*(1,0.5))--(u*(8.5,0.5));
label.top(btex Poids (en kg) etex,u*(1,5.5));
label.top(btex Jours etex,u*(8.5,0.5));
for j:=1 upto 15 :
    draw fullcircle scaled 0.5mm shifted ((u*(1,0.5))+(u*(0.5*j,0)));
 endfor
label.bot(btex 0 etex,u*(1,0.5));
label.bot(btex 5 etex,u*(1.5,0.5));
label.bot(btex 10 etex,u*(2,0.5));
for j:=1 upto 5:
  draw fullcircle scaled 0.5mm shifted ((u*(1,0.5))+(u*(0,j)));
endfor
label.lft(btex 1 etex,u*(1,1.5));
label.lft(btex 2 etex,u*(1,2.5));
pair A,B,C,D,E,F,G;
A=u*(1,3.5);
B=u*(1.5,4);
C=u*(3,4.25);
D=u*(4,4.5);
E=u*(5.5,4.5);
F=u*(7,5);
G=u*(8.5,5.5);
trace A--B--C--D--E--F--G;
fin;
end

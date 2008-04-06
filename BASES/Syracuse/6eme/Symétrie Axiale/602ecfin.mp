verbatimtex
%&latex
\documentclass{article}
\usepackage{mathrsfs}
\begin{document}
etex
input geometriesyr16;
figure(0,0,12.5u,6u);
draw feuillet;
trace grille(0.5) withcolor bleu;
trace hachurage(u*(0,0.5)--u*(1,0.5)--u*(1,1.5)--u*(0,1.5)--cycle,60,0.2,0);
trace u*(1,3.5)--u*(2,3.5)--u*(2,4.5)--u*(3,4.5)--u*(4,5.5)--u*(1,5.5)--cycle withpen pencircle scaled 2bp;
trace u*(4,3.5)--u*(5,2.5)--u*(7,2.5)--u*(6,3.5)--u*(7,5.5)--u*(5,5.5)--cycle withpen pencircle scaled 2bp;
path biz;
biz=u*(2,1)--u*(3,1)--arccercle(u*(3,1),u*(4,0),u*(4,1))--u*(4,1)--u*(6,1)--arccercle(u*(6,1),u*(5,2),u*(5,1))--u*(5,4)--reverse(arccercle(u*(3,4),u*(5,4),u*(4,4)))--u*(3,2)--u*(2,2)--cycle;
trace biz shifted (u*(6,1.5)) withpen pencircle scaled 2bp;
label(btex ${\mathscr S}_1$ etex,u*(2,5));
label(btex ${\mathscr S}_2$ etex,u*(5.5,4));
label(btex ${\mathscr S}_3$ etex,u*(10,3.5));
fin;
u:=7mm;
figure(0,0,9u,7u);
pair A,B,C,D,E,F;
A=u*(1,6);
F=u*(1,1);
E=u*(8,1);
D=u*(8,6);
C=u*(3,4);
B=u*(3,6);
trace A--B--C--D--E--F--cycle;
trace D--B dashed evenly;
trace codeperp(B,A,F,5);
trace codeperp(A,F,E,5);
trace codeperp(F,E,D,5);
trace codeperp(C,B,A,5);
trace cotation(A,B,2mm,2mm,btex 14~m etex);
trace cotation(B,D,2mm,2mm,btex 16~m etex);
trace cotation(D,E,2mm,2mm,btex 48~m etex);
trace cotation(B,C,-8mm,-2mm,btex 12~m etex);
trace appelation(C,D,2mm,btex 20~m etex);
nomme.ulft(A);
nomme.llft(F);
nomme.bot(E);
nomme.urt(D);
nomme.bot(C);
labeloffset:=3*labeloffset;
nomme.top(B);
labeloffset:=labeloffset/3;
fin;
u:=1cm;
figure(0,0.5u,7u,5.5u);
draw feuillet;
trace grille(0.5) withcolor bleu;
trace droite(u*(0,3),u*(1,3)) withpen pencircle scaled 1.5bp;
trace u*(1,2)--u*(2,1)--u*(3,1)--u*(5,4)--cycle withpen pencircle scaled 2bp;
label.urt(btex $(d)$ etex,u*(0.5,3));
fin;
figure(0,0,8.5u,8u);
draw feuillet;
trace grille(0.5) withcolor bleu;
trace cercles(u*(2.5,4.5),1.5cm) withpen pencircle scaled 2bp;
%trace symetrie(cercles(u*(2.5,4.5),1.5cm),u*(2,1.5),u*(3,2.5));
trace u*(3.5,6)--u*(6,6)--u*(6,7.5)--u*(3.5,7.5)--cycle withpen pencircle scaled 2bp;
%trace symetrie(u*(3.5,6)--u*(6,6)--u*(6,7.5)--u*(3.5,7.5)--cycle,u*(2,1.5),u*(3,2.5));
marque_p:="croix";
MarquePoint(u*(2.5,4.5));
trace droite(u*(2,1.5),u*(3,2.5));
label.lrt(btex $(d)$ etex,u*(3,2.5));
fin;
figure(0.5u,-u,8.5u,10u);
draw feuillet withcolor blanc;;
%papierun((0,-1),(9,10),bleu);
pair B,C,A,G,E,F;
B=u*(2,5);
path cc;
cc=cercles(B,4cm);
C=point(0.95*length cc) of cc;
picture essai,essaia;
draw B--C;
nomme.lft(B);
nomme.rt(C);
essai=image(
  draw B--C;
  nomme.lft(B);
  nomme.rt(C);
  A=3/4[B,rotation(C,B,90)];
  F=3/5[A,rotation(C,A,90)];
  E-F=C-A;
  G=rotation(B,C,60);
  trace B--G--C--E--F--A--cycle;
  trace A--C;
  );
essaia=image(
  draw B--C;
  nomme.lft(B);
  nomme.rt(C);
  A:=3/4[B,rotation(C,B,-90)];
  F:=3/5[A,rotation(C,A,-90)];
  E:=C-A+F;
  G:=rotation(B,C,-60);
  trace B--G--C--E--F--A--cycle;
  trace A--C;
  );
fin;
end


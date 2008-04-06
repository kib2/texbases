verbatimtex
%&latex
\documentclass{article}
\usepackage{mathrsfs}
\begin{document}
etex
%%

input geometriesyr12;
figure(0,0,10u,8u);
pair A,B,C,D,E,F,G;
path cd;
E=u*(1,3);
D=u*(3,3);
C=u*(3,1);
B=symetrie(C,D);
A=u*(2.5,6);
cd=E--D--C--arccercle(C,B,D)--A--cycle;
F=u*(4,8);
G=u*(6,1);
trace droite(F,G);
label.llft(btex $(d)$ etex,G);
trace cd;
trace codeperp(E,D,C,8);
nomme.top(A);
nomme.bot(B);
nomme.bot(C);
nomme.urt(D);
nomme.llft(E);
label(btex $\mathscr F$ etex,iso(A,B,C,D,E));
fin;

u:=7.5mm;

string typedamier;
typedamier="hexagone";

vardef motifdamier=
  save $;
  path $;
  if typedamier="hexagone":
    path axeh;
    path cc;
    cc=cercles((0,0),u);
    axeh=for k=0 upto 5:
      pointarc(cc,90+60*k)--
    endfor
    cycle;
    deph:=sqrt(3)*u;
    depv:=1.5*u;
    $=axeh;
  elseif typedamier="brique":
    path irb;
    irb:=u*(-1,-0.5)--u*(1,-0.5)--u*(1,0.5)--u*(-1,0.5)--cycle;
    deph:=2u;
    depv:=1u;
    $=irb;
  fi;
  $
enddef;

vardef damier(expr etagedep,etagefin)=
  save $;
  picture $;
  $=image(
    for k=etagedep upto etagefin:
      if k=0:
	draw motifdamier;
      elseif k>0:
	for j=0 upto k:
	  draw motifdamier shifted(-(k)*deph/2+j*deph,k*depv);
	endfor;
      elseif k<0:
	for j=0 upto abs(k):
	  draw motifdamier shifted(k*deph/2+j*deph,k*depv);
	endfor;
      fi;
    endfor;
    );
  $
enddef;

vardef case(expr aa,bb)=
  save $;
  pair $;
  if aa=0:
    $=(0,0);
  elseif aa>0:
    $=(-aa*deph/2+(bb-1)*deph,aa*depv);
  elseif aa<0:
    $=(aa*deph/2+(bb-1)*deph,aa*depv);
  fi;
  $
enddef;

figure(-5u,-5u,5u,5u);
typedamier:="brique";
trace damier(0,2);
label(btex \Large 8,75 etex,case(0,1));
label(btex \Large 3,5 etex,case(1,1));
label(btex \Large 1,07 etex,case(2,2));
fin;
beginfig(3);
  trace damier(0,3);
  label(btex \Large 216 etex,case(0,1));
  label(btex \Large 18 etex,case(1,1));
  label(btex \Large 2 etex,case(2,3));
  label(btex \Large 3 etex,case(3,2));
endfig;
beginfig(4);
  trace damier(0,3);
  label(btex \Large 2,5 etex,case(3,1));
  label(btex \Large 3 etex,case(3,2));
  label(btex \Large 10,5 etex,case(2,2));
  label(btex \Large 2,1 etex,case(3,4));
endfig;
end
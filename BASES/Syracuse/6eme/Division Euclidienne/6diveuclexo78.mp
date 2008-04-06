prologues:=2;

verbatimtex
%&latex
\documentclass{article}
\begin{document}
\Large
etex

input geometriesyr16

vardef depart(expr nb)=
  save $;
  picture $;
  path pl[];
  $=image(
    pl1=(0,0)--u*(1.5,0)--u*(1.5,0.4){dir180}..u*(0.75,0.1)..u*(0.25,0.2)..u*(0.3,0.75)..u*(0.2,1.25)..u*(0.5,1.2)..u*(1,1.3)..u*(1.25,1.25)..{dir0}u*(1.5,1)--u*(1.5,1.5)--u*(0,1.5)--cycle;
    pl2=u*(1.5,1.5)--u*(1.5,1.7)..u*(1+uniformdeviate(0.3),1.5+uniformdeviate(0.2))..u*(0.5+uniformdeviate(0.3),1.5+uniformdeviate(0.2))..u*(0.1+uniformdeviate(0.3),1.5+uniformdeviate(0.2))..u*(-0.2,1.7)..u*(-0.2+uniformdeviate(0.1),1.1+uniformdeviate(0.2))..u*(-0.2+uniformdeviate(0.1),0.6+uniformdeviate(0.2))..u*(-0.2+uniformdeviate(0.1),0.1+uniformdeviate(0.2))..u*(-0.2,0)--(0,0)--u*(0,1.5)--cycle;
    for k=1 upto 2:
      remplis pl[k];
      trace pl[k];
    endfor;
    label.top(btex \small d\'epart etex,u*(0.75,0.75));
    label.bot(nb,u*(0.75,0.75));
    );
  $
enddef;

vardef murgauche=
  save $;
  picture $;
  path pl[];
  $=image(
    pl1=(0,0)--u*(1.5,0)--u*(1.5,0.4){dir180}..u*(0.8+uniformdeviate(0.5),0.1+uniformdeviate(0.4))..u*(0.9+uniformdeviate(0.15),0.5+uniformdeviate(0.2))..u*(0.8+uniformdeviate(0.4),1+uniformdeviate(0.2))..{dir0}u*(1.5,1)--u*(1.5,1.5)--u*(0,1.5)--cycle;
    pl2=u*(0,1.5)--u*(-0.2,1.5)..u*(-0.2+uniformdeviate(0.2),1.1+uniformdeviate(0.2))..u*(-0.2+uniformdeviate(0.2),0.6+uniformdeviate(0.2))..u*(-0.2+uniformdeviate(0.2),0.2+uniformdeviate(0.2))..u*(-0.2,0)--(0,0)--u*(0,1.5)--cycle;
    for k=1 upto 2:
      remplis pl[k];
      trace pl[k];
    endfor;
    );
  $
enddef;

vardef coinhautgauche=
  save $;
  picture $;
  path pl[];
  $=image(
    pl1=(0,0)--u*(1.5,0)--u*(1.5,0.4){dir180}..u*(0.8+uniformdeviate(0.5),0.1+uniformdeviate(0.4))..u*(0.9+uniformdeviate(0.15),0.5+uniformdeviate(0.2))..u*(0.8+uniformdeviate(0.4),1+uniformdeviate(0.2))..{dir0}u*(1.5,1)--u*(1.5,1.5)--u*(0,1.5)--cycle;
    pl2=u*(1.5,1.5)..u*(1.5,1.7)..u*(1+uniformdeviate(0.3),1.5+uniformdeviate(0.2))..u*(0.4+uniformdeviate(0.3),1.5+uniformdeviate(0.2))..u*(-0.2,1.7)..u*(-0.2+uniformdeviate(0.2),1.1+uniformdeviate(0.2))..u*(-0.2+uniformdeviate(0.2),0.6+uniformdeviate(0.2))..u*(-0.2+uniformdeviate(0.2),0.2+uniformdeviate(0.2))..u*(-0.2,0)--(0,0)--u*(0,1.5)--cycle;
    for k=1 upto 2:
      remplis pl[k];
      trace pl[k];
    endfor;
    );
  $
enddef;

vardef coinbasgauche=
  save $;
  picture $;
    path pl[];
  $=image(
    pl1=(0,0)--u*(1.5,0)--u*(1.5,0.4){dir180}..u*(0.8+uniformdeviate(0.5),0.1+uniformdeviate(0.4))..u*(0.9+uniformdeviate(0.15),0.5+uniformdeviate(0.2))..u*(0.8+uniformdeviate(0.4),1+uniformdeviate(0.2))..{dir0}u*(1.5,1)--u*(1.5,1.5)--u*(0,1.5)--cycle;
    pl2=u*(0,1.5)--u*(-0.2,1.5)..u*(-0.2+uniformdeviate(0.2),1.1+uniformdeviate(0.2))..u*(-0.2+uniformdeviate(0.2),0.6+uniformdeviate(0.2))..u*(-0.2+uniformdeviate(0.2),0.2+uniformdeviate(0.2))..u*(-0.2,0)..u*(-0.2,-0.3)..u*(0.3+uniformdeviate(0.2),-0.3+uniformdeviate(0.2))..u*(0.8+uniformdeviate(0.2),-0.3+uniformdeviate(0.2))..u*(1.1+uniformdeviate(0.2),-0.3+uniformdeviate(0.2))..u*(1.5,-0.2)--u*(1.5,0)--u*(0,0)--cycle;
    for k=1 upto 2:
      remplis pl[k];
      trace pl[k];
    endfor;
    );
  $
enddef;

vardef coinhautdroit(expr nb)=
  save $;
  picture $;
  path pl[];
  $=image(
    pl1=u*(0,1){dir0}..u*(0.1+uniformdeviate(0.2),1.2)..u*(0.2+uniformdeviate(0.1),1.35)..u*(0.4+uniformdeviate(0.2),1.2+uniformdeviate(0.2))..u*(0.9+uniformdeviate(0.2),1.1+uniformdeviate(0.2))..u*(1.2+uniformdeviate(0.1),1+uniformdeviate(0.2))..u*(1.2+uniformdeviate(0.1),0.5+uniformdeviate(0.2))..u*(1.2+uniformdeviate(0.1),0.1+uniformdeviate(0.2))..{dir-90}u*(1.1,0)--u*(1.5,0)--u*(1.5,1.5)--u*(0,1.5)--cycle;
    pl2=u*(1.5,0)..u*(1.5+uniformdeviate(0.3),0.2+uniformdeviate(0.3))..u*(1.5+uniformdeviate(0.3),0.5+uniformdeviate(0.3))..u*(1.5+uniformdeviate(0.3),0.8+uniformdeviate(0.3))..u*(1.5+uniformdeviate(0.3),1.1+uniformdeviate(0.3))..u*(1.5+uniformdeviate(0.3),1.5+uniformdeviate(0.2))..u*(1+uniformdeviate(0.3),1.5+uniformdeviate(0.2))..u*(0.4+uniformdeviate(0.3),1.5+uniformdeviate(0.2))..u*(0,1.7)--u*(0,1.5)--u*(1.5,1.5)--cycle;
    pl3=(0,0)--u*(0.4,0){dir45}..u*(0.4+uniformdeviate(0.2),uniformdeviate(0.3))..u*(0.2+uniformdeviate(0.1),0.1+uniformdeviate(0.3))..u*(0,0.4){dir180}--cycle;
    for k=1 upto 3:
      remplis pl[k];
      trace pl[k];
    endfor;
    label(nb,u*(0.75,0.75));
    );
  $
enddef;

vardef murdroit(expr nb)=
  save $;
  picture $;
  path pl[];
  $=image(
    pl1=u*(0,1){dir0}..u*(0.1+uniformdeviate(0.2),1.2)..u*(0.2+uniformdeviate(0.1),1.35)..{dir45}u*(0.4,1.5)--u*(0,1.5)--cycle;
    pl2=u*(1.1,1.5){dir-90}..u*(0.9+uniformdeviate(0.2),1.1+uniformdeviate(0.2))..u*(1.2+uniformdeviate(0.1),1+uniformdeviate(0.2))..u*(1.2+uniformdeviate(0.1),0.5+uniformdeviate(0.2))..u*(1.2+uniformdeviate(0.1),0.2+uniformdeviate(0.2))..{dir-90}u*(1.1,0)--u*(1.5,0)--u*(1.5,1.5)--cycle;
    pl3=u*(1.5,0)..u*(1.5+uniformdeviate(0.3),0.2+uniformdeviate(0.3))..u*(1.5+uniformdeviate(0.3),0.5+uniformdeviate(0.3))..u*(1.5+uniformdeviate(0.3),0.8+uniformdeviate(0.3))..u*(1.5+uniformdeviate(0.3),1.1+uniformdeviate(0.3))..{dir90}u*(1.5+uniformdeviate(0.3),1.5)..u*(1.5,1.5)--cycle;
    pl4=(0,0)--u*(0.4,0){dir45}..u*(0.4+uniformdeviate(0.2),uniformdeviate(0.3))..u*(0.2+uniformdeviate(0.1),0.1+uniformdeviate(0.3))..u*(0,0.4){dir180}--cycle;
    for k=1 upto 4:
      remplis pl[k];
      trace pl[k];
    endfor;
    label(nb,u*(0.75,0.75));
    );
  $
enddef;

vardef murhaut(expr nb)=
  save $;
  picture $;
  path pl[];
  $=image(
    pl1=u*(0,1){dir0}..u*(0.1+uniformdeviate(0.2),1.2)..u*(0.2+uniformdeviate(0.1),1.35)..u*(0.4+uniformdeviate(0.2),1.2+uniformdeviate(0.2))..u*(0.9+uniformdeviate(0.2),1.1+uniformdeviate(0.2))..u*(1.2+uniformdeviate(0.1),1+uniformdeviate(0.2))..{dir0}u*(1.5,1)--u*(1.5,1.5)--u*(0,1.5)--cycle;
    pl2=(0,0)--u*(0.4,0){dir45}..u*(0.4+uniformdeviate(0.2),uniformdeviate(0.3))..u*(0.2+uniformdeviate(0.1),0.1+uniformdeviate(0.3))..u*(0,0.4){dir180}--cycle;
    pl3=u*(1.1,0)--u*(1.5,0)--u*(1.5,0.4){dir180}..u*(1.25+uniformdeviate(0.1),0.2+uniformdeviate(0.1))..{dir-90}cycle;
    pl4=u*(1.5,1.5)..u*(1.5,1.7)..u*(1+uniformdeviate(0.3),1.5+uniformdeviate(0.2))..u*(0.4+uniformdeviate(0.3),1.5+uniformdeviate(0.2))..u*(0,1.7)--u*(0,1.5)--cycle;
    for k=1 upto 4:
      remplis pl[k];
      trace pl[k];
    endfor;
    label(nb,u*(0.75,0.75));
    );
  $
enddef;

vardef murbas(expr nb)=
  save $;
  picture $;
  path pl[];
  $=image(
    pl1=(0,0)--u*(1.5,0)--u*(1.5,0.4){dir180}..u*(1+uniformdeviate(0.2),0.1+uniformdeviate(0.2))..u*(0.5+uniformdeviate(0.2),0.3+uniformdeviate(0.2))..u*(0.1+uniformdeviate(0.2),0.1+uniformdeviate(0.2))..{dir180}u*(0,0.4)--cycle;
    pl2=(0,0)--u*(0,-0.2)..u*(0.2+uniformdeviate(0.3),-0.3+uniformdeviate(0.2))..u*(0.6+uniformdeviate(0.3),-0.3+uniformdeviate(0.2))..u*(1.1+uniformdeviate(0.3),-0.3+uniformdeviate(0.2))..u*(1.5,-0.2)--u*(1.5,0)--cycle;
%coinhautgauche
    pl3=u*(0,1){dir0}..u*(0.1+uniformdeviate(0.2),1.2)..u*(0.2+uniformdeviate(0.1),1.35)..{dir45}u*(0.4,1.5)--u*(0,1.5)--cycle;
    %coinhautdroite
    pl4=u*(1.1,1.5){dir-90}..u*(0.9+uniformdeviate(0.2),1.1+uniformdeviate(0.2))..u*(1.2+uniformdeviate(0.1),1.1+uniformdeviate(0.2))..{dir0}u*(1.5,1)--u*(1.5,1.5)--cycle;
    for k=1 upto 4:
      remplis pl[k];
      trace pl[k];
    endfor;
    label(nb,u*(0.75,0.75));
    );
  $
enddef;

vardef murbasdroit(expr nb)=
  save $;
  picture $;
  path pl[];
  $=image(
    pl1=(0,0)--u*(1.5,0)--u*(1.5,0.4){dir180}..u*(1+uniformdeviate(0.2),0.1+uniformdeviate(0.2))..u*(0.5+uniformdeviate(0.2),0.3+uniformdeviate(0.2))..u*(0.1+uniformdeviate(0.2),0.1+uniformdeviate(0.2))..{dir180}u*(0,0.4)--cycle;
    pl2=(0,0)--u*(0,-0.2)..u*(0.2+uniformdeviate(0.3),-0.3+uniformdeviate(0.2))..u*(0.6+uniformdeviate(0.3),-0.3+uniformdeviate(0.2))..u*(1.1+uniformdeviate(0.3),-0.3+uniformdeviate(0.2))..u*(1.5,-0.2)--u*(1.5,0)--cycle;
    pl3=u*(1.5,0)..u*(1.5+uniformdeviate(0.3),0.2+uniformdeviate(0.3))..u*(1.5+uniformdeviate(0.3),0.5+uniformdeviate(0.3))..u*(1.5+uniformdeviate(0.3),0.8+uniformdeviate(0.3))..u*(1.5+uniformdeviate(0.3),1.1+uniformdeviate(0.3))..{dir90}u*(1.5+uniformdeviate(0.3),1.5)..u*(1.5,1.5)--cycle;
%coinhautgauche
    pl4=u*(0,1){dir0}..u*(0.1+uniformdeviate(0.2),1.2)..u*(0.2+uniformdeviate(0.1),1.35)..{dir45}u*(0.4,1.5)--u*(0,1.5)--cycle;
    %coinhautdroite
    pl5=u*(1.1,1.5){dir-90}..u*(0.9+uniformdeviate(0.2),1.1+uniformdeviate(0.2))..u*(1.2+uniformdeviate(0.1),1.1+uniformdeviate(0.2))..{dir0}u*(1.5,1)--u*(1.5,1.5)--cycle;
    for k=1 upto 5:
      remplis pl[k];
      trace pl[k];
    endfor;
    label(nb,u*(0.75,0.75));
    );
  $
enddef;

vardef sortie(expr nb)=
  save $;
  picture $;
  path pl[];
  $=image(
    pl1=(0,0)--u*(1.5,0)..u*(1.5,0.4){dir180}..u*(1+uniformdeviate(0.2),0.1+uniformdeviate(0.2))..u*(0.5+uniformdeviate(0.2),0.3+uniformdeviate(0.2))..u*(0.1+uniformdeviate(0.2),0.1+uniformdeviate(0.2))..{dir180}u*(0,0.4)--cycle;
    pl2=u*(0,1){dir0}..u*(0.1+uniformdeviate(0.2),1.2)..u*(0.2+uniformdeviate(0.1),1.35)..u*(0.4+uniformdeviate(0.2),1.2+uniformdeviate(0.2))..u*(0.9+uniformdeviate(0.2),1.1+uniformdeviate(0.2))..u*(1.2+uniformdeviate(0.1),1+uniformdeviate(0.2))..{dir0}u*(1.5,1)..u*(1.5,1.5)--u*(0,1.5)--cycle;
    pl3=(0,0)--u*(0,-0.2)..u*(0.2+uniformdeviate(0.3),-0.3+uniformdeviate(0.2))..u*(0.6+uniformdeviate(0.3),-0.3+uniformdeviate(0.2))..u*(1.1+uniformdeviate(0.3),-0.3+uniformdeviate(0.2))..u*(1.5,-0.2)..u*(1.5,0)--cycle;
    pl4=u*(1.5,1.5)..u*(1.5,1.7)..u*(1+uniformdeviate(0.3),1.5+uniformdeviate(0.2))..u*(0.4+uniformdeviate(0.3),1.5+uniformdeviate(0.2))..u*(0,1.7)--u*(0,1.5)--cycle;
    for k=1 upto 4:
      remplis pl[k];
      trace pl[k];
    endfor;
    label(nb,u*(0.75,0.75));
    );
  $
enddef;

vardef case(expr nb)=
  save $;
  picture $;
  path pl[];
  $=image(
    %coinbasgauche
    pl1=(0,0)--u*(0.4,0){dir45}..u*(0.4+uniformdeviate(0.2),uniformdeviate(0.3))..u*(0.2+uniformdeviate(0.1),0.1+uniformdeviate(0.3))..u*(0,0.4){dir180}--cycle;
    %coinbasdroite
    pl2=u*(1.1,0)--u*(1.5,0)--u*(1.5,0.4){dir180}..u*(1.25+uniformdeviate(0.1),0.2+uniformdeviate(0.1))..{dir-90}cycle;
    %coinhautgauche
    pl3=u*(0,1){dir0}..u*(0.1+uniformdeviate(0.2),1.2)..u*(0.2+uniformdeviate(0.1),1.35)..{dir45}u*(0.4,1.5)--u*(0,1.5)--cycle;
    %coinhautdroite
    pl4=u*(1.1,1.5){dir-90}..u*(0.9+uniformdeviate(0.2),1.1+uniformdeviate(0.2))..u*(1.2+uniformdeviate(0.1),1.1+uniformdeviate(0.2))..{dir0}u*(1.5,1)--u*(1.5,1.5)--cycle;
    %
    for k=1 upto 4:
      remplis pl[k];
      trace pl[k];
    endfor;
    label(nb,u*(0.75,0.75));
    );
  $
enddef;

figure(-0.5u,-0.5u,12.5u,8u);
trace feuillet withcolor blanc;
trace coinhautgauche shifted(u*(0,4*1.5));
trace murhaut(btex 19 etex) shifted(u*(1*1.5,4*1.5));
trace murhaut(btex 64 etex) shifted(u*(2*1.5,4*1.5));
trace murhaut(btex 36 etex) shifted(u*(3*1.5,4*1.5));
trace murhaut(btex 27 etex) shifted(u*(4*1.5,4*1.5));
trace murhaut(btex 29 etex) shifted(u*(5*1.5,4*1.5));
trace murhaut(btex 28 etex) shifted(u*(6*1.5,4*1.5));
trace sortie(btex 7 etex) shifted(u*(7*1.5,4*1.5));
trace murgauche shifted(u*(0,3*1.5));
trace case(btex 16 etex) shifted(u*(1*1.5,3*1.5));
trace case(btex 91 etex) shifted(u*(2*1.5,3*1.5));
trace case(btex 195 etex) shifted(u*(3*1.5,3*1.5));
trace case(btex 45 etex) shifted(u*(4*1.5,3*1.5));
trace case(btex 31 etex) shifted(u*(5*1.5,3*1.5));
trace murdroit(btex 266 etex) shifted(u*(6*1.5,3*1.5));
trace murgauche shifted(u*(0,2*1.5));
trace case(btex 42 etex) shifted(u*(1*1.5,2*1.5));
trace case(btex 70 etex) shifted(u*(2*1.5,2*1.5));
trace case(btex 23 etex) shifted(u*(3*1.5,2*1.5));
trace case(btex 18 etex) shifted(u*(4*1.5,2*1.5));
trace case(btex 47 etex) shifted(u*(5*1.5,2*1.5));
trace murdroit(btex 209 etex) shifted(u*(6*1.5,2*1.5));
trace depart(btex 7 etex) shifted(u*(0,1*1.5));
trace case(btex 14 etex) shifted(u*(1*1.5,1*1.5));
trace case(btex 9 etex) shifted(u*(2*1.5,1*1.5));
trace case(btex 93 etex) shifted(u*(3*1.5,1*1.5));
trace case(btex 162 etex) shifted(u*(4*1.5,1*1.5));
trace case(btex 135 etex) shifted(u*(5*1.5,1*1.5));
trace murdroit(btex 55 etex) shifted(u*(6*1.5,1*1.5));
trace coinbasgauche shifted(u*(0,0*1.5));
trace murbas(btex 3 etex) shifted(u*(1*1.5,0*1.5));
trace murbas(btex 8 etex) shifted(u*(2*1.5,0*1.5));
trace murbas(btex 53 etex) shifted(u*(3*1.5,0*1.5));
trace murbas(btex 61 etex) shifted(u*(4*1.5,0*1.5));
trace murbas(btex 41 etex) shifted(u*(5*1.5,0*1.5));
trace murbasdroit(btex 97 etex) shifted(u*(6*1.5,0*1.5));
fin;
end
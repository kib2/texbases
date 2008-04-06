verbatimtex
%&latex
\documentclass[10pt]{article}
\usepackage{amsmath}
\usepackage{lmodern}
\begin{document}
etex

input geometriesyr16;

vardef dvide(expr a)=
  picture _$;
  _$=image(
    trace polygone((0,0),(2u,0),(2u,u),(0,u));
    trace segment((u,0),(u,u)) dashed evenly;
    );
  _$:=_$ shifted(a);
  _$
enddef;

vardef dplein(expr tg,td)=
  picture _$;
  _$=image(
    trace polygone((0,0),(2u,0),(2u,0.5u),(0,0.5u));
    trace segment((u,0),(u,0.5u)) dashed evenly;
    label(tg,u*(0.5,0.25));
    label(td,u*(1.5,0.25));
    );
  _$
enddef;

figure(-u,-u,20u,20u);
trace rotation(dvide((u,u)),(u,u),90);
trace rotation(dvide((u,3u)),(u,3u),90);
trace dvide((0,0));
trace rotation(dvide((3u,0)),(3u,0),90);
trace dvide((2u,2u));
trace dvide((4u,2u));
trace dvide((6u,2u));
trace rotation(dvide((7u,2u)),(7u,2u),-90);
trace dvide((8u,0));
trace rotation(dvide((10u,u)),(10u,u),90);
trace rotation(dvide((10u,3u)),(10u,3u),90);
trace symetrie(currentpicture,(u,5u),(10u,5u));
label(btex $0,999$ etex,u*(4.5,2.5));
fin;
u:=2.5cm;
figure(0,-3u,20u,20u);
trace dplein(btex $3,5-1,7$ etex,btex $1,8$ etex);
trace dplein(btex $72,19-71,84$ etex,btex $72,19+71,84$ etex) shifted(u*(2.5,0));
trace dplein(btex $4,73$ etex,btex $3,47$ etex) shifted(u*(5,0));
%ligne2
trace dplein(btex $2,82$ etex,btex $1,82$ etex) shifted(u*(0,0.7));
trace dplein(btex $2+0,15$ etex,btex $\dfrac{301}{100}$ etex) shifted(u*(2.5,0.7));
trace dplein(btex $\dfrac{290}{100}$ etex,btex $4,5+2,18$ etex) shifted(u*(5,0.7));
%ligne3
trace dplein(btex $1,8$ etex,btex $4,87-1,82$ etex) shifted(u*(0,1.4));
trace dplein(btex $1,25+1,72$ etex,btex $\dfrac{35}{10}$ etex) shifted(u*(2.5,1.4));
trace dplein(btex $6,68$ etex,btex $4,19$ etex) shifted(u*(5,1.4));
%ligne4
trace dplein(btex $1+\dfrac{23}{100}$ etex,btex $0,73$ etex) shifted(u*(0,2.1));
trace dplein(btex $1$ etex,btex $0,318+0,681$ etex) shifted(u*(2.5,2.1));
trace dplein(btex $3,05$ etex,btex $1,33$ etex) shifted(u*(5,2.1));
%ligne5
trace dplein(btex $2,9$ etex,btex $10,1-6,14$ etex) shifted(u*(0,2.8));
trace dplein(btex $4-2,18$ etex,btex $2,59-1,36$ etex) shifted(u*(2.5,2.8));
trace dplein(btex $3,01$ etex,btex $0,75+0,5$ etex) shifted(u*(5,2.8));
%ligne6%
trace dplein(btex $4,91-3,11$ etex,btex $2,97$ etex) shifted(u*(0,3.5));
trace dplein(btex $6-1,81$ etex,btex $7,72-2,99$ etex) shifted(u*(2.5,3.5));
trace dplein(btex $0,999$ etex,btex $6,076-3,256$ etex) shifted(u*(5,3.5));
%ligne7
trace dplein(btex $2,9-1,57$ etex,btex $5,147-2,997$ etex) shifted(u*(0,4.2));
trace dplein(btex $2,1+1,37$ etex,btex $2,1-1,37$ etex) shifted(u*(2.5,4.2));
trace dplein(btex $2,124-1,124$ etex,btex $1,25$ etex) shifted(u*(5,4.2));
%ligne8
trace dplein(btex $144,03$ etex,btex $3,96$ etex) shifted(u*(0,-0.7));
fin;
end
verbatimtex
%&latex
\documentclass{article}
\usepackage{pifont}
\begin{document}
etex

input geometriesyr16

figure(0,0,17u,10u);
pair A[],B[],C[];
%
A1=u*(1,1);
B1-A1=u*(3,4);
C1-B1=u*(-2,0);
trace polygone(A1,B1,C1);
label(btex \ding{172} etex,iso(A1,B1,C1));
%
A2=u*(5,1);
B2-A2=u*(3,0);
C2=rotation(B2,A2,60);
trace polygone(A2,B2,C2);
label(btex \ding{173} etex,iso(A2,B2,C2));
%
A3=u*(2,1);
B3-A3=u*(2,0);
C3=rotation(A3,B3,-120);
trace polygone(A3,B3,C3);
label(btex \ding{174} etex,iso(A3,B3,C3));
%
A4=u*(4.5,5);
B4-A4=u*(2,-0.5);
C4-B4=u*(-2,-1);
trace polygone(A4,B4,C4);
label(btex \ding{175} etex,iso(A4,B4,C4));
%
A5=u*(8,5);
B5-A5=u*(0,-2);
C5-B5=u*(2,1);
trace polygone(A5,B5,C5);
label(btex \ding{176} etex,iso(A5,B5,C5));
%
A6=u*(9,3);
B6-A6=u*(0,-2);
C6-B6=u*(2,2.5);
trace polygone(A6,B6,C6);
label(btex \ding{177} etex,iso(A6,B6,C6));
%
A7=u*(11,5);
B7-A7=u*(2,0);
C7=rotation(B7,A7,-60);
trace polygone(A7,B7,C7);
label(btex \ding{178} etex,iso(A7,B7,C7));
%
A8=u*(11,3);
B8-A8=u*(-0.5,-2);
C8-B8=u*(3,2.25);
trace polygone(A8,B8,C8);
label(btex \ding{179} etex,iso(A8,B8,C8));
%
A9=u*(14,5);
B9-A9=u*(1,-2);
C9-B9=u*(2,1);
trace polygone(A9,B9,C9);
label(btex \ding{180} etex,iso(A9,B9,C9));
%
A10=u*(15,1);
B10-A10=u*(-2,0.75);
C10=rotation(B10,A10,-60);
trace polygone(A10,B10,C10);
label(btex \ding{181} etex,iso(A10,B10,C10));
fin;
end
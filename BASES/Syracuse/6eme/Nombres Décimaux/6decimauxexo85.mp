verbatimtex
%&latex
\documentclass{article}
\usepackage{amsmath}
\begin{document}
etex

input geometriesyr16;

figure(0,0,12u,10.5u);
trace feuillet;
pair A,B,C,D,E;
E=u*(2,2);
A-E=u*(4,0);
D=rotation(E,A,-90);
B-D=E-A;
C=rotation(D,B,60);
marque_p:="creux";
pointe(A,B,C,D,E);
label.llft(btex $\dfrac{375}{100}$ etex,E);
label.lrt(btex $3\times10+9\times1+3\times0,1+4\times0,001$ etex,A);
label.rt(btex $\dfrac3{100}+\dfrac7{10}+\dfrac5{1\,000}$ etex,D);
label.lft(btex $375\div1\,000$ etex,B);
label.top(btex $3+\dfrac{75}{1\,000}$ etex,C);
fin;
end

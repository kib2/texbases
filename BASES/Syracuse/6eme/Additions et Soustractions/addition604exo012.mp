input geometriesyr16;
input boxmax;
input mapmax;

beginfig(1);
B_draw(1,btex 12 etex,u*(1,4));
B_draw(2,btex 24 etex,u*(1,3));
B_draw(121,btex $+$ etex,u*(2,3.5));
B_draw(122,btex 36 etex,u*(3,3.5));
B_arrow(1,121,1);
B_arrow(2,121,1);
B_arrow(121,122,1);
%%
B_draw(3,btex $286$ etex,u*(1,2));
B_draw(4,btex $334$ etex,u*(1,1));
B_draw(341,btex $+$ etex,u*(2,1.5));
B_draw(342,btex \phantom{$234$} etex,u*(3,1.5));
B_arrow(3,341,1);
B_arrow(4,341,1);
B_arrow(341,342,1);
%%
B_draw(3,btex $534$ etex,u*(5,2));
B_draw(4,btex \phantom{$234$} etex,u*(5,1));
B_draw(341,btex $+$ etex,u*(6,1.5));
B_draw(342,btex 1000 etex,u*(7,1.5));
B_arrow(3,341,1);
B_arrow(4,341,1);
B_arrow(341,342,1);
B_draw(3,btex \phantom{$234$} etex,u*(9,3));
B_draw(4,btex \phantom{$234$} etex,u*(9,2));
B_draw(5,btex 1857 etex,u*(9,1));
B_draw(341,btex $+$ etex,u*(10,2.5));
B_draw(451,btex $+$ etex,u*(10,1.5));
B_draw(342,btex 889 etex,u*(11,2.5));
B_draw(452,btex \phantom{$234$} etex,u*(11,1.5));
B_draw(600,btex $+$ etex,u*(12,2));
B_draw(601,btex 3024 etex,u*(13,2));
B_arrow(3,341,1);
B_arrow(4,341,1);
B_arrow(4,451,1);
B_arrow(5,451,1);
B_arrow(341,342,1);
B_arrow(451,452,1);
B_arrow(342,600,1);
B_arrow(452,600,1);
B_arrow(600,601,1);
endfig;
end
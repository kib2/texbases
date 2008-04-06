input geometriesyr16;

figure(0,0,10u,6.5u);
pair a,b,c,d;
a=(3u,2u);b=(7u,u);c=(u,3u);d=(8u,4u);
marque_p:="croix";
MarquePoint(a);MarquePoint(b);
label.bot(btex $A$ etex,a);label.bot(btex $B$ etex,b);
draw c--d;
label.top(btex $(d)$ etex,d);
fin;
end
input geometriesyr15;

figure(0,0,6u,4u);
pair a,b,c,d,m;
a=(0,2u);b=(2u,2.5u);c=(u,u);d=(5u,2u);
trace droite(a,b);trace droite(c,d);
trace perpendiculaire(a,b,b);
m=perpendiculaire(a,b,b) intersectionpoint droite(c,d);
trace codeperp(b,m,d,5);
trace codeperp(a,b,m,5);
fin;

figure(0,0,6u,4u);
pair a,b,c,d,m;
a=(0,2u);b=(2u,2.5u);c=(u,u);d=(5u,2u);
trace droite(a,b);trace droite(c,d);
trace perpendiculaire(a,b,b);
m=perpendiculaire(a,b,b) intersectionpoint droite(c,d);
trace codeperp(b,m,d,5);
trace marque_para(droite(a,b),droite(c,d),0.9);
fin;

figure(0,0,6u,4u);
pair a,b,c,d,e,f;
a=(0,2u);b=(2u,2.5u);c=(u,u);d=(5u,2u);e=(2u,0);f=(6u,u);
trace droite(a,b);trace droite(c,d);trace droite(e,f);
trace marque_para(droite(a,b),droite(c,d),0.4);
trace marque_para(droite(e,f),droite(c,d),0.7);
fin;

figure(0,0,7u,6u);
pair a,b,c,d;
a=(u,5u);b=(5u,2u);c=(0,2u);d=(6u,4u);
marque_p:="croix";
trace droite(c,d);
MarquePoint(a);MarquePoint(b);
label.top(btex $A$ etex,a);
label.bot(btex $B$ etex,b);
label.bot(btex $(d)$ etex,d);
fin;
end
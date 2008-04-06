input geometriesyr15;
figure(0,0,6u,5u) ;
a:=3cm ;
b:=2cm ;
c:=3.5cm ;
d:=2.3cm ;
z1=(a,a) ;
z2=(a,c) ;
z3=(a,d) ;
z4=(c,a) ;
z5=(d,0) ;
z6=(0,0);
trace z3--z2; trace z1--z4;
label.urt(btex $12$ etex,z1) ;
label.lrt(btex $13$ etex,z1) ;
label.ulft(btex $158$ etex,z1) ;
label.llft(btex $38$ etex,z1) ;
label.ulft(btex $2$ etex,z3) ;
drawoptions(withcolor rouge);
drawarrow (a-u,a+u/5)--(d,a+u/5);
drawarrow (a-u,d+u/5)--(a-u/4,d+u/5);
drawarrow (c+u/2,a+u/3)--(c,a+u/5);
drawarrow (c+u/2,a-u/3)--(c,a-u/5);

fin ;

end
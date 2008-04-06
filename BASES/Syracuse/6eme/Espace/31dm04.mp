input geometriepoint;
input constantes;
beginfig(1);
	unit=0.5*cm;
	z0=(1*unit,1*unit);label.llft(btex $F$ etex,z0);
	z1=z0 shifted (6*unit,0);label.lrt(btex $E$ etex,z1);
	z3=z0 shifted (3*unit,2*unit);label.lft(btex $G$ etex,z3);
	z4=z0 shifted (0,4*unit);label.ulft(btex $A$ etex,z4);
	z5=z4 shifted (6*unit,0);label.top(btex $D$ etex,z5);
	z2=z1 shifted (3*unit,2*unit);label.rt(btex $H$ etex,z2);
	z6=z5 shifted (3*unit,2*unit);label.urt(btex $C$ etex,z6);
	z7=z4 shifted (3*unit,2*unit);label.top(btex $B$ etex,z7);
	draw z0--z1--z2--z6--z7--z4--cycle;
	draw z4--z5--z6;draw z5--z1;
	draw z7--z3--z0 dashed evenly;
	%draw z6--z3--z1 dashed evenly;
	draw z2--z3 dashed evenly;
	endfig;
	  end
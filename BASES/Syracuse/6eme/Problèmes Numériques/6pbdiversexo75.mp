input geometriesyr16;

marque_horloge=1.5;
boolean aig;
aig=true;

vardef horloge=
  save $;
  picture $;
  pair centrehorloge;
  centrehorloge=(0,0);
  path tourhorloge;
  tourhorloge=cercles(centrehorloge,marque_horloge*cm);
  $=image(
    trace tourhorloge;
    for i=0 upto 59:
      if (i mod 5)=0:
	if (i mod 15)=0:
	  trace pointarc(tourhorloge,6*i)--(pointarc(tourhorloge,6*i) shifted (7*unitvector(centrehorloge-pointarc(tourhorloge,6*i)))) withpen pencircle scaled 3bp;
	else:
	  trace pointarc(tourhorloge,6*i)--(pointarc(tourhorloge,6*i) shifted (5*unitvector(centrehorloge-pointarc(tourhorloge,6*i)))) withpen pencircle scaled 1.5bp;
	fi;
      else:
	trace pointarc(tourhorloge,6*i)--(pointarc(tourhorloge,6*i) shifted (3*unitvector(centrehorloge-pointarc(tourhorloge,6*i))));
      fi;
    endfor;
    path graduhorloge;
    graduhorloge=cercles(centrehorloge,marque_horloge*cm-12*abs(unitvector(centrehorloge-pointarc(tourhorloge,0))));
    for i=1 upto 12:
      label(format("%10f",i),pointarc(graduhorloge,90-30*i));
    endfor;
    marque_p:="plein";
    pointe(centrehorloge);
    marque_p:="rien";
    );
  $
enddef;

vardef Horloge(expr aa,bb)=
  save $;
  picture $;
  path gdeaig,pteaig;
  $=image(
    trace horloge;
    gdeaig=centrehorloge--(pointarc(tourhorloge,0) shifted (7*unitvector(centrehorloge-pointarc(tourhorloge,0))));
    pteaig=centrehorloge--(pointarc(tourhorloge,0) shifted (25*unitvector(centrehorloge-pointarc(tourhorloge,0))));
    if aig=true:
      trace rotation(gdeaig,centrehorloge,90-6*bb);
      trace rotation(pteaig,centrehorloge,90-30*(aa+bb/60)) withpen pencircle scaled 2bp;
    fi;
    );
  $
enddef;

beginfig(1);
  trace Horloge(08,30);
endfig;
beginfig(2);
  trace Horloge(0,00);
endfig;
beginfig(3);
  trace Horloge(7,00);
endfig;

aig:=false;
beginfig(4);
  trace Horloge(23,35);
endfig;
beginfig(5);
  trace Horloge(00,00);
endfig;
beginfig(6);
  trace Horloge(07,17);
endfig;

beginfig(7);
  trace Horloge(13,20);
endfig;
beginfig(8);
  trace Horloge(14,20);
endfig;
beginfig(9);
  trace Horloge(14,50);
endfig;

end
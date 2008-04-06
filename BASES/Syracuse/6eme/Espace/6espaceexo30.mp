input geometriesyr16;

path segassm,segassf,segassml;%Mâle M.long
segassm=(0,0)--(subpath(4,8) of cercles(1/4[(0,0),u*(5,0)],0.2u))--reverse(subpath(0,4) of cercles(3/4[(0,0),u*(5,0)],0.3u))--(u*(5,0));

segassml=(0,0)--(subpath(4,8) of cercles(1/4[(0,0),u*(5*sqrt(2),0)],0.2u))--reverse(subpath(0,4) of cercles(3/4[(0,0),u*(5*sqrt(2),0)],0.3u))--(u*(5*sqrt(2),0));

vardef polyass(expr ptd,pta,tp,stp)=%
  path Segassc,Segassl,polya;%court et long
  picture $;
  Segassc=segassm;
  Segassl=segassml;
  Segassc:=rotation(Segassc,(0,0),angle(pta-ptd));
  Segassl:=rotation(Segassl,(0,0),angle(pta-ptd));
  if tp=3:%tri équi
    if stp=1:
      fillcolor:=vert;
      polya=(Segassc shifted(ptd))--(rotation(Segassc shifted(pta),pta,120))--(rotation(Segassc shifted(ptd+ptd-pta),ptd,-120))--cycle;
    elseif stp=2:%tri rec iso
      fillcolor:=bleu;
      polya=(Segassc shifted(ptd))--(rotation(Segassl shifted(pta),pta,135))--(rotation(Segassc shifted(ptd+ptd-pta),ptd,-90))--cycle;
    fi;
  fi;
  if tp=4:%carré court
    if stp=1:
      fillcolor:=jaune;
      polya=(Segassc shifted(ptd))--(rotation(Segassc shifted(pta),pta,90))--rotation((rotation(Segassc shifted(pta),pta,90)) shifted(rotation(ptd,pta,-90)-pta),rotation(ptd,pta,-90),90)--(rotation(Segassc shifted(ptd+ptd-pta),ptd,-90))--cycle;
    elseif stp=2:
      fillcolor:=rouge;
      polya=(Segassl shifted(ptd))--(rotation(Segassl shifted(pta),pta,90))--rotation((rotation(Segassl shifted(pta),pta,90)) shifted(rotation(ptd,pta,-90)-pta),rotation(ptd,pta,-90),90)--(rotation(Segassl shifted(ptd+ptd-pta),ptd,-90))--cycle;
    fi;
  fi;
  $=image(
    transparence polya;
    trace polya;
    );
  $
enddef;

figure(-5u,-5u,10u,10u);
pair A,B,C;
A=u*(1,1);
B-A=u*(5,0);
trace polyass(A,B,4,1);
fin;
end
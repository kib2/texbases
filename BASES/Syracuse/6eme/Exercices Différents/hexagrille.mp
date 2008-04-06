input LATEX;
input geometriesyr16;

u:=7.5mm;

vardef hexagone=
  save $;
  path $;
  path axeh;
  path cc;
  cc=cercles((0,0),u);
  axeh=for k=0 upto 5:
  pointarc(cc,90+60*k)--
  endfor
  cycle;
  deph:=sqrt(3)*u;
  depv:=1.5*u;
  $=axeh;
  $
enddef;

vardef hexagrille=
  save $;
  picture $;
  $=image(
    drawoptions(withpen pensquare scaled 1.5bp);
    draw hexagone shifted(-deph,0);
    draw hexagone;
    draw hexagone shifted(deph,0);
    draw hexagone shifted(-deph/2,depv);
    draw hexagone shifted(deph/2,depv);
    draw hexagone shifted(0,2*depv);
    draw hexagone shifted(-deph/2,-depv);
    draw hexagone shifted(deph/2,-depv);
    draw hexagone shifted(0,-2*depv);
    drawoptions();
    );
  $
enddef;

vardef case(expr aa,bb)=
  save $;
  pair $;
  if bb=0:
    $=(aa*deph,0)
  else:
    if (bb mod 2)=0:
      $=(aa*deph,bb*depv)
    else:
      if aa<0:
	$=(-deph/2+(abs(aa)-1)*deph,bb*depv)
      else:
	$=(deph/2+(abs(aa)-1)*deph,bb*depv)
      fi;
    fi;
  fi;
  $
enddef;

vardef appel@#(expr dep,arr,val)=
  save $;
  picture $;
  $=image(
    drawarrow (dep--arr) cutbefore (hexagone shifted(arr));
    label.@#(LATEX("\Large\bf"&decimal(val)&""),arr);
    );
  $
enddef;

vardef appelvide@#(expr dep,arr)=
  save $;
  picture $;
  $=image(
    drawarrow (dep--arr) cutbefore (hexagone shifted(arr));
    );
  $
enddef;

vardef Numerote(text t)=
  save k;
  pair aa[];
  aa1=case(0,2);
  aa2=case(-1,1);
  aa3=case(1,1);
  aa4=case(-1,0);
  aa5=case(0,0);
  aa6=case(1,0);
  aa7=case(-1,-1);
  aa8=case(1,-1);
  aa9=case(0,-2);
  k=0;
  picture $;
  $=image(
  for p_=t:
    k:=k+1;
    if numeric p_:
      label(LATEX("\Large"&decimal(p_)&""),aa[k]);
    fi;
  endfor;
  );
$
enddef;

beginfig(1);
  draw hexagrille;
  draw Numerote(6,1,2,5,4,7,3,9,8);
  draw appel.lrt(case(0,-2),case(1,-3),16);
  draw appel.rt(case(1,-1),case(2,-1),12);
  draw appel.rt(case(1,1),case(2,1),3);
  draw appel.urt(case(1,1),case(1,2),9);
endfig;
beginfig(2);
  draw hexagrille;
  draw Numerote(6,9,2,1,5,8,4,3,7);
  draw appelvide.rt(case(0,2),case(1,3));
  draw appelvide.rt(case(1,0),case(2,0));
  draw appelvide.lrt(case(1,-1),case(1,-2));
endfig;
beginfig(3);
  draw hexagrille;
  draw Numerote(3,1,"",6,"","",2,"","");
  draw appel.rt(case(1,1),case(2,1),8);
  draw appel.rt(case(1,0),case(2,0),20);
  draw appel.lrt(case(1,0),case(2,-1),15);
  draw appel.lrt(case(1,-1),case(1,-2),18);
endfig;
beginfig(4);
  draw hexagrille;
  draw Numerote(4,"","","",2,3,"","",5);
  draw appel.urt(case(0,2),case(1,3),13);
  draw appel.rt(case(1,1),case(2,1),8);
  draw appel.rt(case(1,0),case(2,0),13);
  draw appel.lrt(case(1,-1),case(1,-2),9);
endfig;
beginfig(5);
  draw hexagrille;
  draw Numerote("","","",3,1,"","","",7);
  draw appel.urt(case(1,1),case(1,2),18);
  draw appel.rt(case(1,0),case(2,0),6);
  draw appel.rt(case(1,-1),case(2,-1),15);
  draw appel.lrt(case(1,-1),case(1,-2),12);
endfig;
beginfig(6);
  draw hexagrille;
  draw Numerote(7,"","","",6,"","","",9);
  draw appel.urt(case(0,2),case(1,3),12);
  draw appel.urt(case(1,0),case(2,1),20);
  draw appel.rt(case(1,-1),case(2,-1),8);
  draw appel.lrt(case(0,-2),case(1,-3),18);
endfig;
end
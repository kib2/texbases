input constantes;
input geometriepoint1;
input papiers;
input espaceisom;
  defcube;
  picture piece[];
  picture base[];
  path bases[],ombre[];
  picture ombres[];
  bases1=pave(2,1,1);
  base2=tour(cube,1,1,1);
  currentpicture:=nullpicture;
  piece2=image(
    pointbase1=(0,0);
    pointbase2=pointbase1 shifted (0,1cm);
    pointbase3=pointbase2 shifted(-2*vectransb*cm);
    pointbase4=pointbase3 shifted(0,1cm);
    pointbase5=pointbase4 shifted(-vectransb*cm);
    pointbase6=pointbase5 shifted(0,-2cm);
    draw solidepave(6,vectrans);
    );
  %currentpicture:=nullpicture;
  piece1=image(
    pointbase3:=pointbase2 shifted(-vectransb*cm);
    pointbase4:=pointbase3 shifted(0,1cm);
    pointbase5:=pointbase4 shifted(-vectransb*cm);
    pointbase6:=pointbase5 shifted(0,-2cm);
    %piece1=
    draw solidepave(6,vectrans);
    );
  %currentpicture:=nullpicture;
  piece3=image(
    pointbase6:=pointbase5 shifted(0,-1cm);
    pointbase7:=pointbase6 shifted(-vectransb*cm);
    pointbase8:=pointbase7 shifted(0,-1cm);
    %piece3=
    draw solidepave(8,vectrans);
    );
  %currentpicture:=nullpicture;
  piece4=image(
    pointbase3:=pointbase2 shifted(-vectransb*cm);
    pointbase4:=pointbase3 shifted(0,1cm);
    pointbase5:=pointbase4 shifted(-2*vectransb*cm);
    pointbase6:=pointbase5 shifted(0,-1cm);
    pointbase7:=pointbase6 shifted(vectransb*cm);
    pointbase8:=pointbase7 shifted(0,-1cm);
    %piece4=
    draw solidepave(8,vectrans);
    );
  %currentpicture:=nullpicture;
  piece5=image(
    draw bases1 shifted((7*vectrans+vectransb+(0,3))*cm);
    draw base2 shifted((7*vectrans+vectransb+(0,3))*cm);
    draw base2 shifted((6*vectrans+(0,3))*cm);
    %piece5=currentpicture;
    %currentpicture:=nullpicture;
    );
  piece6=image(
    pointbase4:=pointbase3 shifted(0,-1cm);
    base5=solidepave(4,2*vectrans);
    pointbase2:=pointbase1 shifted(0,2*cm);
    pointbase3:=pointbase2 shifted(-vectransb*cm);
    pointbase4:=pointbase3 shifted(0,-2cm);
    base6=solidepave(4,vectrans);
    draw base5 shifted((10*vectrans)*cm);
    draw base6 shifted((11*vectrans+vectransb)*cm);
    %piece6=currentpicture;
    %currentpicture:=nullpicture;
    );
  piece7=image(
    draw base6 shifted((10*vectrans)*cm);
    draw base5 shifted((8*vectrans+2*vectransb+(0,1))*cm);
    %piece7=currentpicture;
    %currentpicture:=nullpicture;
    );
  piece8=image(
    pointbase2:=pointbase1 shifted(0,1cm);
    pointbase3:=pointbase2 shifted(-vectransb*cm);
    pointbase4:=pointbase3 shifted(0,-1cm);
    base10=solidepave(4,vectrans);%cube
    pointbase3:=pointbase2 shifted(-3*vectransb*cm);
    pointbase4:=pointbase3 shifted(0,-1cm);
    base11=solidepave(4,vectrans);%barre h 3
    pointbase2:=pointbase1 shifted(0,2*cm);
    pointbase3:=pointbase2 shifted(-vectransb*cm);
    pointbase4:=pointbase3 shifted(0,-2cm);
    base12=solidepave(4,vectrans);%barre v 2
    draw base12 shifted(12*vectrans*cm);
    draw base11 shifted((11*vectrans+vectransb)*cm);
    draw base10 shifted(10*vectrans*cm);
    %piece8=currentpicture;
    %currentpicture:=nullpicture;
    );
  piece9=image(
    draw piece2 shifted(10*vectrans*cm);
    draw base12 shifted((10*vectrans-2*vectransb+(0,-2))*cm);
    %piece9=currentpicture;
    %currentpicture:=nullpicture;
    );
  for i:=1 upto 9:
    beginfig(i);
      draw piece[i];
    endfig;
  endfor;
  beginfig(10);
    ombres2=image(
      ombre2=((8*vectrans+vectransb)*cm)--((9*vectrans+vectransb)*cm)--((9*vectrans-vectransb)*cm)--((8*vectrans-vectransb)*cm)--cycle;
        %draw hachure(60,0.25,0);
        %clip currentpicture to ombre2;
      draw hachurage(ombre2,60,0.25,0);
      draw ombre2;
      draw ((8*vectrans+vectransb)*cm)--((8*vectrans+vectransb+(0,2))*cm) dashed evenly;
      draw ((9*vectrans+vectransb)*cm)--((9*vectrans+vectransb+(0,2))*cm) dashed evenly;
      draw ((8*vectrans-vectransb)*cm)--((8*vectrans-vectransb+(0,2))*cm) dashed evenly;
      draw ((9*vectrans-vectransb)*cm)--((9*vectrans-vectransb+(0,2))*cm) dashed evenly;
      %ombres2=currentpicture;
      %currentpicture:=nullpicture;
      );
    ombres3=image(
      ombre3=((10*vectrans+(0,3))*cm)--((10*vectrans+2*vectransb+(0,3))*cm)--((10*vectrans+2*vectransb+(0,4))*cm)--((10*vectrans+vectransb+(0,4))*cm)--((10*vectrans+vectransb+(0,5))*cm)--((10*vectrans+(0,5))*cm)--cycle;
      %draw hachure(60,0.25,0);
      %clip currentpicture to ombre3;
      draw hachurage(ombre3,60,0.25,0);
      draw ombre3;
      draw ((10*vectrans+2*vectransb+(0,3))*cm)--((8*vectrans+2*vectransb+(0,3))*cm) dashed evenly;
      draw (((10*vectrans+2*vectransb+(0,3))*cm)--((8*vectrans+2*vectransb+(0,3))*cm)) shifted (0,1cm) dashed evenly;
      draw (((10*vectrans+2*vectransb+(0,3))*cm)--((8*vectrans+2*vectransb+(0,3))*cm)) shifted ((-vectransb+(0,1))*cm) dashed evenly;
      draw (((10*vectrans+2*vectransb+(0,3))*cm)--((8*vectrans+2*vectransb+(0,3))*cm)) shifted ((-vectransb+(0,2))*cm) dashed evenly;
      draw (((10*vectrans+2*vectransb+(0,3))*cm)--((8*vectrans+2*vectransb+(0,3))*cm)) shifted ((-2*vectransb+(0,2))*cm) dashed evenly;
      %ombres3=currentpicture;
      %currentpicture:=nullpicture;
      );
    ombres1=image(
      ombre1=((7*vectrans-2*vectransb+(0,3))*cm)--((8*vectrans-2*vectransb+(0,3))*cm)--((8*vectrans-2*vectransb+(0,5))*cm)--((7*vectrans-2*vectransb+(0,5))*cm)--cycle;
      %draw hachure(60,0.2,0);
      %clip currentpicture to ombre1;
      draw hachurage(ombre1,60,0.25,0);
      draw ombre1;
      draw ((7*vectrans-2*vectransb+(0,3))*cm)--((7*vectrans+(0,3))*cm) dashed evenly;
      draw ((8*vectrans-2*vectransb+(0,3))*cm)--((8*vectrans-vectransb+(0,3))*cm) dashed evenly;
      draw ((8*vectrans-2*vectransb+(0,5))*cm)--((8*vectrans+(0,5))*cm) dashed evenly;
      draw ((7*vectrans-2*vectransb+(0,5))*cm)--((7*vectrans+(0,5))*cm) dashed evenly;
      %ombres1=currentpicture;
      %currentpicture:=nullpicture;
      );
    draw ombres1;
    draw ombres2;
    draw ombres3;
    draw piece1 shifted((7*vectrans+2*vectransb+(0,3))*cm);
    drawarrow ((7*vectrans-1.5*vectransb+(0,1))*cm)--((9.5*vectrans-1.5*vectransb+(0,1))*cm) withpen pencircle scaled 2bp;
    drawarrow ((11*vectrans+1*vectransb+(0,0.5))*cm)--((11*vectrans-1.25*vectransb+(0,0.5))*cm) withpen pencircle scaled 2bp;
    drawarrow ((9.5*vectrans-vectransb+(0,5.5))*cm)--((9.5*vectrans-vectransb+(0,3.25))*cm) withpen pencircle scaled 2bp;
    %picture final;
    %final=currentpicture;
    %currentpicture:=nullpicture;
    picture ecrit[];
    ecrit1=image(
      label.top(btex par devant etex,((7*vectrans-1.5*vectransb+(0,1))*cm));
      currentpicture:=currentpicture rotatedabout(((7*vectrans-1.5*vectransb+(0,1))*cm),angle(((9.5*vectrans-1.5*vectransb+(0,1))*cm)-((7*vectrans-1.5*vectransb+(0,1))*cm)));
      );
  %currentpicture:=nullpicture;
    ecrit2=image(
      label.top(btex par la droite etex,((11*vectrans+1*vectransb)*cm));
      currentpicture:=currentpicture rotatedabout(((11*vectrans+1*vectransb)*cm),angle(((11*vectrans+1*vectransb)*cm)-((11*vectrans-1.5*vectransb)*cm)));
      );
    %currentpicture:=nullpicture;
  %draw final;
  draw ecrit1;
  draw ecrit2;
  label.top(btex par dessus etex,((9.5*vectrans-vectransb+(0,5.5))*cm));
endfig;
beginfig(11);
  u:=1.25cm;
  path ombrage[];
  picture projections[];
  ombrage1=(0.5u,3u)--(1u,3u)--(u,4u)--(0.5u,4u)--cycle;
  ombrage2=(1.5u,3u)--(2u,3u)--(2u,4.5u)--(1.5u,4.5u)--cycle;
  ombrage3=(2.5u,3u)--(4u,3u)--(4u,3.5u)--(3u,3.5u)--(3u,4u)--(2.5u,4u)--cycle;
  ombrage4=(4.5u,3u)--(6u,3u)--(6u,3.5u)--(5.5u,3.5u)--(5.5u,4u)--(5u,4u)--(5u,3.5u)--(4.5u,3.5u)--cycle;
  ombrage5=(7u,3u)--(8u,3u)--(8u,3.5u)--(7.5u,3.5u)--(7.5u,4u)--(6.5u,4u)--(6.5u,3.5u)--(7u,3.5u)--cycle;
  ombrage6=(0.5u,1u)--(1.5u,1u)--(1.5u,1.5u)--(1u,1.5u)--(1u,2u)--(0.5u,2u)--cycle;
  ombrage7=(3.5u,1u)--(4u,1u)--(4u,0.5u)--(4.5u,0.5u)--(4.5u,1u)--(5u,1u)--(5u,1.5u)--(4.5u,1.5u)--(4.5u,2u)--(4u,2u)--(4u,1.5u)--(3.5u,1.5u)--cycle;
  ombrage8=(6.5u,1u)--(7u,1u)--(7u,0.5u)--(7.5u,0.5u)--(7.5u,1u)--(8u,1u)--(8u,1.5u)--(7u,1.5u)--(7u,2u)--(6.5u,2u)--cycle;
  for i:=1 upto 8:
    projections[i]=image(
      %draw hachure(60,0.2,0);
      %clip currentpicture to ombrage[i];
      draw hachurage(ombrage[i],60,0.25,0);
      draw ombrage[i];
      );
    %projections[i]=currentpicture;
    %currentpicture:=nullpicture;
  endfor
  for i:=1 upto 8:
    draw projections[i];
  endfor
  label.bot(btex $m$ etex,(0.75u,3u));
  label.bot(btex $n$ etex,(1.75u,3u));
  label.bot(btex $o$ etex,(3.25u,3u));
  label.bot(btex $p$ etex,(5.25u,3u));
  label.bot(btex $q$ etex,(7.25u,3u));
  label.bot(btex $r$ etex,(1u,1u));
  label.bot(btex $s$ etex,(4.25u,0.5u));
  label.bot(btex $t$ etex,(7.25u,0.5u));
endfig;
end
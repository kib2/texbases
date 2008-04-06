input geometriesyr16;
picture portev,porteh;
portev=image(
  trace segment((0,0),u*(0,0.3));
  trace segment(u*(0,0.7),u*(0,1));
  );
porteh=image(
  trace segment((0,0),u*(0.55,0));
  trace segment(u*(0.95,0),u*(1.5,0));
  );
figure(0,0,9u,5u);
trace feuillet;
for l=1 upto 4:
  for k=0 upto 5:
    trace porteh shifted(k*(1.5u,0)+l*(0,u));
  endfor;
endfor;
for l=1 upto 5:
  for k=0 upto 4:
    trace portev shifted(l*(1.5u,0)+k*(0,u));
  endfor;
endfor;
%ligne 4
label(btex 1 etex,iso((0,0),u*(1.5,1)) shifted(u*(0,4)));
label(btex 1,05 etex,iso((0,0),u*(1.5,1)) shifted(u*(1.5,4)));
label(btex 1,25 etex,iso((0,0),u*(1.5,1)) shifted(u*(3,4)));
label(btex 1,28 etex,iso((0,0),u*(1.5,1)) shifted(u*(4.5,4)));
label(btex 1,31 etex,iso((0,0),u*(1.5,1)) shifted(u*(6,4)));
label(btex 1,29 etex,iso((0,0),u*(1.5,1)) shifted(u*(7.5,4)));
%ligne 3
label(btex 3,2 etex,iso((0,0),u*(1.5,1)) shifted(u*(0,3)));
label(btex 0,99 etex,iso((0,0),u*(1.5,1)) shifted(u*(1.5,3)));
label(btex 1,35 etex,iso((0,0),u*(1.5,1)) shifted(u*(3,3)));
label(btex 1,45 etex,iso((0,0),u*(1.5,1)) shifted(u*(4.5,3)));
label(btex 1,32 etex,iso((0,0),u*(1.5,1)) shifted(u*(6,3)));
label(btex 1,5 etex,iso((0,0),u*(1.5,1)) shifted(u*(7.5,3)));
%ligne 2
label(btex 4,5 etex,iso((0,0),u*(1.5,1)) shifted(u*(0,2)));
label(btex 1,6 etex,iso((0,0),u*(1.5,1)) shifted(u*(1.5,2)));
label(btex 1,55 etex,iso((0,0),u*(1.5,1)) shifted(u*(3,2)));
label(btex 1,43 etex,iso((0,0),u*(1.5,1)) shifted(u*(4.5,2)));
label(btex 2,19 etex,iso((0,0),u*(1.5,1)) shifted(u*(6,2)));
label(btex 1,6 etex,iso((0,0),u*(1.5,1)) shifted(u*(7.5,2)));
%ligne 1
label(btex 1,7 etex,iso((0,0),u*(1.5,1)) shifted(u*(0,1)));
label(btex 1,61 etex,iso((0,0),u*(1.5,1)) shifted(u*(1.5,1)));
label(btex 1,85 etex,iso((0,0),u*(1.5,1)) shifted(u*(3,1)));
label(btex 1,84 etex,iso((0,0),u*(1.5,1)) shifted(u*(4.5,1)));
label(btex 2,17 etex,iso((0,0),u*(1.5,1)) shifted(u*(6,1)));
label(btex 3,15 etex,iso((0,0),u*(1.5,1)) shifted(u*(7.5,1)));
%ligne 0
label(btex 1,71 etex,iso((0,0),u*(1.5,1)) shifted(u*(0,0)));
label(btex 1,75 etex,iso((0,0),u*(1.5,1)) shifted(u*(1.5,0)));
label(btex 1,79 etex,iso((0,0),u*(1.5,1)) shifted(u*(3,0)));
label(btex 1,8 etex,iso((0,0),u*(1.5,1)) shifted(u*(4.5,0)));
label(btex 2,18 etex,iso((0,0),u*(1.5,1)) shifted(u*(6,0)));
label(btex 3 etex,iso((0,0),u*(1.5,1)) shifted(u*(7.5,0)));
fin;
end

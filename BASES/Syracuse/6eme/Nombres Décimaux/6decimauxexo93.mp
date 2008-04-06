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
label(btex 3 etex,iso((0,0),u*(1.5,1)) shifted(u*(0,4)));
label(btex 2,99 etex,iso((0,0),u*(1.5,1)) shifted(u*(1.5,4)));
label(btex 2,876 etex,iso((0,0),u*(1.5,1)) shifted(u*(3,4)));
label(btex 2,869 etex,iso((0,0),u*(1.5,1)) shifted(u*(4.5,4)));
label(btex 2,95 etex,iso((0,0),u*(1.5,1)) shifted(u*(6,4)));
label(btex 2,83 etex,iso((0,0),u*(1.5,1)) shifted(u*(7.5,4)));
%ligne 3
label(btex 2,97 etex,iso((0,0),u*(1.5,1)) shifted(u*(0,3)));
label(btex 2,98 etex,iso((0,0),u*(1.5,1)) shifted(u*(1.5,3)));
label(btex 2,87 etex,iso((0,0),u*(1.5,1)) shifted(u*(3,3)));
label(btex 2,871 etex,iso((0,0),u*(1.5,1)) shifted(u*(4.5,3)));
label(btex 2,84 etex,iso((0,0),u*(1.5,1)) shifted(u*(6,3)));
label(btex 2,839 etex,iso((0,0),u*(1.5,1)) shifted(u*(7.5,3)));
%ligne 2
label(btex 2,875 etex,iso((0,0),u*(1.5,1)) shifted(u*(0,2)));
label(btex 2,879 etex,iso((0,0),u*(1.5,1)) shifted(u*(1.5,2)));
label(btex 2,875 etex,iso((0,0),u*(1.5,1)) shifted(u*(3,2)));
label(btex 2,859 etex,iso((0,0),u*(1.5,1)) shifted(u*(4.5,2)));
label(btex 2,857 etex,iso((0,0),u*(1.5,1)) shifted(u*(6,2)));
label(btex 2,836 etex,iso((0,0),u*(1.5,1)) shifted(u*(7.5,2)));
%ligne 1
label(btex 2,881 etex,iso((0,0),u*(1.5,1)) shifted(u*(0,1)));
label(btex 2,873 etex,iso((0,0),u*(1.5,1)) shifted(u*(1.5,1)));
label(btex 2,861 etex,iso((0,0),u*(1.5,1)) shifted(u*(3,1)));
label(btex 2,86 etex,iso((0,0),u*(1.5,1)) shifted(u*(4.5,1)));
label(btex 2,865 etex,iso((0,0),u*(1.5,1)) shifted(u*(6,1)));
label(btex 2,831 etex,iso((0,0),u*(1.5,1)) shifted(u*(7.5,1)));
%ligne 0
label(btex 2,884 etex,iso((0,0),u*(1.5,1)) shifted(u*(0,0)));
label(btex 2,869 etex,iso((0,0),u*(1.5,1)) shifted(u*(1.5,0)));
label(btex 2,866 etex,iso((0,0),u*(1.5,1)) shifted(u*(3,0)));
label(btex 2,856 etex,iso((0,0),u*(1.5,1)) shifted(u*(4.5,0)));
label(btex 2,859 etex,iso((0,0),u*(1.5,1)) shifted(u*(6,0)));
label(btex 2,83 etex,iso((0,0),u*(1.5,1)) shifted(u*(7.5,0)));
fin;
end

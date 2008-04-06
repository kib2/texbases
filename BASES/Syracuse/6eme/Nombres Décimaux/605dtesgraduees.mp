input geometriesyr16;

vardef axegradue=
  save $;
  picture $;
  $=image(
    x.u:=2cm;
    y.u:=0.5cm;
    quad.u:=2cm;
    origine((0.1,0));
trace droite(pp(0,1),pp(3,1));
for k=0 upto 5:
  trace segment(pp(0,0),pp(0,2)) shifted(k*(pp(1,0)-pp(0,0)));
endfor;
for k=0 upto 110:
  trace segment(pp(0,0.5),pp(0,1.5)) shifted(k*(pp(0.5,0)-pp(0,0)));
endfor;
for k=0 upto 50:
  trace segment(pp(0,0.75),pp(0,1.25)) shifted(k*(pp(0.1,0)-pp(0,0)));
endfor;
    );
  $
enddef;

vardef abscisse(expr nom,sci)=
  save $;
  picture $;
  $=image(
    drawarrow pp(sci,-0.5)--pp(sci,0.5);
    label.bot(nom,pp(sci,-0.5));
    );
  $
enddef;

figure(0,-u,8.4u,2u);
trace axegradue;
label.top(btex 0 etex,pp(0,2));
label.top(btex 1 etex,pp(1,2));
label.top(btex 2 etex,pp(2,2));
label.top(btex 3 etex,pp(3,2));
label.top(btex 4 etex,pp(4,2));
trace abscisse(btex a etex,0.2);
trace abscisse(btex b etex,1.2);
trace abscisse(btex c etex,2.7);
trace abscisse(btex d etex,3.9);
fin;

figure(0,-u,8.4u,2u);
trace axegradue;
label.top(btex 9 etex,pp(1,2));
label.top(btex 10 etex,pp(2,2));
trace abscisse(btex e etex,0.3);
trace abscisse(btex f etex,1.4);
trace abscisse(btex g etex,2.5);
trace abscisse(btex h etex,3.6);
fin;

figure(0,-u,8.4u,2u);
trace axegradue;
label.top(btex 0,6 etex,pp(0,2));
label.top(btex 0,8 etex,pp(2,2));
trace abscisse(btex i etex,0.4);
trace abscisse(btex j etex,1.7);
trace abscisse(btex k etex,2.5);
trace abscisse(btex l etex,3.1);
fin;

figure(0,-u,8.4u,2u);
trace axegradue;
label.top(btex 0 etex,pp(0,2));
label.top(btex 0,1 etex,pp(1,2));
label.top(btex 0,2 etex,pp(2,2));
label.top(btex 0,3 etex,pp(3,2));
label.top(btex 0,4 etex,pp(4,2));
trace abscisse(btex a etex,0.1);
trace abscisse(btex b etex,1.5);
trace abscisse(btex c etex,2.3);
trace abscisse(btex d etex,3.8);
fin;

figure(0,-u,8.4u,2u);
trace axegradue;
label.top(btex 9,1 etex,pp(1,2));
label.top(btex 9,2 etex,pp(2,2));
trace abscisse(btex e etex,0.8);
trace abscisse(btex f etex,1.7);
trace abscisse(btex g etex,2.5);
trace abscisse(btex h etex,3.2);
fin;

figure(0,-u,8.4u,2u);
trace axegradue;
label.top(btex 3,07 etex,pp(1,2));
label.top(btex 3,09 etex,pp(3,2));
trace abscisse(btex i etex,0.6);
trace abscisse(btex j etex,1.6);
trace abscisse(btex k etex,2.8);
trace abscisse(btex l etex,3.4);
fin;

figure(0,-u,8.4u,2u);
trace axegradue;
label.top(btex 0,07 etex,pp(0,2));
label.top(btex 0,08 etex,pp(2,2));
trace abscisse(btex m etex,0.4);
trace abscisse(btex n etex,1.8);
trace abscisse(btex o etex,2.2);
trace abscisse(btex p etex,3.6);
fin;
%nouvel exercice
figure(0,-u,10.4u,2u);
trace axegradue;
label.top(btex 0 etex,pp(0,2));
trace abscisse(btex 0,1 etex,0.1);
trace abscisse(btex a etex,1);
trace abscisse(btex b etex,2.5);
trace abscisse(btex c etex,3.9);
trace abscisse(btex d etex,4.6);
fin;
figure(0,-u,10.4u,2u);
trace axegradue;
label.top(btex 5 etex,pp(2,2));
trace abscisse(btex 5,1 etex,2.1);
trace abscisse(btex e etex,0);
trace abscisse(btex f etex,0.8);
trace abscisse(btex g etex,3.2);
trace abscisse(btex h etex,4.5);
fin;
figure(0,-u,10.4u,2u);
trace axegradue;
label.top(btex 0 etex,pp(0,2));
label.top(btex 0,01 etex,pp(1,2));
trace abscisse(btex i etex,0.4);
trace abscisse(btex j etex,2.5);
trace abscisse(btex k etex,3.3);
trace abscisse(btex l etex,4.6);
fin;
%autre exercice
figure(0,-u,10.4u,2u);
trace axegradue;
label.top(btex 0 etex,pp(0,2));
trace abscisse(btex 0,2 etex,0.1);
trace abscisse(btex a etex,1);
trace abscisse(btex b etex,2.5);
trace abscisse(btex c etex,3.8);
trace abscisse(btex d etex,4.5);
fin;
figure(0,-u,10.4u,2u);
trace axegradue;
label.top(btex 0 etex,pp(0,2));
label.top(btex 0,1 etex,pp(1,2));
trace abscisse(btex e etex,0.4);
trace abscisse(btex f etex,1.5);
trace abscisse(btex g etex,3);
trace abscisse(btex h etex,4.3);
fin;
figure(0,-u,10.4u,2u);
trace axegradue;
label.top(btex 5 etex,pp(0,2));
label.top(btex 5,4 etex,pp(4,2));
trace abscisse(btex i etex,1);
trace abscisse(btex j etex,1.9);
trace abscisse(btex k etex,2.5);
trace abscisse(btex l etex,4.6);
fin;
%autre exercice
figure(0,-u,10.4u,2u);
trace axegradue;
label.top(btex 20 etex,pp(2,2));
label.top(btex 21 etex,pp(3,2));
trace abscisse(btex a etex,0.5);
trace abscisse(btex b etex,1);
trace abscisse(btex c etex,2.4);
trace abscisse(btex d etex,4.3);
fin;
figure(0,-u,10.4u,2u);
trace axegradue;
label.top(btex 6 etex,pp(2,2));
label.top(btex 6,01 etex,pp(3,2));
trace abscisse(btex e etex,0);
trace abscisse(btex f etex,1.4);
trace abscisse(btex g etex,2.4);
trace abscisse(btex h etex,3.8);
fin;
figure(0,-u,10.4u,2u);
trace axegradue;
label.top(btex 7,15 etex,pp(2,2));
label.top(btex 7,16 etex,pp(3,2));
trace abscisse(btex i etex,0.4);
trace abscisse(btex j etex,1);
trace abscisse(btex k etex,2.7);
trace abscisse(btex l etex,4.3);
fin;
%autre exercice
figure(0,-u,10.4u,2u);
trace axegradue;
label.top(btex 5 etex,pp(2,2));
label.top(btex 6 etex,pp(3,2));
fin;
figure(0,-u,10.4u,2u);
trace axegradue;
label.top(btex 3 etex,pp(2,2));
label.top(btex 4 etex,pp(3,2));
fin;
figure(0,-u,10.4u,2u);
trace axegradue;
label.top(btex 2 etex,pp(0,2));
label.top(btex 2,5 etex,pp(5,2));
fin;
figure(0,-u,10.4u,2u);
trace axegradue;
label.top(btex 0,7 etex,pp(0,2));
label.top(btex 1 etex,pp(3,2));
fin;
end

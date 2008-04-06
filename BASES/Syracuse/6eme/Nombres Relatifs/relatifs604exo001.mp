input geometriesyr16;
figure(0,0,8u,1.6u);
trace papiercahier withcolor bleu;
origine((4,1));
drawarrow placepoint(-4,0)--placepoint(6,0);
pair A,B,C,O;
O=placepoint(0,0);
B=placepoint(2,0);
C=placepoint(4,0);
A=placepoint(-1,0);
marque_p:="plein";
for k=-4 upto 6:
  pointe(placepoint(k,0));
endfor;
marque_p:="non";
nomme.top(A);
nomme.top(B);
nomme.top(C);
nomme.top(O);
label.bot(btex $-20$ etex,placepoint(-2,0));
label.bot(btex $-10$ etex,A);
label.bot(btex 0 etex,O);
label.bot(btex 10 etex,placepoint(1,0));
fin;
end

  

input geometriesyr16;
input LATEX;
figure(0,0,8u,5u);
pair A,B;
A=u*(2,1);
B=pointarc(cercles(A,3.5u),30);
%trace droite(A,B);
path cc;
cc=u*(1,0)..u*(0.5,1)..u*(0.7,3)..u*(1,3.1)..u*(1.5,0.75)..u*(2.5,0.9)..u*(3,2.5)..u*(2.6,4)..u*(4,3.9)..u*(4.2,1.5)..u*(4.5,2)..u*(5.5,2.3)..u*(5.2,3.5)..u*(6,4)..u*(7,3)..u*(6.5,1.5);
trace cc;
marque_p:="croix";
nomme.top(A);
nomme.top(B);
label.rt(LATEX("$\mathscr{L}$"),u*(6.5,1.5));
fin;
figure(0,0,8u,5u);
trace cc;
marque_p:="croix";
nomme.top(A);
nomme.top(B);
label.rt(LATEX("$\mathscr{L}$"),u*(6.5,1.5));
fin;
end
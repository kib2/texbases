input geometriesyr16;
figure(0,0,7u,8u);
trace papiermillimetre withcolor gris;
pair Au,Bu,Cu,Du;
pair Ar,Br,Cr,Dr;
Au=u*(0.5,1.7);
Bu=u*(2,2.7);
Cu=u*(3,3.2);
Du=u*(4.5,6.4);
trace Au--Bu--Cu--Du;
Ar=u*(0.5,3.1);
Br=u*(2,2.6);
Cr=u*(3,2);
Dr=u*(4.5,1.4);
trace Ar--Br--Cr--Dr;
trace fullcircle scaled 1.5bp shifted Au;
trace fullcircle scaled 1.5bp shifted Bu;
trace fullcircle scaled 1.5bp shifted Cu;
trace fullcircle scaled 1.5bp shifted Du;
trace fullcircle scaled 1.5bp shifted Ar;
trace fullcircle scaled 1.5bp shifted Br;
trace fullcircle scaled 1.5bp shifted Cr;
trace fullcircle scaled 1.5bp shifted Dr;
trace u*(0,0.5)--u*(7,0.5) withpen pencircle scaled 2bp;
trace u*(0.5,0.5)--u*(0.5,8) withpen pencircle scaled 2bp;
label.urt(btex Population (millions) etex,u*(0.5,7.5));
label.bot(btex Ann\'ees etex,u*(6,0.5));
dotlabel.bot(btex 1900 etex,u*(0.5,0.5));
trace fullcircle scaled 1.5bp shifted (u*(1,0.5));
trace fullcircle scaled 1.5bp shifted (u*(1.5,0.5));
dotlabel.bot(btex 1930 etex,u*(2,0.5));
trace fullcircle scaled 1.5bp shifted (u*(2.5,0.5));
dotlabel.bot(btex 1950 etex,u*(3,0.5));
trace fullcircle scaled 1.5bp shifted (u*(3.5,0.5));
trace fullcircle scaled 1.5bp shifted (u*(4,0.5));
dotlabel.bot(btex 1980 etex,u*(4.5,0.5));
label.ulft(btex 10 etex,u*(0.5,0.5));
dotlabel.lft(btex 15 etex,u*(0.5,1.5));
dotlabel.lft(btex 20 etex,u*(0.5,2.5));
dotlabel.lft(btex 25 etex,u*(0.5,3.5));
dotlabel.lft(btex 30 etex,u*(0.5,4.5));
dotlabel.lft(btex 35 etex,u*(0.5,5.5));
dotlabel.lft(btex 40 etex,u*(0.5,6.5));
dotlabel.lft(btex 45 etex,u*(0.5,7.5));
drawarrow (u*(5.5,2.1))--(u*(4,1.6));
label.urt(btex rurale etex,u*(5.5,2.1));
drawarrow (u*(5.5,5.5))--(u*(4,5.3));
label.urt(btex urbaine etex,u*(5.5,5.5));
fin;
figure(-1u,0,6u,5u);
pair A,B,C;
B=u*(1,1);
A=u*(0,4);
C=u*(5,1);
trace triangle(A,B,C);
trace cotation(B,A,2mm,2mm,btex 4~cm etex);
trace cotation(B,C,-2mm,-2mm,btex 7~cm etex);
trace cotation(A,C,2mm,2mm,btex 9~cm etex);
nomme.llft(B);
nomme.top(A);
nomme.lrt(C);
fin;
end
input geometriesyr16;
input outilssyr;
figure(0,0,8.5u,6u);
trace feuillet withcolor blanc;
pair A,B;
B=u*(0.5,1);
A=u*(4,2);
trace rapporteurdouble(A,1.25[A,B],-1);
trace demidroite(A,B) withpen pencircle scaled 1.5bp;
marque_p:="croix";
nomme.bot(A);
nomme.bot(B);
fin;
end

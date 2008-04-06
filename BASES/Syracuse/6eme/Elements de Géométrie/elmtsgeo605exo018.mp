input geometriesyr16;
figure(0,0,8u,6u);
pair A,B,I;
A=u*(3,3);
B-A=u*(2.5,0);
trace cercles(A,B);
trace segment(A,B);
I=iso(A,B);
marque_p:="croix";
nomme.lft(A);
nomme.rt(B);
nomme.bot(I);
marque_p:="non";
trace codesegments(A,I,I,B,1);
fin;
end
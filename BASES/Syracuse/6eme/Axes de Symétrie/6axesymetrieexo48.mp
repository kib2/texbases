%@Auteur:Véronique Glaçon
input geometriesyr16;

figure(0,0,4u,4u);
pair A,B,I,J;
A=u*(3,0.5);
B=u*(1,3);
trace segment(A,B);
I=milieu(A,B);
trace codesegments(A,I,I,B,2);
trace perpendiculaire(A,B,I);
J=rotation(A,I,90);
trace codeperp(A,I,J,5);
trace marquesegment(A,B);
nomme.urt(A);
nomme.llft(B);
label.bot("(d)",u*(3.5,3.5));
fin;

end


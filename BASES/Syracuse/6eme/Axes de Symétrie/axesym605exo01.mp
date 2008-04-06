input geometriesyr16;
figure(0,0,6u,6u);
pair A,B,C,I,E;
trace triangleqcq(C,B,A);
I=iso(C,B);
path dd;
dd=perpendiculaire(C,B,I);
E=dd intersectionpoint droite(A,C);
trace dd;
trace codesegments(C,I,I,B,1);
trace codeperp(E,I,B,6);
nomme.lft(C);
nomme.rt(B);
nomme.top(A);
nomme.ulft(E);
label.lft(btex $(d)$ etex,1.15[E,I]);
fin;
end

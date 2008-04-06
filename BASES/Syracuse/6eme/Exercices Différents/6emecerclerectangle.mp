input geometriesyr16;
figure(0,0,10u,10u);
pair O,A,B,C;
O=u*(5,5);
path cc;
cc=cercles(O,4u);
A=pointarc(cc,60);
B=pointarc(cc,180);
C=pointarc(cc,300);
%piece6
remplis (arccercle(A,pointarc(cc,120),O)--O--reverse(arccercle(A,O,pointarc(cc,0)))--cycle) withcolor orange;
%piece5
remplis (O--pointarc(cc,120)--arccercle(pointarc(cc,120),B,O)-- reverse(arccercle(O,B,pointarc(cc,240)))--cycle) withcolor ciel;
%piece4
remplis (arccercle(B,O,pointarc(cc,120))--arccercle(O,C,pointarc(cc,0))--reverse(arccercle(B,C,O))--cycle) withcolor vert;
%piece3
remplis (arccercle(C,O,pointarc(cc,240))--arccercle(O,A,pointarc(cc,120))--cycle) withcolor rose;
%piece2
remplis (arccercle(C,pointarc(cc,0),O)--iso(A,C)--cycle) withcolor bleu;
%piece1
remplis (arccercle(pointarc(cc,0),A,O)--iso(A,C)--cycle) withcolor jaune;
%tracé
trace cc;
trace O--pointarc(cc,120);
trace C--A;
trace iso(A,C)--pointarc(cc,0);
trace arccercle(C,B,pointarc(cc,240));
trace arccercle(B,A,pointarc(cc,120));
trace arccercle(A,C,pointarc(cc,0));
fin;
figure(0,0,20u,10u);
path piece[];
piece6=(arccercle(A,pointarc(cc,120),O)--O--reverse(arccercle(A,O,pointarc(cc,0)))--cycle);
piece5=(O--pointarc(cc,120)--arccercle(pointarc(cc,120),B,O)-- reverse(arccercle(O,B,pointarc(cc,240)))--cycle);
piece4=(arccercle(B,O,pointarc(cc,120))--arccercle(O,C,pointarc(cc,0))--reverse(arccercle(B,C,O))--cycle);
piece3=(arccercle(C,O,pointarc(cc,240))--arccercle(O,A,pointarc(cc,120))--cycle);
piece2=(arccercle(C,pointarc(cc,0),O)--iso(A,C)--cycle);
piece1=(arccercle(pointarc(cc,0),A,O)--iso(A,C)--cycle);
remplis rotation(piece6,pointarc(cc,120),-30) withcolor orange;
remplis rotation(piece3,A,90) shifted(pointarc(cc,120)-A) withcolor rose;
remplis rotation(piece5 shifted(rotation(A,pointarc(cc,120),-30)-B),rotation(A,pointarc(cc,120),-30),-30) withcolor ciel;
remplis rotation(piece4,C,-150) shifted(rotation(O,pointarc(cc,120),-30)-C) withcolor vert;
remplis rotation(piece2,pointarc(cc,0),90) shifted(rotation(O,pointarc(cc,120),-30)-pointarc(cc,0)) withcolor bleu;
remplis rotation(piece1,A,90) shifted((rotation(C,pointarc(cc,0),90) shifted(rotation(O,pointarc(cc,120),-30)-pointarc(cc,0)))-A) withcolor jaune;
trace rotation(piece6,pointarc(cc,120),-30);
trace rotation(piece3,A,90) shifted(pointarc(cc,120)-A);
trace rotation(piece5 shifted(rotation(A,pointarc(cc,120),-30)-B),rotation(A,pointarc(cc,120),-30),-30);
trace rotation(piece4,C,-150) shifted(rotation(O,pointarc(cc,120),-30)-C);
trace rotation(piece2,pointarc(cc,0),90) shifted(rotation(O,pointarc(cc,120),-30)-pointarc(cc,0));
trace rotation(piece1,A,90) shifted((rotation(C,pointarc(cc,0),90) shifted(rotation(O,pointarc(cc,120),-30)-pointarc(cc,0)))-A);
fin;
end

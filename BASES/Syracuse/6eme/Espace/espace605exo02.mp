input geometriesyr16;
figure(0,0,15u,5.5u);
trace grille(0.5) withcolor orange;
drawoptions(withpen pensquare scaled 1.5bp);
%1
trace polygone(pp(3,4),pp(4,4),pp(4,9),pp(3,9));
trace segment(pp(2.5,5),pp(4.5,5));
trace segment(pp(2.5,8),pp(4.5,8));
%2
trace polygone(pp(8,3),pp(11,3),pp(11,10),pp(8,10));
trace segment(pp(7.5,5),pp(11.5,5));
trace segment(pp(7.5,8),pp(11.5,8));
%3
trace polygone(pp(17,5),pp(22,5),pp(22,7),pp(17,7));
trace segment(pp(20,4.5),pp(20,7.5));
trace segment(pp(22,4.5),pp(22,7.5));
trace segment(pp(22,5),pp(22.5,5));
trace segment(pp(22,7),pp(22.5,7));
fin;
figure(0,0,15u,5.5u);
trace grille(0.5) withcolor orange;
drawoptions(withpen pensquare scaled 1.5bp);
%1
trace polygone(pp(3,4),pp(4,4),pp(4,9),pp(3,9));
trace segment(pp(2.5,5),pp(4.5,5));
trace segment(pp(2.5,8),pp(4.5,8));
fillcolor:=jaune;
path cc[];
cc1=polygone(pp(1,5),pp(3,5),pp(3,8),pp(1,8));
cc2=polygone(pp(4,5),pp(5,5),pp(5,8),pp(4,8));
transparence cc1;
transparence cc2;
trace cc1 dashed evenly;
trace cc2 dashed evenly;
trace segment(pp(2,5),pp(2,8)) dashed evenly;
%2
trace polygone(pp(8,3),pp(11,3),pp(11,10),pp(8,10));
trace segment(pp(7.5,5),pp(11.5,5));
trace segment(pp(7.5,8),pp(11.5,8));
path cc[];
cc1=polygone(pp(6,5),pp(8,5),pp(8,8),pp(6,8));
cc2=polygone(pp(11,5),pp(16,5),pp(16,8),pp(11,8));
fillcolor:=ciel;
transparence cc1;
transparence cc2;
trace cc1 dashed evenly;
trace cc2 dashed evenly;
trace segment(pp(13,5),pp(13,8)) dashed evenly;
%3
trace polygone(pp(17,5),pp(22,5),pp(22,7),pp(17,7));
trace segment(pp(20,4.5),pp(20,7.5));
trace segment(pp(22,4.5),pp(22,7.5));
trace segment(pp(22,5),pp(22.5,5));
trace segment(pp(22,7),pp(22.5,7));
path cc[];
cc1=polygone(pp(20,5),pp(20,2),pp(22,2),pp(22,5));
cc2=polygone(pp(20,7),pp(20,10),pp(22,10),pp(22,7));
cc3=polygone(pp(22,5),pp(27,5),pp(27,7),pp(22,7));
fillcolor:=rose;
transparence cc1;
transparence cc2;
transparence cc3;
trace cc1 dashed evenly;
trace cc2 dashed evenly;
trace cc3 dashed evenly;
trace segment(pp(25,5),pp(25,7)) dashed evenly;
drawoptions();
fin;
end



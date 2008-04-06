input geometriesyr16;

figure(0,0,5u,5u);
path a,b,c;
a=polygone(u*(0,0),u*(0,2),u*(2,2),u*(2,0));
b=polygone(u*(2,0),u*(2,2),u*(3,3),u*(5,3),u*(5,1),u*(4,0));
c=polygone(u*(0,2),u*(0,4),u*(1,5),u*(3,5),u*(3,3),u*(2,2));
transparence a;
fillcolor:=0.75[jaune,blanc];
transparence b;
fillcolor:=0.3[green,blanc];
transparence c;
trace a;
trace b;
trace u*(2,2)--u*(4,2)--u*(5,3);
trace segment(u*(4,2),u*(4,0));
trace c;
trace u*(0,4)--u*(2,4)--u*(3,5);
trace segment(u*(2,4),u*(2,2));
fin;
end
input geometriesyr16;

path Cube;
Cube=u*(1,1)--u*(2,1)--u*(2,2)--u*(1,2)--cycle;
path cube;

path Case[];

vardef escalier(expr nbmar)=
  save $;
  picture $;
  $=image(
    cube:=Cube;
    for i=nbmar downto 1:
      for k=1 upto (2*(i-1)+1):
	Case[100*(nbmar-i)+k]:=cube shifted((k-1)*(u*(1,0))+(nbmar-i)*(u*(0,1)));
      endfor;
      cube:=cube shifted(u*(1,0));
    endfor;
    cube:=Cube;
    for i=nbmar downto 1:
      for k=1 upto (2*(i-1)+1):
	trace cube shifted((k-1)*(u*(1,0))+(nbmar-i)*(u*(0,1)));
      endfor;
      cube:=cube shifted(u*(1,0));
    endfor;
    );
  picture moitieesca;
  moitieesca=image(
    for i=nbmar downto 1:
      for k=1 upto i:
	trace Case[100*(nbmar-i)+k] withpen pencircle scaled 2bp;
      endfor;
    endfor;
    );
  picture moitieescaabouger;
  moitieescaabouger=image(
    for i=nbmar downto 1:
      for k=i+1 upto (2*(i-1)+1):
	trace Case[100*(nbmar-i)+k] withpen pencircle scaled 2bp;
      endfor;
    endfor;
    );
  pair centrot;
  centrot=u*(nbmar+1,nbmar+1);
  $
enddef;

for k=1 upto 3:
  g:=k;
  figure(0,-u,u*(2*g+1),u*(g+3));
  trace escalier(g);
  fin;
endfor;
g:=10;
figure(0,-u,u*(2*g+1),u*(g+3));
trace escalier(g);
trace rotation(moitieescaabouger,centrot,-90) withcolor gris;
trace moitieesca withcolor rouge;
trace moitieescaabouger withcolor bleu;
drawarrow u*(2*g-4,4){dir(-170)}..{dir(120)}u*(3,3){dir(120)}..u*(5,8) dashed dashpattern(on 12bp off6bp on3bp off6bp);
fin;
end
      
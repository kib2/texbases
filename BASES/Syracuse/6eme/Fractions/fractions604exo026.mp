input geometriesyr16;

vardef eprouvette(expr nbg,nbp)=
  picture $;
  path Cc;
  Cc=cercles((0,0),1u) yscaled 0.2;
  $=image(
    remplis (point(0) of Cc)--(subpath(0,length Cc/2) of Cc shifted((nbp/nbg)*u*(0,6)))--(point(length Cc/2) of Cc)--(subpath(length Cc/2,length Cc) of Cc)--cycle withcolor ciel;
    trace Cc shifted((nbp/nbg)*u*(0,6));
    trace Cc shifted(u*(0,6));
    trace subpath(0,length Cc/2) of Cc dashed evenly;
    trace subpath(length Cc/2,length Cc) of Cc;
    trace segment(point(0) of Cc,point(0) of Cc shifted(u*(0,6)));
    trace segment(point(length Cc/2) of Cc,point(length Cc/2) of (Cc shifted(u*(0,6))));
    for k=1 upto (nbg-1):
      trace (subpath(length Cc/2,length Cc*0.7) of Cc) shifted ((k/nbg)*u*(0,6));
    endfor;
    );
  $
enddef;
beginfig(1);
  trace eprouvette(9,4);
endfig;
beginfig(2);
  trace eprouvette(8,6);
endfig;
beginfig(3);
  trace eprouvette(11,7);
endfig;
beginfig(4);
  trace eprouvette(6,5);
endfig;
beginfig(5);
  trace eprouvette(12,9);
endfig;
beginfig(6);
  trace eprouvette(15,9);
endfig;
end
    
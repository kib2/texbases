import geo_dev;
size(8cm,0);

// currentcoordsys=cartesiansystem((2,1),i=(1,0.5),j=(-0.25,0.75));
// show(currentcoordsys);

triangle t=rotate(-20)*triangle((-1,0), (2,0), (0,2));
drawline(t, linewidth(bp));
label(t, alignAngle=90, alignFactor=2);

/*<asyxml><view file="modules/geometry_dev.asy.html" type="point" signature="incenter(triangle)"/></asyxml>*/
point incenter=incenter(t);

line ba=bisector(t.VA);
draw(ba, blue);
markangle(t.AB,t.AC,StickIntervalMarker(i=2,n=1));

line bb=bisector(t.VB);
draw(bb, blue);
markangle(t.BC, t.BA, radius=2cm, StickIntervalMarker(i=2,n=2));

line bc=bisector(t.VC);
draw(bc, blue);
markangle(t.CA, t.CB, radius=1.5cm, StickIntervalMarker(i=2,n=3));

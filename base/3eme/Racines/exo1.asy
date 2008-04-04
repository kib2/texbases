unitsize(1cm);
import geometry_dev;

pair barycentre (pair[] pt,real[] coef) {
    pair g;
    for(int i=0;i<pt.length;++i) {
        g=g+coef[i]*pt[i];
    }
    return g/sum(coef);
}

//figure(0,0,10u,5u);
point pB = (1,2);
point pA = (2.5,1);
point pO = pB + (4.9,0);
point pF= pO + (2.8,0);
point pE = 7.7/4.9*pO + (1-7.7/4.9)*pA;
point pC=3/3.5*pA+ (1-3/3.5)*pO;
point pD=3/3.5*pB + (1-3/3.5)*pO;

draw(pB--pF--pE--pA--cycle);
draw(pC--pD);

// Labels pointes
dot(Label("$O$",align=N),pO);
dot(Label("$B$",align=W),pB);
dot(Label("$D$",align=N),pD);
dot(Label("$F$",align=E),pF);
dot(Label("$E$",align=N),pE);
dot(Label("$A$",align=S),pA);
dot(Label("$C$",align=S),pC);

/// Local Variables:
/// asy-TeX-master-file: "exo1"
/// End:

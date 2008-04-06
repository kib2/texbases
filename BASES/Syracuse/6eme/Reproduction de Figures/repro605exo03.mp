input geometriesyr16;
figure(0,0,16u,3.2u);
trace papiercahier withcolor orange;
path cc;
cc=arccercle(pp(4,0),pp(0,0),pp(2,0));
for k=0 upto 4:
  if (k mod 2)=0:
    remplis (cc--cycle) shifted(k*u*(3.2,0));
  else:
    trace (cc--cycle) shifted(k*u*(3.2,0));
  fi;
endfor;
fin;
figure(0,0,16u,3.2u);
trace papiercahier withcolor orange;
path cc;
cc=arccercle(pp(4,4),pp(4,0),pp(4,2));
for k=0 upto 4:
  if (k mod 2)=0:
    remplis (cc--cycle) shifted(k*u*(3.2,0));
  else:
    trace (cc--cycle) shifted(k*u*(3.2,0));
  fi;
endfor;
fin;
figure(0,0,16u,3.2u);
trace feuillet;
x.u=y.u=u*0.8;
path ch,cv;
ch=arccercle(pp(4,0),pp(0,0),pp(2,0))--cycle;
cv=arccercle(pp(4,4),pp(4,0),pp(4,2))--cycle;
for k=0 upto 4:
  if (k mod 2)=0:
    remplis buildcycle(ch,cv) shifted(k*u*(3.2,0));
  else:
    remplis (ch shifted(k*u*(3.2,0))) withcolor noir;
    remplis (cv shifted(k*u*(3.2,0))) withcolor noir;
    remplis buildcycle(ch,cv) shifted(k*u*(3.2,0)) withcolor blanc;
  fi;
  trace ch shifted(k*u*(3.2,0));
  trace cv shifted(k*u*(3.2,0));
endfor;
fin;
figure(0,0,16u,3.2u);
trace feuillet;
x.u=y.u=u*0.8;
path ch,cb,cg,cd;
cb=arccercle(pp(4,0),pp(0,0),pp(2,0))--cycle;
cd=arccercle(pp(4,4),pp(4,0),pp(4,2))--cycle;
ch=arccercle(pp(0,4),pp(4,4),pp(2,4))--cycle;
cg=arccercle(pp(0,0),pp(0,4),pp(0,2))--cycle;
for k=0 upto 4:
  if (k mod 2)=0:
    remplis buildcycle(cb,cd) shifted(k*u*(3.2,0));
    remplis buildcycle(ch,cg) shifted(k*u*(3.2,0));
  else:
    remplis buildcycle(cb,cg) shifted(k*u*(3.2,0));
    remplis buildcycle(ch,cd) shifted(k*u*(3.2,0));
  fi;
  trace ch shifted(k*u*(3.2,0));
  trace cg shifted(k*u*(3.2,0));
  trace cb shifted(k*u*(3.2,0));
  trace cd shifted(k*u*(3.2,0));
endfor;
fin;
end
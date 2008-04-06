input geometriesyr16;

picture alphapict_; alphapict_=nullpicture;
color fillcolor; fillcolor=gris;
fgalpha := 0.5; % usual alpha parameter
bgalpha:= 1; % alpha parameter with respect to the background

vardef alphafill expr c =
  alphapict_ := nullpicture;
  alphafill_(currentpicture, c);
  addto currentpicture also alphapict_;
enddef;

def alphafill_(expr p, c) =
  begingroup
    save p_, xmax_, xmin_, ymax_, ymin_; picture p_;
    p_ = nullpicture;
    (xmin_, ymin_) = llcorner c; (xmax_, ymax_) = urcorner c;
    addto p_ contour c withcolor bgalpha[background, fillcolor];
    for p__ within p:
      numeric xmin__, xmax__, ymin__, ymax__;
      (xmin__, ymin__) = llcorner p__; (xmax__, ymax__) = urcorner p__;
      if (xmax__<= xmin_) or (xmin__ >= xmax_):
      else:
        if (ymax__<= ymin_) or (ymin__ >= ymax_):
        else:
          if (not clipped p__) and (not bounded p__):
            addto p_ also p__ withcolor
            fgalpha[(redpart p__, greenpart p__, bluepart p__),
            fillcolor];
          else:
            begingroup save alphapict_;
              picture alphapict_; alphapict_ = nullpicture;
              alphafill_(p__, pathpart p__);
              addto p_ also alphapict_;
            endgroup;
          fi
        fi
      fi
    endfor
    clip p_ to c;
    addto alphapict_ also p_;
  endgroup;
enddef;

%pièces du M
figure(0,0,8u,5.5u);
trace grille(0.5);
pair A,B,C,D;
A=placepoint(0,6);
B=placepoint(3,9);
C=placepoint(7,9);
D=placepoint(2,4);
pair E,F,G,H;
E=placepoint(6,1);
F=placepoint(3,4);
G=placepoint(5,6);
H=placepoint(6,5);
pair I,J,K,L;
I=placepoint(7,1);
J=placepoint(7,5);
K=placepoint(12,10);
L=placepoint(14,8);
pair R,S,T;
R=placepoint(8,1);
S=placepoint(15,1);
T=placepoint(15,8);
path de,df,dg,dh;
de=polygone(A,B,C,D);
df=polygone(E,F,G,H);
dg=polygone(I,J,K,L);
dh=polygone(R,S,T);
fillcolor:=1.1gris;
alphafill (de shifted((-2pt,-2pt)));
alphafill (de shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill de;
trace de withpen pencircle scaled 1.5bp;
fillcolor:=1.1gris;
alphafill (df shifted((-2pt,-2pt)));
alphafill (df shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill df;
trace df withpen pencircle scaled 1.5bp;
fillcolor:=1.1gris;
alphafill (dg shifted((-2pt,-2pt)));
alphafill (dg shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill dg;
trace dg withpen pencircle scaled 1.5bp;
fillcolor:=1.1gris;
alphafill (dh shifted((-2pt,-2pt)));
alphafill (dh shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill dh;
trace dh withpen pencircle scaled 1.5bp;
fin;
%affichage du M
figure(0,0,10u,10u);
de:=rotation(de,C,45) shifted(S-E);
fillcolor:=jaune;
alphafill de;
dg:=rotation(dg,J,180) shifted(C+S-E-J);
alphafill dg;
df:=rotation(df,E,135) shifted(rotation(L,J,180)+C+S-E-J-E);
alphafill df;
dh:=rotation(dh,R,45) shifted(rotation(H,E,135)+rotation(L,J,180)+C+S-E-J-E-R);
alphafill dh;
fin;
%solution du M
figure(0,0,10u,10u);
trace de;
trace df;
trace dg;
trace dh;
fin;
%Pièces du L
figure(0,0,6.5u,3.5u);
trace grille(0.5);
pair A,B,C;
A=placepoint(1,1);
B=placepoint(3,2);
C=placepoint(1,6);
pair I,J,K;
I=placepoint(4,1);
J=placepoint(6,1);
K=placepoint(4,5);
pair L,M,N;
L=placepoint(7,1);
M=placepoint(8,1);
N=placepoint(7,3);
pair P,Q,R,S,T,U;
P=placepoint(9,1);
Q=placepoint(12,1);
R=placepoint(12,5);
S=placepoint(10,4);
T=placepoint(10,3);
U=placepoint(8,3);
path de,df,dg,dh;
de=polygone(A,B,C);
df=polygone(I,J,K);
dg=polygone(L,M,N);
dh=polygone(P,Q,R,S,T,U);
fillcolor:=1.1gris;
alphafill (de shifted((-2pt,-2pt)));
alphafill (de shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill de;
trace de withpen pencircle scaled 1.5bp;
fillcolor:=1.1gris;
alphafill (df shifted((-2pt,-2pt)));
alphafill (df shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill df;
trace df withpen pencircle scaled 1.5bp;
fillcolor:=1.1gris;
alphafill (dg shifted((-2pt,-2pt)));
alphafill (dg shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill dg;
trace dg withpen pencircle scaled 1.5bp;
fillcolor:=1.1gris;
alphafill (dh shifted((-2pt,-2pt)));
alphafill (dh shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill dh;
trace dh withpen pencircle scaled 1.5bp;
fin;
%solution du L
figure(0,0,10u,10u);
trace rotation(dh,Q,-90);
trace rotation(dg,N,180) shifted(rotation(R,Q,-90)-N);
trace de shifted(rotation(P,Q,-90)-A);
trace rotation(df,K,180) shifted(B+rotation(P,Q,-90)-A-K);
fin;
%Pièces du F
figure(0,0,12u,5u);
trace grille(1);
pair A,B,C,D,E;
A=placepoint(1,1);
B=placepoint(5,1);
C=placepoint(3,3);
D=placepoint(3,2);
E=placepoint(2,2);
pair H,I,J,K;
H=placepoint(6,3);
I=placepoint(6,1);
J=placepoint(7,1);
K=placepoint(7,4);
pair L,M,N;
L=placepoint(8,1);
M=placepoint(9,1);
N=placepoint(9,2);
pair P,Q,R;
P=placepoint(10,2);
Q=placepoint(11,1);
R=placepoint(11,3);
path de,df,dg,dh;
de=polygone(A,B,C,D,E);
df=polygone(H,I,J,K);
dg=polygone(L,M,N);
dh=polygone(P,Q,R);
fillcolor:=1.1gris;
alphafill (de shifted((-2pt,-2pt)));
alphafill (de shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill de;
trace de withpen pencircle scaled 1.5bp;
fillcolor:=1.1gris;
alphafill (df shifted((-2pt,-2pt)));
alphafill (df shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill df;
trace df withpen pencircle scaled 1.5bp;
fillcolor:=1.1gris;
alphafill (dg shifted((-2pt,-2pt)));
alphafill (dg shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill dg;
trace dg withpen pencircle scaled 1.5bp;
dg:=dg shifted(u*(0,2));
fillcolor:=1.1gris;
alphafill (dg shifted((-2pt,-2pt)));
alphafill (dg shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill dg;
trace dg withpen pencircle scaled 1.5bp;
fillcolor:=1.1gris;
alphafill (dh shifted((-2pt,-2pt)));
alphafill (dh shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill dh;
trace dh withpen pencircle scaled 1.5bp;
fin;
%Pièces du H
figure(0,0,12u,8u);
trace papiercahier;
pair A,B,C,D,E;
A=placepoint(1,5);
B=placepoint(5,1);
C=placepoint(5,4);
D=placepoint(3,6);
E=placepoint(3,5);
pair H,I,J,K;
H=placepoint(11,4);
I=placepoint(15,4);
J=placepoint(15,6);
K=placepoint(13,6);
pair L,M,N,P;
L=placepoint(0,7);
M=placepoint(3,7);
N=placepoint(3,9);
P=placepoint(2,9);
path de,df,dg;
de=polygone(A,B,C,D,E);
df=polygone(H,I,J,K);
dg=polygone(L,M,N,P);
fillcolor:=1.1gris;
alphafill (de shifted((-2pt,-2pt)));
alphafill (de shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill de;
trace de withpen pencircle scaled 1.5bp;
de:=de shifted(placepoint(6,5)-A);
fillcolor:=1.1gris;
alphafill (de shifted((-2pt,-2pt)));
alphafill (de shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill de;
trace de withpen pencircle scaled 1.5bp;
fillcolor:=1.1gris;
alphafill (df shifted((-2pt,-2pt)));
alphafill (df shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill df;
trace df withpen pencircle scaled 1.5bp;
df:=df shifted(placepoint(8,7)-H);
fillcolor:=1.1gris;
alphafill (df shifted((-2pt,-2pt)));
alphafill (df shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill df;
trace df withpen pencircle scaled 1.5bp;
fillcolor:=1.1gris;
alphafill (dg shifted((-2pt,-2pt)));
alphafill (dg shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill dg;
trace dg withpen pencircle scaled 1.5bp;
dg:=dg shifted(placepoint(4,6)-L);
fillcolor:=1.1gris;
alphafill (dg shifted((-2pt,-2pt)));
alphafill (dg shifted((2pt,-2pt)));
fillcolor:=jaune;
alphafill dg;
trace dg withpen pencircle scaled 1.5bp;
fin;
end

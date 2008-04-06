verbatimtex
%&latex
\documentclass{article}
\usepackage[latin1]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{amsmath}
\usepackage[frenchb]{babel}
\begin{document}
etex
input geometriesyr15;

%Macros réalisées le 14 octobre 2007 par Thierry GAUVIN

color coul_frac; 
coul_frac:=violet; % couleur par défaut de remplissage des fractions
%---------------------------------------------------------------------------------------------------------------
%Macro pour représentation de fraction sous forme circulaire... 
%---------------------------------------------------------------------------------------------------------------
vardef repcircfract(expr n,d)=
  save cerc,O,A,r;
  path crcl;
  numeric r;
   pair A[],O;
   % les valeurs initiales
  r=1cm; %rayon du cercle
  O=u*(0,0);% centre du cercle
   A[0]:=(r,0);% point de départ    
  crcl=cercles(O,r);
    save $;
    picture $;
      $=image(
     for k=1 upto d:
	A[k]=rotation(A[k-1],O,360/d);
      endfor;

    save S,j;
    path S;
    S=O--
    for j=0 upto n:
      if j=n : A[j]-- 
      else : if n=1: A[j]{dir90}..
      		else : A[j]..
		fi
      fi
    endfor
    cycle;
	remplis S withcolor coul_frac;
 for k=1 upto d:
	A[k]=rotation(A[k-1],O,360/d);
	trace segment(O,A[k-1]) if n=0 : withcolor .7white fi;
      endfor;
      trace crcl;
      );  $
enddef;

%---------------------------------------------------------------------------------------------------------------
%Macro pour représentation de fraction sous forme polygone régulier... 
%---------------------------------------------------------------------------------------------------------------
vardef reppolyregfract(expr n,d)=
  save O,A,r;
  numeric r;
   pair A[],O;
   % les valeurs initiales
  r=1cm; %rayon du cercle
  O=u*(0,0);% centre du cercle
   A[0]:=(r,0);% point de départ    
    save $;
    picture $;
      $=image(
     for k=1 upto d:
	A[k]=rotation(A[k-1],O,360/d);
      endfor;

    save S,j;
    path S;
    S=O--
    for j=0 upto n:
      A[j]-- 
    endfor
    cycle;
	remplis S withcolor coul_frac;
 for k=1 upto d:
	A[k]=rotation(A[k-1],O,360/d);
	trace segment(O,A[k-1]) if n=0 : withcolor .7white fi;
	trace segment(A[k],A[k-1]);
      endfor;
      );  $
enddef;

%---------------------------------------------------------------------------------------------------------------
%Macro pour représentation de fraction sous forme carré... 
%---------------------------------------------------------------------------------------------------------------
vardef repcarrefract(expr n,l,c)=
  save cr,C,D,A,B,E,ct;
  path cr;
  numeric ct,h;
   pair A[],B[],C[],D[],E[];
   % les valeurs initiales
 h=0;
  ct=2; %coté du carré
  A[0]=u*(0,0);% coin inférieur gauche
  B[0]=u*(0,ct);% coin supérieur gauche
  C[0]=u*(ct,ct);% coin supérieur droit
  D[0]=u*(ct,0);% coin inférieur droit
  cr=A[0]--B[0]--C[0]--D[0]--cycle;
     save $;
     picture $;
      $=image(
%------------------------------------------------ Points d'intersection du quadrillage -------------------------------------
      for k=0 upto l:
       	for j=0 upto c:
		h:=k*100+j;
		E[h]=u*(j*ct/c,k*ct/l);
    	 endfor;
     endfor;
%----------------------------------------- Comptage et remplissage des petits carrés unités ------------------------
    save j,petitkre,p,i;
    path S,petitkre[];
    numeric j,p,i;
    i:=1;
    for j=1 upto n:
   p:=j;
    if j>c : 
    	if j/c/i>1 : i:=i+1 fi;
    p:=p+(100-c)*(i-1)
    fi;
     petitkre[p]=E[p-1]--E[p]--E[p+100]--E[p+100-1]--cycle;
    	remplis petitkre[p] withcolor coul_frac;
    endfor
%------------------------------------------------ Tracé du quadrillage ----------------------------------------------------
      	for k=0 upto c:
		A[k]=u*(k*ct/c,0);
		B[k]=u*(k*ct/c,ct);
	 	trace segment(A[k],B[k]) if n=0 : withcolor .7white fi;
      	endfor;
       	for i=1 upto l:
		C[i]=u*(0,i*ct/l);
		D[i]=u*(ct,i*ct/l);
		trace segment(C[i],D[i]) if n=0 : withcolor .7white fi;
      	endfor;
   trace cr;
    );
$
enddef;%************** Fin de la macro ************

%---------------------------------------------------------------------------------------------------------------------------------
%Macro pour représentation de fraction sous forme carré avec les diagonales des petits carrés ... 
%----------------------------------------------------------------------------------------------------------------------------------
vardef repcarrediagfract(expr n,l,c)=
  save cr,C,D,A,B,E,ct;
  path cr;
  numeric ct,h;
   pair A[],B[],C[],D[],E[];
   % les valeurs initiales
 h=0;
  ct=2; %coté du carré
  A[0]=u*(0,0);% coin inférieur gauche
  B[0]=u*(0,ct);% coin supérieur gauche
  C[0]=u*(ct,ct);% coin supérieur droit
  D[0]=u*(ct,0);% coin inférieur droit
  cr=A[0]--B[0]--C[0]--D[0]--cycle;
     save $;
     picture $;
      $=image(

%------------------------------------------------ Points d'intersection du quadrillage -------------------------------------
      for k=0 upto l:
       	for j=0 upto c:
		h:=k*100+j;
		E[h]=u*(j*ct/c,k*ct/l);
    	 endfor;
     endfor;
%------------------------------------------------ Comptage et remplissage des triangles unités ------------------------
    save j,petitrglinf,petitrglsup,p,i,r,q;
    path S, petitrglinf[],petitrglsup[];
    numeric j,p,i,b,r,q;
    i:=1;p:=1;q:=1;
    for j=1 upto if l*c>n : n else : l*c+1 fi:
   p:=j;
    if j>c : 
    	if j/c/i>1 : i:=i+1 fi;
    p:=p+(100-c)*(i-1)
    fi;
    if j<=l*c :
     	petitrglinf[p]=E[p-1]--E[p]--E[p+99]--cycle;
     	remplis petitrglinf[p] withcolor coul_frac
     else :
         for b=1 upto (n-l*c):
   		r:=b;
    		if b>c : 
    			if b/c/q>1 : q:=q+1 fi;
 			r:=r+(100-c)*(q-1)
		fi;
	petitrglsup[r]=E[r]--E[r+100]--E[r+99]--cycle;
	remplis petitrglsup[r] withcolor coul_frac;
	endfor;
     fi;
    endfor
%------------------------------------------------ Tracé des diagonales ----------------------------------------------------
 for k=0 upto l-1:
       	for j=0 upto c:
		h:=(k+1)*100+j;
		if j<c : trace segment(E[j+1+k*100],E[h]) fi;
    	 endfor;
     endfor;	 
%------------------------------------------------ Tracé du quadrillage ----------------------------------------------------
      	for k=0 upto c:
		A[k]=u*(k*ct/c,0);
		B[k]=u*(k*ct/c,ct);
	 	trace segment(A[k],B[k]) if n=0 : withcolor .7white fi;
      	endfor;
       	for i=1 upto l:
		C[i]=u*(0,i*ct/l);
		D[i]=u*(ct,i*ct/l);
		trace segment(C[i],D[i]) if n=0 : withcolor .7white fi;
      	endfor;
  trace cr; % -----Tracé du carré -----
    );
$
enddef;%************** Fin de la macro ************

% 7/14 circulaire
figure(-1.1u,-1.1u,1.1u,1.1u) ;
coul_frac:=red;
trace repcircfract(7,14) rotated 20;
fin ;

%1/3 poly regulier
figure(-1.1u,-1.1u,1.1u,1.1u) ;
coul_frac:=violet;
trace reppolyregfract(1,3) rotated 210;
fin ;

%6/9 carré
figure(-.1u,-.1u,2.1u,2.1u) ;
coul_frac:=blue;
trace repcarrefract(6,3,3);
fin ;

%4/9 carré
figure(-.1u,-.1u,2.1u,2.1u) ;
trace repcarrefract(4,3,3);
fin ;

%0/16 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
trace repcarrefract(0,4,4);
fin ;

%2/8 circulaire
figure(-1.1u,-1.1u,1.1u,1.1u) ;
coul_frac:=red;
trace repcircfract(2,8);
fin ;

%4/8 carré
figure(-.1u,-.1u,2.1u,2.1u) ;
coul_frac:=blue;
trace repcarrefract(4,4,2);
fin ;

%1/2 carré avec diagonales
figure(-.1u,-.1u,2.1u,2.1u) ;
coul_frac:=green;
trace repcarrediagfract(2,2,1);
fin ;

%8/16 carré avec diagonales
figure(-.1u,-.1u,2.1u,2.1u) ;
trace repcarrediagfract(8,4,4);
fin ;
%------------------------------------------ somme de fractions --------------------------------

%0/4 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
trace repcarrefract(0,2,2);
fin ;
%2/4 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
coul_frac:=blue;
trace repcarrefract(2,2,2);
fin ;
%1/4 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
coul_frac:=green;
trace repcarrefract(1,2,2);
fin ;

%3/4 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
coul_frac:=violet;
trace repcarrefract(3,2,2);
fin ;

%0/16 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
trace repcarrefract(0,4,4);
fin ;
%5/16 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
coul_frac:=blue;
trace repcarrefract(5,4,4);
fin ;
%7/16 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
coul_frac:=green;
trace repcarrefract(7,4,4);
fin ;
%12/16 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
coul_frac:=violet;
trace repcarrefract(12,4,4);
fin ;

%0/8 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
trace repcarrefract(0,2,4);
fin ;
%1/8 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
coul_frac:=blue;
trace repcarrefract(1,2,4);
fin ;
%4/8 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
coul_frac:=green;
trace repcarrefract(4,2,4);
fin ;
%5/8 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
coul_frac:=violet;
trace repcarrefract(5,2,4);
fin ;


%0/5 circulaire
figure(-1.1u,-1.1u,1.1u,1.1u) ;
trace repcircfract(0,5);
fin ;
%2/5 circulaire
figure(-1.1u,-1.1u,1.1u,1.1u) ;
coul_frac:=green;
trace repcircfract(2,5);
fin ;
%1/5 circulaire
figure(-1.1u,-1.1u,1.1u,1.1u) ;
coul_frac:=blue;
trace repcircfract(1,5);
fin ;
%3/5 circulaire
figure(-1.1u,-1.1u,1.1u,1.1u) ;
coul_frac:=violet;
trace repcircfract(3,5);
fin ;
%

%0/20 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
trace repcarrefract(0,4,5);
fin ;
%5/20 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
coul_frac:=blue;
trace repcarrefract(5,4,5);
fin ;
%7/20 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
coul_frac:=green;
trace repcarrefract(7,4,5);
fin ;
%12/20 carre
figure(-.1u,-.1u,2.1u,2.1u) ;
coul_frac:=violet;
trace repcarrefract(12,4,5);
fin ;

%0/9 circulaire
figure(-1.1u,-1.1u,1.1u,1.1u) ;
coul_frac:=blue;
trace repcircfract(0,9) rotated 210;
fin ;
%3/9 circulaire
figure(-1.1u,-1.1u,1.1u,1.1u) ;
trace repcircfract(3,9) rotated 210;
fin ;
%2/9 circulaire
figure(-1.1u,-1.1u,1.1u,1.1u) ;
coul_frac:=green;
trace repcircfract(2,9) rotated 210;
fin ;
%5/9 circulaire
figure(-1.1u,-1.1u,1.1u,1.1u) ;
coul_frac:=violet;
trace repcircfract(5,9) rotated 210;
fin ;

end
prologues:=2;
input geometriesyr16;
figure(0,0,10u,10u);
pair M,L[],N[];
L0=u*(1,5);
M-L0=u*(8,0);
N0=2/16[L0,M];
N1=3/16[L0,M];
N2=7/16[L0,M];
N3=10/16[L0,M];
N4=11/16[L0,M];
L1=rotation(N0,L0,90);
L2-L1=N0-L0;
L4=rotation(N0,N1,90);
L3-L4=N0-N1;
L5=rotation(N2,N1,90);
L6-L5=N2-N1;
L8=rotation(N2,N3,90);
L7-L8=N2-N3;
L9=rotation(N4,N3,90);
L10-L9=N4-N3;
L12=rotation(N4,M,90);
L11-L12=N4-M;
trace polygone(L0,L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,L11,L12,M);
label.lft(btex L etex,L0);
label.ulft(btex L$_1$ etex,L1);
label.urt(btex L$_2$ etex,L2);
label.llft(btex L$_3$ etex,L3);
label.lrt(btex L$_4$ etex,L4);
label.ulft(btex L$_5$ etex,L5);
label.urt(btex L$_6$ etex,L6);
label.llft(btex L$_7$ etex,L7);
label.lrt(btex L$_8$ etex,L8);
label.ulft(btex L$_9$ etex,L9);
label.urt(btex L$_{10}$ etex,L10);
label.llft(btex L$_{11}$ etex,L11);
label.lrt(btex L$_{12}$ etex,L12);
nomme.rt(M);
fin;
end
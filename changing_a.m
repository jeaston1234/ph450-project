clear all
text_1='te_11 solutions';
text_2='tm_11 solutions';
f=36*10^9;
a=linspace(1*10^-3,50*10^-3,30);
mode=1; %enter 1 for te_11 sols and 2 for tm_11 sols


if mode==1;
disp('te11 sols')
w=2*pi*f;
c=3*10^8;
e=8.854*10^-12;
u=(4*pi)*10^-7;
p=1.841;

f_c=p^-1*(2*pi*a*(u*e)^0.5);

plot(a,f_c)
elseif mode==2
disp(text_2)
w=2*pi*f;
c=3*10^8;
e=8.854*10^-12;
u=(4*pi)*10^-7;
p=3.832;
k=2*pi*f*(u*e)^0.5;
k_c=p/a;
beta=sqrt(k^2-k_c^2);
f_c=p/(2*pi*a*(u*e)^0.5);
v_p=w/beta;
v_g=(c*beta)/k;
Z_tm=(beta*(u/e)/k);
TM_11=table(k,k_c,beta,f_c,v_p,v_g,Z_tm)
end

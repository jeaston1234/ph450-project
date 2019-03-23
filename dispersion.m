clear all
a=6*10^-3;
b=-1500:100:1500;
c=3*10^8;
e=8.854*10^-12;
u=(4*pi)*10^-7;
p=1.841;
k_c=p/a;
f_c=p/(2*pi*a*(u*e)^0.5);

freqsqrd=(b.^2+k_c.^2)/(4*pi^2*u*e);
freq=sqrt(freqsqrd);


am=6*10^-3;
bm=-1500:100:1500;
cm=3*10^8;
em=8.854*10^-12;
um=(4*pi)*10^-7;
pm=3.832;
k_cm=pm/am;
f_cm=pm/(2*pi*am*(um*em)^0.5);
freqsqrdm=(bm.^2+k_cm.^2)/(4*pi^2*um*em);
freqm=sqrt(freqsqrdm);
plot(bm,freqm)
hold on

plot(b,freq)
hold off


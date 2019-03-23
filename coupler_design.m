clear all
theta_1=50 ;%variabels start
R=30;
Zc=3;
radius_1=10.1;%variables end

x=sqrt(radius_1.^2+Zc.^2);
theta_2=asin((Zc/x));
theta_2_real = rad2deg(theta_2);
alpha=90-theta_2_real;
b=theta_1+alpha;
a=asin(sin(b*pi/180)*x/R);
a_real = rad2deg(a);
d=180-b-a_real;
c=180-alpha-d;
R_cone=R.*sin(c*(pi/180));
L=(R.*cos(c*(pi/180)))+Zc;
table=table(R_cone,L)


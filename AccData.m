%Accelerometer Data

mu=1.8*10^(-5);
A=24*10^(-6);
m=8.2*10^(-6);
eps0=8.854*10^(-12);
V1=0.5;
k=83.3;
d0=10^(-5);


%Circuit
r1=250*10^6;
c3=10^(-9);
c4=22*10^(-12);
r2=820*10^3;
c0=10.6*10^(-12);

num=[-2*c3*r2 0];
a1=2*c0*c4*r2+c3*c4*r2;
a2=2*c0+c3+c4*r2/r1
a3=1/r1;
den=[a1 a2 a3];
% num=-2*r2*c3;
% den=[c3 1/r1];


coef1=(mu*A^2)/(2*m);
coef2=k/m;
coef3=(eps0*A*V1^2)/(4*m);

coef_detectie0=-2*c3*r2;

numi0=conv([c4*r2 1],[(2*c0+c3) 1/r1])

coef_det1=2*c0*c4*r2+c3*c4*r2;
coef_det2=2*c0+c3+c4*r2/r1;
coef_det3=1/r1;


%Low-pass filter
v_input=0.5;
hz_input=100e3;  
C_4=22e-12;
C_3=1e-9;
C_0=10.6e-12;
R_1=250e6;
R_2=820e3;
R_10=5.6e3;
R_9=10e3;
R_7=180e3;
R_8=180e3;
C_5=1.5e-9;
C_6=1.5e-9;
num_1=1+R_10/R_9;
den_1=R_7*R_8*R_9*C_5*C_6;
den_2=C_6*(R_7+R_8)-C_5*R_7*R_10/R_9;

% num_ftj=1.56;
% den_ftj_a2=72.9*10^(-9);
% den_ftj_a1=0.3888*10^(-3);
% den_ftj=[den_ftj_a2 den_ftj_a1 1];
% 
% num_ftj=3.12;
% den_ftj_a2=72.9*10^(-9);
% den_ftj_a1=0.3888*10^(-3);
% den_ftj=[den_ftj_a2 den_ftj_a1 1]


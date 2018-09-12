close all;
clear variables;
clc;

T=1; % This is arbitrary
omega=2*pi/T;
Ts=T/100;
tmin=-3*T/2;
tmax=3*T/2;
N=tmax/Ts;
n=-N:N;
x=sin(omega*n*Ts);

figure();
stem(n,x);
xlabel('n');
ylabel('x(nTs)');
grid on;



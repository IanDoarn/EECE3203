%% *Problem #0.13*
% By: *Ian Doarn*
% Class: EECE 3203
%%

close all;
clear variables;
clc;

T=1; % This is arbitrary
omega=2*pi/T;
Ts1=T/1;
Ts2=T/10;
Ts3=T/100;
Ts4=T/1000;

tmin=0;
tmax=3;
N1=tmax/Ts1;
N2=tmax/Ts2;
N3=tmax/Ts3;
N4=tmax/Ts4;
n1=-N1:N1;
n2=-N2:N2;
n3=-N3:N3;
n4=-N4:N4;

x1=4*cos(omega*n1*Ts1);
x2=4*cos(omega*n2*Ts2);
x3=4*cos(omega*n3*Ts3);
x4=4*cos(omega*n4*Ts4);

figure();

subplot(4,1,1);
stem(n1,x1, 'r');
title('Ts = 1')
xlabel('n');
ylabel('x(nTs)');
grid on;

subplot(4,1,2);
stem(n2,x2, 'g');
title('Ts = 0.1')
xlabel('n');
ylabel('x(nTs)');
grid on;

subplot(4,1,3);
stem(n3,x3, 'b');
title('Ts = 0.01')
xlabel('n');
ylabel('x(nTs)');
grid on;

subplot(4,1,4);
stem(n4,x4, 'b');
title('Ts = 0.001')
xlabel('n');
ylabel('x(nTs)');
grid on;
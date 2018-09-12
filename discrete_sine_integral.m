close all;
clear variables;
clc;

T=1; % This is arbitrary
omega=2*pi/T;
Ts=T/10;
tmin=-3*T/2;
tmax=3*T/2;
N=tmax/Ts;
n=-N:N;
x=sin(omega*n*Ts);

II=@(t) -(cos(omega*t)+1)/omega; % this is an anonymous function
I1=II(n*Ts+Ts/2); % Why did I add the Ts/2?
I2=Ts*cumsum(x);

figure();
subplot(2,1,1)
plot(n*Ts,I1,n*Ts,I2);
xlabel('t (seconds)');
ylabel('I(t)');
legend('real','approx');
grid on;
subplot(2,1,2)
stem(n,I1-I2);
xlabel('n');
ylabel('Difference');
grid on;



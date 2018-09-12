%% *Problem #0.14*
% By: *Ian Doarn*
% Class: EECE 3203
%%

close all;
clear variables;
clc;

T=1; % This is arbitrary
omega=2*pi/T;
Ts=T/10;
tmin=0;
tmax=1;
N=tmax/Ts;
n=-N:N;
x=4*cos(omega*n*Ts);

fddx=diff(x)/Ts;% Compute the finite difference approximation to the derivative
dx=-8*pi*sin(omega*n*Ts); % Compute the values of the real derivative
n1=n(1:end-1); % Need this because of diff

% Plot the two derivatives
figure();
subplot(2,1,1);
plot(n1*Ts,dx(1:end-1),'rs',n1*Ts,fddx,'gs');
xlabel('t (seconds)');
ylabel('dx/dt');
legend('real','approx');
grid on;

% Plot the difference
subplot(2,1,2)
stem(n1*Ts,dx(1:end-1)-fddx);
xlabel('t (seconds)');
ylabel('Difference');
grid on;

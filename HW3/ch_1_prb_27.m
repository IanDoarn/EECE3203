%% Problem 1.27
% Name: Ian Doarn
% Class: EECE 3203

%% Part A
%

omega = pi;
phi = pi / 100;
alpha = 0.7;
T = 0.5;

t = 0:T:256;

yt = exp(1i*omega.*t).* (1 + alpha * exp(1i*phi.*t));

figure();
compass(yt);
title('Compass plot of y(t)');

%% Part B
%

omega = pi;
phi = pi / 100;
alpha = 0.7;
T = 0.5;

t = 0:T:256;

At = sqrt(1.49 + 1.4.*cos(phi.*t));
thetat = atan((alpha*sin(phi.*t))/(1 + alpha*cos(phi.*t)));

yt2 = At.*exp(1i*(omega.*t + thetat));

figure();
compass(yt2)
title('Compass plot of y(t) in terms of A(t) and Theta(t)');

%% Part C
%

syms s
omega = pi;
phi = pi / 100;
alpha = 0.7;
T = 0.5;

Fs = 2000;

y1t = exp(1i*omega*s) + alpha*exp(1i*omega*(s - 100))*exp(1i*phi*(s-100));

real_y1t = real(y1t)

figure();
fplot(real_y1t);
title('Real part of y_1(t)')

% Plays sound for original function y(t)
% using only the real parts and a sampling
% of Fs = 2000
sound(real(yt), Fs);
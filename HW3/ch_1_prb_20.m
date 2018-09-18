%% Problem 1.20
% Name: Ian Doarn
% Class: EECE 3203

%% Part A
% 
syms t

xt = exp(-abs(t));

% Energy of x(t)
E_xt = int(abs(xt)^2, t, -inf, inf);
E_xt

figure();
fplot(xt);
title('Graph of x(t) = exp(-abs(t))');

%% Part B
% 

figure();

hold on
title('Graph of |x(t)| and|x(t)|^2')
fplot(abs(xt));
fplot(abs(xt)^2);
legend('|x(t)|', '|x(t)|^2');
hold off

%% Part C
%

yt = exp(-t) * cos(2*pi*t) * heaviside(t);

figure();
fplot(yt);
title('Graph of y(t)')

% Energy of y(t)
E_yt = int(abs(yt)^2, t, 0, inf);
E_yt


%% Part D
%

x = 0;
C = 1e-3;

% At t = 0
vr = exp(-x) * heaviside(x)

% R and C are related as R = 1/C




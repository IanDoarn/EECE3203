%% *Problem #0.20*
% By: *Ian Doarn*
% Class: EECE 3203
%%

a1 = -0.5;
a2 = 1;

ar = -5:5;

%%% part a and b
syms t
x_t1 = exp(a1*t);
x_t2 = exp(a2*t);

hold on
fplot(x_t1, 'r')
fplot(x_t2, 'b')
title('Graph of part a and b')
legend('a= -0.5', 'a = 1');
hold off

%%% part c
T=1;
Ts=T/100;
tmin=0;
tmax=1;
N=tmax/Ts;
n=-N:N;

figure();
hold on
x1 = exp(a1*n*Ts);
stem(n, x1, 'r');
x2 = exp(a2*n*Ts);
stem(n, x2, 'b')
legend('a= -0.5', 'a = 1');
title('Graph of part c');

%%% part d
tc = 1;
C = 1;
xt = @(u) exp(-0.5*u);
v = (-1/C) * integral(xt, tc, 0)
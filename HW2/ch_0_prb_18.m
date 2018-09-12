%% *Problem #0.18*
% By: *Ian Doarn*
% Class: EECE 3203
%%

%%% part b
T = 1;
Ts = T/1000;

syms N
nl = (((N-1)*(N-2)+2*(N-1))/(2*N^2)) + 1/N;
nr = (((N-1)*(N-2)+2*(N-1))/(2*N^2));
sumLeft = symsum(nl, N, 1, 3)
sumRight = symsum(nr, N, 1, 0)

%%% part d
syms t B
y = t^2;
x_area = int(y, 0, 1)

Bl = (((B-1)-1)*((B-1-2)+2*((B-1-1))/(2*(B-1^2)))) + 1 / B;
Br = (((B-1)*(B-2)+2*(B-1))/(2*B^2));
sum_yLeft = symsum(Bl, B, 3, 1)
sum_yRight = symsum(Br, B, 1, 0)

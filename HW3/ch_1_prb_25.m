%% Problem 1.25
% Name: Ian Doarn
% Class: EECE 3203

%% Part C
% 

% Finding period of a signal
% https://www.mathworks.com/matlabcentral/answers/164854-how-to-calculate-period-of-signal-with-matlab
x=0:0.1:20*2*pi;
y=abs(sin(pi*x)); % so we know the period is 2*pi roughly 6.28
ac=xcorr(y,y);
[~,locs]=findpeaks(ac);

% period
T = ceil(mean(diff(locs)*0.1));

% Calculate power of y(t)
syms t
yt = abs(sin(pi*t));

Py = (1/(2*T)) * int(abs(yt)^2, t, -T, T);

disp('Period of y(t) = Py');
Py

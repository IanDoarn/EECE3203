%%
% Impulse, unit--step and ramp responses of linear systems
%%
clear variables; clc
syms y(t) x z
% input a unit-step  (heaviside) response
a1=5;
a2=6;
eqn=diff(y,t,2)+a1*diff(y,t)+a2*y==heaviside(t);
Dy=diff(y,t);
cond=[y(0)==0,Dy(0)==0];
y(t)=dsolve(eqn,cond,'IgnoreAnalyticConstraints',false);
x=diff(y,t);              % impulse response
z=int(y);               % ramp response
figure(1)
subplot(311)
fplot(y,[0,5]);title('Unit-step response');grid
subplot(312)
fplot(x,[0,5]);title('Impulse response');grid
subplot(313)
fplot(z,[0,5]);title('Ramp response');grid
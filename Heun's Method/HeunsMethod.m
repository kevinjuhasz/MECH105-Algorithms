function [t,y] = Heun(dydt,tspan,y0,h,es,maxit)
% [t,y] = Heun(dydt,tspan,y0,h): uses the heun method to integrate an ODE
% inputs:
%   dydt = the differential equation of interest (must be anonymous
%       function)
%   tspan = [ti,tf] the initial and final values of the independent
%       variable
%   y0 = the initial value of the dependent variable
%   h = step size
%   es = stopping criterion (%), optional (default = 0.001)
%   maxit = maximum iterations of corrector, optional (default = 50)
% outputs:
%   t = vector of independent variable values
%   y = vector of solution for dependent variable  
if nargin<4,error('at least 4 input arguments required'),end

ti = tspan(1);tf = tspan(2);
if ~(tf>ti),error('upper limit must be greater than lower'),end

t = ti:h:tf; 
n = length(t);

% if necessary, add an additional value of t
% so that range goes from t = ti to tf
if t(n)<tf  
  t(n+1) = tf;
  n = n+1;
end

y = y0; % initialize y
for i = 1:n-1  % implement Euler method
    k1=dydt(t(i),y(i));
    k2=dydt(t(i+1),y(i)+h*k1);
    y(i+1)=y(i)+(h/2)*(k1+k2)
end
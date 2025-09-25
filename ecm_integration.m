function [time, values] = ecm_integration  (p, initial, n, T) 
%-----------------------
t_span = 0:T/n:T;
%-----------------------
ecm_fun_1 = @(t,x)ecm(t, x, p);
%-------------------------
[time, values] = ode45(ecm_fun_1, t_span, initial);
%-------------------------
values = values';
%-------------------------
end

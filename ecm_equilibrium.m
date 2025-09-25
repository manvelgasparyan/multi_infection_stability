function [x_sol] = ecm_equilibrium (p,  guess)
%-------------------------
ecm_f = @(x)ecm (0, x, p);
%------------------
x_sol = fsolve(ecm_f, guess);
%-------------------------
x_Sol = x_sol';
%-------------------------
end
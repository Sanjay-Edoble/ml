
syms t s Y
f = str2sym(input('Enter the right-hand side function f(t): ', 's'));
F = laplace(f, t, s);



y0 = input('Enter the value of initial condition y(0): ');
y1 = input('Enter the value of derivative initial condition y''(0): ');


Y1 = s*Y - y0;
Y2 = s*Y1 - y1;

DE = input('Enter the left-hand side differential equation (in terms of Y2, Y1, Y): ');


S = DE - F;  % F is used directly as an expression

sol = solve(S, Y);


y(t) = ilaplace(sol, s, t);


disp('The solution of the differential equation is y(t) =');
pretty(y(t))


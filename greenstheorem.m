clc

syms x y a b
M = input('Enter the vector coefficient of dx :');

N = input('Enter the vector coefficient of dy:');

F1=diff (M,y);

F2=diff (N,x);
F=F2-F1

limits = input('Enter 0 if the all limits are constant, otherwise enter 1:');
if (limits==0)
disp('Your choice inner & outer integral limits are constant:')
y1=input('Enter the y minimum value=');
y2=input('Enter the y maximum value=');
x1=input('Enter the x minimum value=');
x2=input('Enter the x maximum value=');
fun1=int(F,y1,y2);
A=int(fun1, x1, x2);
else
disp('Your choice inner & outer integral limits are constant and inner limits are variables:')
F3=input('Enter the above F value with function_handlein the form of Matlab Expression F3:');
y1=input('Enter the y minimum value=');
y2=input('Enter the y maximum value=');
x1=input('Enter the x minimum value=');
x2=input('Enter the x maximum value=');
A=integral2(F3, x1, x2, y1, y2);
end
disp('The Area of the surface is A=')
disp (A)
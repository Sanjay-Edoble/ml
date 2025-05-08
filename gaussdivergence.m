clc
syms x y z a b c

disp('Evaluation of volume using Gauss divergence theorem:')

F = input('Enter the coefficient of i, j& k of vector function F=');

div_F=divergence (F)

z1 = input('Enter the z-minimum value :');

z2= input('Enter the z-maximum value :');

y1 = input('Enter the y-minimum value :');

y2 = input('Enter the y-maximum value :');

x1 = input('Enter the x-minimum value :');

x2 = input('Enter the x-maximum value :');

R1=int(div_F, x, z1, z2);
R2=int(R1, y, y1, y2);

R3=int(R2,z,x1,x2);


disp('The volume of the solid is V:')


disp (R3)
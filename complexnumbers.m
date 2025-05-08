clc

syms x u v

x=input('Enter the complex number z=');

z=complex(x)

u=real(z);

v=imag(z);

Zc=conj (z);

a=abs(z);

disp('Real part of z is ')

disp (u)

disp('Imaginary part of z is ')

disp (v)

disp('Conjugate of z is')

disp(Zc)

disp('Absolute value of z is ')

disp(a)
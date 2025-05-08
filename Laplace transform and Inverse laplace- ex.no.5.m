clc

syms t s

L=input('If enter 0 to find Laplace or Enter 1 to find Inverse Laplace:');

if (L==0)

f(t)=input('Enter the function in terms of "t" :');

F(s)=laplace (f(t),t,s);

simplify (F(s));

Ans=F(s);

disp('The laplace transform of "f(t)" is F(s)=');

pretty (Ans)

else

F(s)=input('Enter the function in terms of "s" :');

f(t)=ilaplace (F(s),s,t);

simplify (f(t));

Ans=f(t);

disp('The inverse laplace transform of "F(s)" is f(t)=');

pretty (Ans)

end
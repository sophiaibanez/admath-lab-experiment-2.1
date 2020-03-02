function [r,k] = bisection(a,b,epsilon)

% FORMULA FOR f(a) and f(b)
fa = exp(-a) - log(a);
fb = exp(-b) - log(b);

% INITIALIZE VALUES
fc = inf;
k = 0;
values = 0;
iterations = 0;

% SET-UP
if fa*fb > 0
    error('error interval')
    
else
while abs(fc) > epsilon
    r = [a,b];             % SETTING INTERVAL
    c = (a+b)/2;           % FORMULA FOR c
    fc = exp(-c) - log(c); % FORMULA FOR f(c)
    k = k+1;

    if fc < 0
         if fa < 0
     	  a = c;
         else
           b = c;
         end
         
    elseif fc > 0
         if fa > 0
         a = c;
         else
         b = c;
         end 
         
     end
end
end

disp(r)
disp(k)

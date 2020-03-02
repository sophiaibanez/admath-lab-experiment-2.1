function [r,k]=regula_falsi(a,b,epsilon)

% FORMULA FOR f(a) and f(b)
fa = exp(-a) - log(a);
fb = exp(-b) - log(b);

% INITIALIZE VALUES
fc = inf;
k = 0;

% SET-UP
if fa*fb > 0
    error('error interval')
    
else
    while abs(fc) > epsilon 
       
       r=[a,b];                     % SETTING INTERVAL
       fa = exp(-a) - log(a);
       fb = exp(-b) - log(b);
       c = a-((fa*(b-a))/(fb-fa));  % FORMULA FOR c
       fc = exp(-c)-log(c);         % FORMULA FOR f(c)
       k=k+1;
        
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
        fc = abs(fc);
    end
end

end

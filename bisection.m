function [r,k]=bisection(a,b,epsilon)

fa=exp(-a)-log(a);
fb=exp(-b)-log(b);
fc = inf;
k=0;
values=0;
iterations=0;

if fa*fb>0
    error('error interval')
    
else
    while abs(fc)>epsilon 
    
        c = (a+b)/2;
        fc=exp(-c)-log(c);
        r=[a,b];
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
        iterations(k)=k;
        values(k)=c;
    end
end
plot(iterations,values,'-bo','markerfacecolor','b')
xlabel 'Number of Iterations (k)';
ylabel 'Values of C';
grid on
title 'Convergence of the Graph';
legend('values');
end
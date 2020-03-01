function [r,k]=regula_falsi(a,b,epsilon)

fa=exp(-a)-log(a);
fb=exp(-b)-log(b);
fc = inf;
k=0;

if fa*fb>0
    error('error interval')
    
else
    while abs(fc)>epsilon 

       fa=exp(-a)-log(a);
       fb=exp(-b)-log(b);
        
       c = a-((fa*(b-a))/(fb-fa));
        
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

    end
end

end
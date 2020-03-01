function [r,fc]=regula_falsi1(a,b,e)

fa=a^10-1;
fb=b^10-1;
k=0;

if fa*fb>0
    error('error interval')
    
else
    while k~=e

       fa=a^10-1;
       fb=b^10-1;
        
       c = a-((fa*(b-a))/(fb-fa));
        
       fc=c^10-1;
       

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
        fc=abs(fc);
    end
end

end
function P = dice(k)
% Returns the probability distribution for the sum of k dice.
% This is not a very elegant program, but it works fine for small k.
    
    P(k:6*k) = 0;
    
    for n=k:6*k
        
        for i=0:(n-k)/6
            
            P(n) = P(n) + (-1)^i*nchoosek(k,i)*nchoosek(n-1-6*i,k-1);
            
        end
        
    end
    
    P = P./(6^k);
    
    plot(k:6*k,P(k:6*k),'-o');
    xlabel('Sum of dice rolled');
    ylabel('Probability');
    title('Probability density for the sum of k dice');
end


  

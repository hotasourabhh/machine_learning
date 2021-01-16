function [jHistory,theta] = gradient_descent(X,Y,alpha,theta,iterations)
  m = rows(X); %number of samples
  jHistory = zeros(iterations,1);
  
  %running loop for number of iterations to 
  %find theta for which cost function is minimum
  for i = 1:iterations
    hTheta = X * theta; %hypothesis funtion
    temp0 = theta(1) - alpha*(1/m)*sum((hTheta - Y));
    temp1 = theta(2) - alpha*(1/m)*sum((hTheta - Y).*X(:,2));
    theta(1) = temp0;
    theta(2) = temp1;
    
    jHistory(i) = costFunc(X,Y,theta);
  end  
   
endfunction

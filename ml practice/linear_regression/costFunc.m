function jVal = costFunc(X,Y,theta)
  %X(m,2) dimension vector
  %Y(m,1) dimension vector 
  %theta(n,1) dimension vector where n is no. of cols of X
  hTheta = X * theta; %hypothesis funtion
  m = rows(X); %number of samples
  jVal = (1/2*m)*sum((hTheta - Y).^2);
endfunction

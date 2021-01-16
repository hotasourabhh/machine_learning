clear; close all; clc;
%import data
data = csvread("datasets_1256_2242_test.csv");

%make input and output vector
X = data(:,1); % (m x 1)
Y = data(:,2); % (m x 1)

%plot data Y vs X
subplot(1,2,1);
plot(X,Y,"o");
title("training examples");
xlabel("X");
ylabel("Y");

%make feature matrix
one_matrix = ones(rows(X),1);
X = [one_matrix X]; %appending x0 = 1; (m x 2)

%initialize constant parameters alpha,iterations
alpha = 0.0001;
iterations = 150;
theta = zeros(columns(X),1);

%calculate theta for which J(theta) : cost function is minimum
[jHistory,theta] = gradient_descent(X,Y,alpha,theta,iterations);

%calculate J(theta) :  cost function
min_cost = costFunc(X,Y,theta);

%plot linear regression line
hTheta = X * theta; %hypothesis funtion
hold on;
plot(X(:,2),hTheta,'-');
hold off;

%plot cost function against number of iterations 
subplot(1,2,2);
plot(1:iterations,jHistory,"-");
xlabel("iterations");
ylabel("J(theta)");







function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% Xx=X(2:m,:);
 % Ttheta=theta(2:size(theta),1);
 % Yy=y(2:m,1);
%  J= ((1/m)*((-y'*log(sigmoid(X*theta)))-((1-y)'*(log(1-sigmoid(X*theta))))))
 %      +((lambda/2*m)*(sum((theta(2:size(theta),:).^2))));

% grad(1)=((1/m)*sum((X'*((sigmoid(X*theta))-y))));


% grad(2)= ((1/m)*sum((Xx'*((sigmoid(X*theta))-Yy))))+((lambda/m)*Ttheta);

theta_r=theta(2:size(theta));
theta_zero=[0;theta_r];

J=((1/m)*((-y'*log(sigmoid(X*theta)))-((1-y)'*(log(1-sigmoid(X*theta))))))+((lambda/(2*m))*sum((theta_zero.^2)));
grad=((1/m)*(X'*((sigmoid(X*theta))-y)))+((lambda/m)*theta_zero);


% =============================================================

end

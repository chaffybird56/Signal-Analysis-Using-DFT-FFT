% Set the normalizing constant k
k = 1;

% Generate N random samples from the joint distribution of X1, X2, and X3
N = 1000;
x = rand(N, 3);

% Transform the samples to the distribution of X1, X2, and X3
X = k * (x(:,1) + x(:,2) + x(:,3));

% Plot the samples
scatter3(X(:,1), X(:,2), X(:,3));
xlabel('X1');
ylabel('X2');
zlabel('X3');
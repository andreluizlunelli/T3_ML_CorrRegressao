clear;

l = load("data_preg.mat");
X = l.data;

%Polinomial     x        y
p1 = polyfit (X(:,1), X(:,2), 2);
p1 = fliplr(p1);

%Regressão 
y = p1(1) + (p1(2)*X) + (p1(3)*X.^2);

clf;
figure(1);
scatter (X(:,1),X(:,2));
hold on;
plot(X(:,1),y,'r');

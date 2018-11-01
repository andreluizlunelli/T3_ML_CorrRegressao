l = load("data.mat");
K = l.data;

X = ones(size(K),3);
X(:,2:3) = K(:,1:2);

y = K(:,3);

%Tamanho da Casa e Pre�o
coTamPreco = correlacao(X(:,2), y);  

%N�mero de Quartos e Pre�o
coQuaPreco = correlacao(X(:,3), y);  

regressao = regmultipla(X, y);

clf;
figure(1);
scatter3 (X(:,2), X(:,3), y, "r");
hold on;
plot3(X(:,2), X(:,3),regressao);
%TODO: X label colocar titulos no gr�fico  

%André e Karin
close all; clc; clear;

l = load("data_preg.mat");
X = l.data;

x = X(:,1);
y = X(:,2);

%Gráfico
scatter (x,y,'filled');
hold on;

%Polinomial
p1 = polyfit(x, y, 2);
p1 = fliplr(p1);
%Regressão 
y1 = p1(1) + (p1(2)*x) + (p1(3)*x.^2);
plot(x,y1,'g');

%Polinomial
p2 = polyfit(x, y, 3);
p2 = fliplr(p2);
%Regressão 
y2 = p2(1) + (p2(2)*x) + (p2(3)*x.^2) + (p2(4)*x.^3);
plot(x,y2,'k');

%Polinomial
p3 = polyfit(x, y, 8);
p3 = fliplr(p3);
%Regressão 
y3 = p3(1) + (p3(2)*x) + (p3(3)*x.^2) + (p3(4)*x.^3) + (p3(5)*x.^4) + (p3(6)*x.^5) + (p3(7)*x.^6)+ (p3(8)*x.^7)+ (p3(9)*x.^8);
plot(x,y3,'r');

%EQM
[eqm1] = eqm(y, y1);
[eqm2] = eqm(y, y2);
[eqm3] = eqm(y, y3);

disp("----- Erro Quadrático Médio Total -----");
disp(sprintf('EQM 2 pontos: %d', eqm1));
disp(sprintf('EQM 3 pontos: %d', eqm2));
disp(sprintf('EQM 8 pontos: %d', eqm3));

%Aprendizado
%Base de Teste
qtd = round(length(x) * 0.1);
teste = randperm(length(x),qtd);
xTeste = x(teste);
yTeste = y(teste);
%Treinamento
xTrein = x;
yTrein = y;
xTrein(teste,:) = [];
yTrein(teste,:) = [];

%Polinomial
p11 = polyfit(xTrein, yTrein, 2);
p11 = fliplr(p11);
%Regressão 
y11 = p11(1) + (p11(2)*xTrein) + (p11(3)*xTrein.^2);
plot(xTrein,y11,'b');

%Polinomial
p22 = polyfit(xTrein, yTrein, 3);
p22 = fliplr(p22);
%Regressão 
y22 = p22(1) + (p22(2)*xTrein) + (p22(3)*xTrein.^2) + (p22(4)*xTrein.^3);
plot(xTrein,y22,'b');

%Polinomial
p33 = polyfit(xTrein, yTrein, 8);
p33 = fliplr(p33);
%Regressão 
y33 = p33(1) + (p33(2)*xTrein) + (p33(3)*xTrein.^2) + (p33(4)*xTrein.^3) + (p33(5)*xTrein.^4) + (p33(6)*xTrein.^5) + (p33(7)*xTrein.^6)+ (p33(8)*xTrein.^7)+ (p33(9)*xTrein.^8);
plot(xTrein,y33,'b');

[eqm11] = eqm(yTrein, y11);
[eqm22] = eqm(yTrein, y22);
[eqm33] = eqm(yTrein, y33);

disp("----- Erro Quadrático Teste -----");
disp(sprintf('EQM 2 pontos: %d', eqm11));
disp(sprintf('EQM 3 pontos: %d', eqm22));
disp(sprintf('EQM 8 pontos: %d', eqm33));

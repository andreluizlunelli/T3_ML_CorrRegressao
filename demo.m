%André e Karin
#{

Respostas:
3) O dataset 3 não é apropriado para regrassão linear

#}
close all; clc; clear;

x1 = [10;8;13;9;11;14;6;4;12;7;5]; 
y1 = [8.04;6.95;7.58;8.81;8.33;9.96;7.24;4.26;10.84;4.82;5.68];   

x2 = [10;8;13;9;11;14;6;4;12;7;5]; 
y2 = [9.14;8.14;8.47;8.77;9.26;8.10;6.13;3.10;9.13;7.26;4.74];      

x3 = [8;8;8;8;8;8;8;8;8;8;19]; 
y3 = [6.58;5.76;7.71;8.84;8.47;7.04;5.25;5.56;7.91;6.89;12.50]; 

%------- x1, y1 -------%
r1 = correlacao(x1, y1);  %titulo
[p01, p11, c1] = regressao(x1, y1);

clf;
figure(1);
scatter (x1, y1, "r");
hold on;
plot(x1,c1);
title (strcat("Correlação: ", num2str(r1)
      ,"; Regressão: ", num2str(p01), ", ", num2str(p11)));

%------- x2, y2 -------%
r2 = correlacao(x2, y2);  %titulo
[p02, p12, c2] = regressao(x2, y2);

figure(2);
scatter (x2, y2, "r");
hold on;
plot(x2,c2);
title (strcat("Correlação: ", num2str(r2)
      ,"; Regressão: ", num2str(p02), ", ", num2str(p12)));

%------- x3, y3 -------%
r3 = correlacao(x3, y3);  %titulo
[p03, p13, c3] = regressao(x3, y3);

figure(3);
scatter (x3, y3, "r");
hold on;
plot(x3,c3);
title (strcat("Correlação: ", num2str(r3)
      ,"; Regressão: ", num2str(p03), ", ", num2str(p13)));


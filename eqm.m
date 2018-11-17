%André e Karin
%Calcula Erro Quadratico Medio
function [eqm] = eqm(y,y1)
  r = (y - y1).^(2);
  eqm = (sum(r))/size(y,1)
end
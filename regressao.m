%
function c = regressao(x, y)
  p1 = sum((x-mean(x)) * (y-mean(y))) / sum(x-mean(x))^2;
  p0 = mean(y) - (p1 * mean(x));
  
  c = p0 + (p1 * x);  
endfunction

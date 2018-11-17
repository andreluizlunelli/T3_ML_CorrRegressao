%André e Karin
function r = regmultipla(X, y)
  b = (X' * X)^-1 * X' * y;
  
  r = X * b;
endfunction

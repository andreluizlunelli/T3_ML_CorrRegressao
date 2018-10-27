%
function r = correlacao(x, y)
  p1 = sum((x-mean(x)) .* (y-mean(y)));
  p2 = ((sum((x-mean(x)).^2)) .* sum((y-mean(y)).^2))
  p2 = sqrt(p2);
  r = p1 / p2;
endfunction

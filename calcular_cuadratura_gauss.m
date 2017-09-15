function res = calcular_cuadratura_gauss(n,x,c,a)
  res = 0;
  
  for k = 1:n
    res += c(k)*exp(-(a(k)^2));
  endfor
  res = (1/sqrt(pi))*res;
endfunction
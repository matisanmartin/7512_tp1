function error_estimado = calcular_error_estimado(n,x,f,factor)
  
  init_err = 10^n;
  k=0;
  error = init_err;
  min_err = 10^-n;
  error_estimado = 0;
  
  while(error > min_err)
    valor_calculado = f(x,k);
    error_estimado_temp = error_estimado;
    error_estimado += valor_calculado;
    error = abs(error_estimado - error_estimado_temp);
    k++;
  endwhile
  error_estimado = factor * error_estimado;
  
endfunction
function estimated_error = loop_err_calc(n,x,f)
  
  init_err = 10^n;
  k=0;
  error = init_err;
  min_err = 10^-n;
  estimated_error = 0;
  
  while(error > min_err)
    calculated = f(x,k);
    temp_estimated_error = estimated_error;
    estimated_error += calculated;
    error = abs_err(estimated_error, temp_estimated_error);
    k++;
  endwhile
  
endfunction
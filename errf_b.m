function err = errf_b (x, k)
  err = (2/sqrt(pi))*(e^-(x^2)*(2^k)*(x^((2*k)+1))/prod([1:2:2*k+1]);
endfunction

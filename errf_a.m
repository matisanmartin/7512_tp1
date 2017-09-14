function err = errf_a (x, k)
  err = (2/sqrt(pi))*(((-1)^k)*(x^((2*k)+1)))/(((2*k)+1)*prod([1:k]));
endfunction

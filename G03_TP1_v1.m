# 75.12 - Análisis Numerico 1
# San Martin Acosta, Matias
# Serra, Camila
format long; # Activa doble precision
x=1;

# Calculo para n=4
n=4;
error_n_4_a = loop_err_calc(n,x,errf_a);
error_n_4_b = loop_err_calc(n,x,errf_b);

# Calculo para n=6
n=6;
error_n_6_a = loop_err_calc(n,x,errf_a);
error_n_6_b = loop_err_calc(n,x,errf_b);

# Calculo para n=8
n=8;
error_n_8_a = loop_err_calc(n,x,errf_a);
error_n_8_b = loop_err_calc(n,x,errf_b);




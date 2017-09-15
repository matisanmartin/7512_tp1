# 75.12 - Análisis Numerico 1
# San Martin Acosta, Matias
# Serra, Camila
format long; # Activa doble precision
x=1;

# Declaración de funciones anonimas
# Van a ser pasadas por parametro a la funcion que itera y realiza el calculo
errf_a = @(x, k) (((-1)^k)*(x^((2*k)+1)))/(((2*k)+1)*prod([1:k]));
errf_b = @(x, k) ((2^k)*(x^((2*k)+1)))/prod([1:2:2*k+1]);

# Factores que multiplican las sumatorias de cada funcion
factor_a = 2/sqrt(pi)
factor_b = (2*exp(-(x)^2)/sqrt(pi))

# Calculo para n=4
error_n_4_a = calcular_error_estimado(4,x,errf_a, factor_a)
error_n_4_b = calcular_error_estimado(4,x,errf_b, factor_b)

# Calculo para n=6
error_n_6_a = calcular_error_estimado(6,x,errf_a, factor_a)
error_n_6_b = calcular_error_estimado(6,x,errf_b, factor_b)

# Calculo para n=8
error_n_8_a = calcular_error_estimado(8,x,errf_a, factor_a)
error_n_8_b = calcular_error_estimado(8,x,errf_b, factor_b)


# Cuadratura de gauss
a_2 = [];
a_3 = [];
a_4 = [];
a_5 = [];

c_2 = [];
c_3 = [];
c_4 = [];
c_5 = [];


error_n_2_cuad_gauss = calcular_cuadratura_gauss(2,x,c_2,a_2)
error_n_3_cuad_gauss = calcular_cuadratura_gauss(3,x,c_3,a_3)
error_n_4_cuad_gauss = calcular_cuadratura_gauss(4,x,c_4,a_4)
error_n_5_cuad_gauss = calcular_cuadratura_gauss(5,x,c_5,a_5)



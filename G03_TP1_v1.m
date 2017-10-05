# 75.12 - Análisis Numerico 1
# San Martin Acosta, Matias
# Serra, Camila

# Activa doble precision
format long; 

# Valor de x de acuerdo a enunciado
x=1;

# Declaración de funciones anonimas
# Van a ser pasadas por parametro a la funcion que itera y realiza el calculo
errf_a = @(x, k) (((-1)^k)*(x^((2*k)+1)))/(((2*k)+1)*prod([1:k]));
errf_b = @(x, k) ((2^k)*(x^((2*k)+1)))/prod([1:2:2*k+1]);

# Factores que multiplican las sumatorias de cada funcion
factor_a = 2/sqrt(pi);
factor_b = (2*exp(-(x)^2)/sqrt(pi));

# Calculo para n=4
printf('Calculo de error estimado para n=4 con erf1\n')
error_n_4_a = calcular_error_estimado(4,x,errf_a, factor_a)
printf('\n')
printf('Calculo de error estimado para n=4 con erf2\n')
error_n_4_b = calcular_error_estimado(4,x,errf_b, factor_b)
printf('\n')

# Calculo para n=6
printf('Calculo de error estimado para n=6 con erf1\n')
error_n_6_a = calcular_error_estimado(6,x,errf_a, factor_a)
printf('\n')
printf('Calculo de error estimado para n=6 con erf2\n')
error_n_6_b = calcular_error_estimado(6,x,errf_b, factor_b)
printf('\n')

# Calculo para n=8
printf('Calculo de error estimado para n=8 con erf1\n')
error_n_8_a = calcular_error_estimado(8,x,errf_a, factor_a)
printf('\n')
printf('Calculo de error estimado para n=8 con erf2\n')
error_n_8_b = calcular_error_estimado(8,x,errf_b, factor_b)
printf('\n')


# Cuadratura de gauss, tabla de valores de Burden
a_2 = [0.5773502692, -0.5773502692];
a_3 = [0.7745966692, 0.0000000000, -0.7745966692];
a_4 = [0.8611363116, 0.3399810436, -0.3399810436, -0.8611363116];
a_5 = [0.9061798459, 0.5384693101, 0.0000000000, -0.5384693101, -0.9061798459];

c_2 = [1.0000000000, 1.0000000000];
c_3 = [0.5555555556, 0.8888888889, 0.5555555556];
c_4 = [0.3478548451, 0.6521451549, 0.6521451549, 0.3478548451];
c_5 = [0.2369268850, 0.4786286705, 0.5688888889, 0.4786286705, 0.2369268850];

# Calculo
printf('Calculo de error estimado para n=2 con Cuadratura de Gauss\n')
error_n_2_cuad_gauss = calcular_cuadratura_gauss(2,x,c_2,a_2)
printf('\n')
printf('Calculo de error estimado para n=3 con Cuadratura de Gauss\n')
error_n_3_cuad_gauss = calcular_cuadratura_gauss(3,x,c_3,a_3)
printf('\n')
printf('Calculo de error estimado para n=4 con Cuadratura de Gauss\n')
error_n_4_cuad_gauss = calcular_cuadratura_gauss(4,x,c_4,a_4)
printf('\n')
printf('Calculo de error estimado para n=5 con Cuadratura de Gauss\n')
error_n_5_cuad_gauss = calcular_cuadratura_gauss(5,x,c_5,a_5)
printf('\n')

# Calculo de errf(1) de Octave
printf('Calculo de erf(1) con funcion de Octave\n')
erf1=erf(1)
printf('\n')

# Funciones para calcular error relativo y erro absoluto
calc_err_rel = @(xi,xv) abs(xi-xv)/xv;
calc_err_abs = @(xi,xv) abs(xi-xv);

# Comparativa de errores para errf_a
# Errores relativos
printf('Calculo de errores relativos para erf1 vs erf(1) de Octave para n=4\n')
err_rel_n_4_a_vs_erf1 = calc_err_rel(error_n_4_a, erf1)
printf('\n')
printf('Calculo de errores relativos para erf1 vs erf(1) de Octave para n=6\n')
err_rel_n_6_a_vs_erf1 = calc_err_rel(error_n_6_a, erf1)
printf('\n')
printf('Calculo de errores relativos para erf1 vs erf(1) de Octave para n=8\n')
err_rel_n_8_a_vs_erf1 = calc_err_rel(error_n_8_a, erf1)
printf('\n')
# Errores absolutos
printf('Calculo de errores absolutos para erf1 vs erf(1) de Octave para n=4\n')
err_abs_n_4_a_vs_erf1 = calc_err_abs(error_n_4_a, erf1)
printf('\n')
printf('Calculo de errores absolutos para erf1 vs erf(1) de Octave para n=6\n')
err_abs_n_6_a_vs_erf1 = calc_err_abs(error_n_6_a, erf1)
printf('\n')
printf('Calculo de errores absolutos para erf1 vs erf(1) de Octave para n=8\n')
err_abs_n_8_a_vs_erf1 = calc_err_abs(error_n_8_a, erf1)
printf('\n')

# Comparativa de errores para errf_b
#Errores relativos
printf('Calculo de errores relativos para erf2 vs erf(1) de Octave para n=4\n')
err_rel_n_4_b_vs_erf1 = calc_err_rel(error_n_4_b, erf1)
printf('\n')
printf('Calculo de errores relativos para erf2 vs erf(1) de Octave para n=6\n')
err_rel_n_6_b_vs_erf1 = calc_err_rel(error_n_6_b, erf1)
printf('\n')
printf('Calculo de errores relativos para erf2 vs erf(1) de Octave para n=8\n')
err_rel_n_8_b_vs_erf1 = calc_err_rel(error_n_8_b, erf1)
printf('\n')
#Errores absolutos
printf('Calculo de errores absolutos para erf2 vs erf(1) de Octave para n=4\n')
err_abs_n_4_b_vs_erf1 = calc_err_abs(error_n_4_b, erf1)
printf('\n')
printf('Calculo de errores absolutos para erf2 vs erf(1) de Octave para n=6\n')
err_abs_n_6_b_vs_erf1 = calc_err_abs(error_n_6_b, erf1)
printf('\n')
printf('Calculo de errores absolutos para erf2 vs erf(1) de Octave para n=8\n')
err_abs_n_8_b_vs_erf1 = calc_err_abs(error_n_8_b, erf1)
printf('\n')

#Comparativa de errores para cuadratura de gauss
#Errores relativos
printf('Calculo de errores relativos para Cuadratura de Gaus vs erf(1) de Octave para n=2\n')
err_rel_n_2_cg_vs_erf1 = calc_err_rel(error_n_2_cuad_gauss, erf1)
printf('\n')
printf('Calculo de errores relativos para Cuadratura de Gaus vs erf(1) de Octave para n=3\n')
err_rel_n_3_cg_vs_erf1 = calc_err_rel(error_n_3_cuad_gauss, erf1)
printf('\n')
printf('Calculo de errores relativos para Cuadratura de Gaus vs erf(1) de Octave para n=4\n')
err_rel_n_4_cg_vs_erf1 = calc_err_rel(error_n_4_cuad_gauss, erf1)
printf('\n')
printf('Calculo de errores relativos para Cuadratura de Gaus vs erf(1) de Octave para n=5\n')
err_rel_n_5_cg_vs_erf1 = calc_err_rel(error_n_5_cuad_gauss, erf1)
printf('\n')

#Errores absolutos
printf('Calculo de errores absolutos para Cuadratura de Gaus vs erf(1) de Octave para n=2\n')
err_abs_n_2_cg_vs_erf1 = calc_err_abs(error_n_2_cuad_gauss, erf1)
printf('\n')
printf('Calculo de errores absolutos para Cuadratura de Gaus vs erf(1) de Octave para n=3\n')
err_abs_n_3_cg_vs_erf1 = calc_err_abs(error_n_3_cuad_gauss, erf1)
printf('\n')
printf('Calculo de errores absolutos para Cuadratura de Gaus vs erf(1) de Octave para n=4\n')
err_abs_n_4_cg_vs_erf1 = calc_err_abs(error_n_4_cuad_gauss, erf1)
printf('\n')
printf('Calculo de errores absolutos para Cuadratura de Gaus vs erf(1) de Octave para n=5\n')
err_abs_n_5_cg_vs_erf1 = calc_err_abs(error_n_5_cuad_gauss, erf1)
printf('\n')
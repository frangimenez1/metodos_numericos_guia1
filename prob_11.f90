program prob_11
    implicit none
    real :: A, B, C
    real :: discriminante, parte_real, parte_imag, raiz1, raiz2

    ! Pedimos los coeficientes al usuario
    write(*,*) 'Ingrese los coeficientes A, B y C (separados por espacios):'
    read(*,*) A, B, C

    ! Evitamos una division por cero en caso de que A sea 0
    if (A == 0.0) then
        write(*,*) 'Si A es 0, no es un polinomio de segundo grado.'
        stop
    end if

    ! Calculamos el discriminante
    discriminante = B**2 - 4.0 * A * C

    ! Evaluamos el discriminante para separar los casos
    if (discriminante >= 0.0) then
        ! CASO 1: Raices reales
        raiz1 = (-B + sqrt(discriminante)) / (2.0 * A)
        raiz2 = (-B - sqrt(discriminante)) / (2.0 * A)

        ! Imprimimos forzando el formato a + ib que pide la guia
        write(*,*) 'Raiz 1 = ', raiz1, ' + i 0.0000'
        write(*,*) 'Raiz 2 = ', raiz2, ' + i 0.0000'

    else
        ! CASO 2: Raices complejas conjugadas
        parte_real = -B / (2.0 * A)

        ! Le ponemos un signo menos al discriminante para poder sacarle la raiz
        parte_imag = sqrt(-discriminante) / (2.0 * A)

        write(*,*) 'Raiz 1 = ', parte_real, ' + i ', parte_imag
        write(*,*) 'Raiz 2 = ', parte_real, ' - i ', parte_imag

    end if

end program prob_11

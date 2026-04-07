program prob_17
    implicit none
    integer :: n, m
    real :: res_a, res_b, res_c, suma_interna
    real :: error_parcial_b, error_parcial_c
    real :: error_relativo_b, error_relativo_c

    ! A) Multiplicacion directa
    res_a = 1000000.0 * 0.1

    ! Abrimos los archivos para guardar los datos de los graficos
    open(unit=10, file='errores_b.dat', status='replace')
    open(unit=20, file='errores_c.dat', status='replace')

    ! B) Suma directa de un millon de veces
    res_b = 0.0
    do n = 1, 1000000
        res_b = res_b + 0.1

        ! Guardamos el error parcial cada 1000 iteraciones
        if (mod(n, 1000) == 0) then
            error_parcial_b = abs(res_b - (real(n) * 0.1))
            write(10, *) n, error_parcial_b
        end if
    end do

    ! C) Suma anidada (1000 bloques de 1000)
    res_c = 0.0
    do m = 1, 1000
        ! Acumulador temporal para el bloque interno
        suma_interna = 0.0
        do n = 1, 1000
            suma_interna = suma_interna + 0.1
        end do

        ! Sumamos el bloque entero al total
        res_c = res_c + suma_interna

        ! Guardamos el error en cada iteracion externa
        error_parcial_c = abs(res_c - (real(m * 1000) * 0.1))
        write(20, *) m * 1000, error_parcial_c
    end do

    close(10)
    close(20)

    ! Calculo final de los errores relativos
    error_relativo_b = abs(res_b - res_a) / res_a
    error_relativo_c = abs(res_c - res_a) / res_a

    ! Mostramos los resultados en la terminal
    write(*,*) 'Valor A (Multiplicacion) : ', res_a
    write(*,*) 'Valor B (Suma de a 0.1)  : ', res_b
    write(*,*) 'Valor C (Suma anidada)   : ', res_c
    write(*,*) 'Error relativo en B      : ', error_relativo_b * 100.0, ' %'
    write(*,*) 'Error relativo en C      : ', error_relativo_c * 100.0, ' %'

end program prob_17

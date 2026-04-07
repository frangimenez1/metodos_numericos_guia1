program prob_15
    implicit none
    integer :: n, i
    real, dimension(:), allocatable :: x
    real :: suma_x, promedio, suma_varianza, desviacion

    ! 1. Pedir el numero de datos por teclado
    write(*,*) 'Ingrese el numero de datos a procesar:'
    read(*,*) n

    ! 2. Asignar memoria al vector dinamicamente
    allocate(x(n))

    ! 3. Abrir el archivo y leer los datos
    open(unit=10, file='datos1.dat', status='old', action='read')
    do i = 1, n
        read(10, *) x(i)
    end do
    close(10)

    ! 4. Calculo del promedio (Media)
    suma_x = 0.0
    do i = 1, n
        suma_x = suma_x + x(i)
    end do
    promedio = suma_x / real(n)

    ! 5. Calculo de la Desviacion Standard
    suma_varianza = 0.0
    do i = 1, n
        suma_varianza = suma_varianza + (x(i) - promedio)**2
    end do
    desviacion = sqrt(suma_varianza / real(n - 1))

    ! 6. Mostrar resultados por pantalla
    write(*,*) 'El promedio es: ', promedio
    write(*,*) 'La desviacion standard es: ', desviacion

    ! 7. Escribir los resultados en un archivo nuevo
    open(unit=20, file='resultados1.dat', status='replace', action='write')
    write(20,*) 'Promedio: ', promedio
    write(20,*) 'Desviacion: ', desviacion
    close(20)

    deallocate(x)

end program prob_15

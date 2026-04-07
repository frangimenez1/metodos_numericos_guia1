program prob_12
implicit none

    integer :: n
    real :: suma_directa , suma_inversa ! Donde suma_directa almacena el resultado normal y suma_inversa almacena el resultado de la suma inversa

    !Inicio los acumuladores en cero
    suma_directa = 0.0 ! Pongo 0.0 para que la variable este limpia y no traiga residuo si la use en otro programa
    suma_inversa = 0.0

    ! Suma de orden usual (de 1 a 10.000.000)
    do n = 1, 10000000
        suma_directa = suma_directa + (1.0 / real(n))
    end do

    ! Suma en orden opuesto (de 10.000.000 a 1, uso el tercer parametro m3 en -1 para indicar que vaya en reversa)
    do n = 10000000, 1 , -1
        suma_inversa = suma_inversa + (1.0 / real(n))
    end do

    ! Muestro los resultados
    write(*,*) 'Suma de orden normal', suma_directa
    write(*,*) 'Suma de orden inverso', suma_inversa

end program prob_12

program prob_16
    implicit none
    integer :: num_base10, b, cociente, resto, i, num_digitos
    ! Creamos un vector para guardar hasta 100 caracteres (letras o numeros sueltos)
    character(len=1), dimension(100) :: resultado

    ! 1. Pedir datos
    write(*,*) 'Ingrese el numero natural (en base 10) a convertir:'
    read(*,*) num_base10

    write(*,*) 'Ingrese la base b (menor o igual a 16):'
    read(*,*) b

    ! Proteccion: si ingresan 0, el resultado es siempre 0
    if (num_base10 == 0) then
        write(*,*) 'El resultado en base ', b, ' es: 0'
        stop
    end if

    ! 2. Inicializar variables para el bucle
    cociente = num_base10
    num_digitos = 0

    ! 3. Bucle de divisiones sucesivas
    do while (cociente > 0)
        ! Calculamos el resto de la division
        resto = mod(cociente, b)

        ! Avanzamos el contador para guardar en el siguiente casillero del vector
        num_digitos = num_digitos + 1

        ! 4. Convertir el resto en un digito de la nueva base usando SELECT CASE
        select case (resto)
            case (10)
                resultado(num_digitos) = 'A'
            case (11)
                resultado(num_digitos) = 'B'
            case (12)
                resultado(num_digitos) = 'C'
            case (13)
                resultado(num_digitos) = 'D'
            case (14)
                resultado(num_digitos) = 'E'
            case (15)
                resultado(num_digitos) = 'F'
            case default
                ! Para asignar los digitos del 0 al 9
                ! Convertimos el numero entero a caracter y lo guardamos en el vector
                write(resultado(num_digitos), '(I1)') resto
        end select

        ! 5. Actualizamos el cociente para la proxima vuelta (division entera)
        cociente = cociente / b
    end do

    ! 6. Imprimir el resultado final AL REVES y pegado
    write(*,*) 'El numero ', num_base10, ' en base ', b, ' es:'

    ! Bucle en reversa (m3 = -1)
    do i = num_digitos, 1, -1
        ! advance='no' evita que Fortran haga un salto de linea por cada letra
        write(*, '(A)', advance='no') resultado(i)
    end do

    write(*,*) ! Esto es solo para hacer un salto de linea final por prolijidad

end program prob_16

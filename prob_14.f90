program prob_14
    use parametros
    use subrutinas
    implicit none

    integer :: n, i, j
    ! Declaramos los arreglos como "allocatable" y con (:) para indicar que sus dimensiones varian
    real(pr), dimension(:,:), allocatable :: matriz
    real(pr), dimension(:), allocatable   :: vector, resultado

    ! 1. Preguntar el valor de N
    write(*,*) 'Ingrese el tamano N para la matriz y el vector:'
    read(*,*) n

    ! 2. Definir los arreglos dinamicamente con el tamaño N ingresado
    allocate(matriz(n,n))
    allocate(vector(n))
    allocate(resultado(n))

    ! 3. Inicializar la matriz con las reglas del problema
    do i = 1, n
        do j = 1, n
            if (i == j) then
                matriz(i,j) = 3.0_pr    ! Elementos de la diagonal principal
            else if (i < j) then
                matriz(i,j) = 1.0_pr    ! Elementos de la triangular superior
            else
                matriz(i,j) = 0.0_pr    ! Resto de la matriz (inferior)
            end if
        end do
    end do

    ! 4. Inicializar el vector con las reglas de pares e impares
    do i = 1, n
        ! Usamos la funcion mod() que ya dominas para saber si la posicion es par
        if (mod(i, 2) == 0) then
            vector(i) = 2.0_pr          ! Posiciones pares
        else
            vector(i) = 3.0_pr          ! Posiciones impares
        end if
    end do

    ! 5. Llamar a la subrutina usando CALL
    call multiplicar_mat_vec(n, matriz, vector, resultado)

    ! 6. Imprimir el vector resultado por pantalla
    write(*,*) 'El vector resultado de la multiplicacion es:'
    do i = 1, n
        write(*,*) resultado(i)
    end do

    ! 7. Buena practica: liberar la memoria ocupada por los arreglos al terminar
    deallocate(matriz, vector, resultado)

end program prob_14

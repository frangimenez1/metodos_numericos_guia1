program prob_13
    use parametros
    use funciones
    implicit none

    real(pr) :: x
    integer :: i

    write(*,*) 'Ingrese un numero real:'
    read(*,*) x

    ! Usamos formato explicito para la primera frase
    write(*, '("Las 5 primeras potencias naturales de ", F4.0, " son:")') x
    write(*,*) '--------------------------------------------------'

    ! Bucle para calcular las potencias del 1 al 5
    do i = 1, 5
        ! Insertamos el texto directamente adentro del formato, igual que en el Problema 24
        write(*, '(F4.0, " ^ ", I1, " = ", F8.0)') x, i, potencia(x, i)

    end do

end program prob_13


module subrutinas
    use parametros
    implicit none

contains

    ! Declaracion de la subrutina
    subroutine multiplicar_mat_vec(n, mat, vec, res)
        integer, intent(in)                  :: n
        real(pr), dimension(n,n), intent(in) :: mat  ! Matriz de NxN de entrada
        real(pr), dimension(n), intent(in)   :: vec  ! Vector de N de entrada
        real(pr), dimension(n), intent(out)  :: res  ! Vector resultado de salida
        integer                              :: i, j

        ! Inicializamos el vector resultado en 0
        do i = 1, n
            res(i) = 0.0_pr
        end do

        ! Multiplicacion de matriz por vector usando bucles anidados
        do i = 1, n
            do j = 1, n
                res(i) = res(i) + mat(i,j) * vec(j)
            end do
        end do
    end subroutine multiplicar_mat_vec

end module subrutinas

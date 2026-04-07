module funciones
    use parametros !Le aviso que use la precision definida para las variables en ese archivo

    implicit none

contains

!Sintaxis de funcion externa
    function potencia(x, n)
    real(pr), intent(in) :: x !La base real
    integer, intent(in) :: n !El exponente entero
    real(pr) :: potencia ! La variable de salida tiene que llamarse igual que la funcion

    potencia = x ** n

    return
end function potencia

end module funciones

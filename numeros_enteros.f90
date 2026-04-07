program numeros_enteros
implicit none
INTEGER :: num1, num2, producto

WRITE(*,*) 'Ingresar dos numeros'

READ(*,*) num1, num2

producto = num1 * num2

WRITE(*,*) 'El resultado es =',producto
STOP
END PROGRAM numeros_enteros


program Problema9
implicit none
real :: num1, num2
write(*,*) 'Insertar dos numeros reales'
read (*,*) num1, num2
if (num1 > num2) then
    write(*,*) 'El numero mayor es:', num1
else if (num2 > num1) then
    write(*,*) 'El numero mayor es:', num2

else
    write(*,*) 'Los numeros son iguales'
end if
stop
end program

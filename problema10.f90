program problema_10
implicit none
integer :: num1
write(*,*) 'Ingresar un numero'
read(*,*) num1
if (mod(num1, 2)== 0 .and. mod(num1,5)== 0) then
    write(*,*) num1, 'es multiplo de 2 y de 5'

else if (mod(num1,2)== 0 .and. mod(num1,5)/= 0) then
    write(*,*) num1, 'es multiplo de 2'

else if (mod(num1,5)== 0 .and. mod(num1,2)/= 0) then
    write(*,*) num1, 'es multiplo de 5'

else
    write(*,*) num1, 'no es multiplo ni de 2 ni de 5'

end if
stop
end program problema_10

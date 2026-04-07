program numeros_reales
implicit none
!(Declaro las variables reales usadas en este programa, poniendo REAL o real(pr))

	REAL :: num1, num2, suma !(Separo con , las variables usadas en este programa)

!(Ahora quiero pedir que el usuario ingrese 2 numeros y quer aparezca en pantalla)

WRITE(*,*) 'Escribir 2 numeros' !(Siempre que pido que el usuario escriba algo, tengo que hacer que la maquina lea ese algo, entonces pongo)

READ(*,*) num1, num2

!(Como ya le pedi al usuario que ingrese los numeros, le pedi a la maquina que los lea, ahora quiero que sume esos dos numeros, entonces almaceno num1 + num2 en la expresion suma)

suma = num1 + num2

WRITE(*,*) 'El resultado de la suma es =', suma

STOP
END PROGRAM numeros_reales

	

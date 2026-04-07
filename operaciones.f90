program operaciones
implicit none

real :: A, B, C, D, E, F, G

A = 5 / 2 + 20 / 6
B = 4 * 6 / 2 - 15 / 2
C = 5 * 15 / 2 / (4 - 2)
D = 1 + 1/4
E = 1. + 1/4
F = 1 + 1./4
G = 1. + 1./4.

write (*, "('El resultado de las operaciones es:' / &
            '----------------------------------' / &
            'A = 5 / 2 + 20 / 6 es             ', F8.4 / &
            'B = 4 * 6 / 2 - 15 / 2 es         ', F8.4 / &
            'C = 5 * 15 / 2 / (4 - 2) es       ', F8.4 / &
            'D = 1 + 1/4 es                    ', F8.4 / &
            'E = 1. + 1/4 es                   ', F8.4 / &
            'F = 1 + 1./4 es                   ', F8.4 / &
            'G = 1. + 1./4. es                 ', F8.4)") A, B, C, D, E, F, G

Stop
end program operaciones


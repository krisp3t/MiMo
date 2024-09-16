main:   li r1, 2
        li r2, 1

loop:   sub r1, r1, r2
        jnez r1, loop
        sw r2, 16
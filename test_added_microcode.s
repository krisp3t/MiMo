_start:     li r0, 10   # inicializiramo števec
            li r1, 0    # inicializiramo rezultat

loop:       subi r0, r0, 1          # dekrementiramo števec
            beq r0, r1, end         # če je števec 0, skoči na konec
            jmp loop                # če ni, ponavljaj zanko

end:        jmp end                   # končaj program
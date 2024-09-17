main:   li    r0, 16           # r0 je števec zank (16 iteracij, ker 4-bitni barvni format)
        li    r1, 1            # r1 je trenutna barva
        li    r2, 1            # r2 seštevamo r1, da dobimo naslednjo barvo
        li    r3, 16           # r3 je meja za barvno vrednost (16)

loop:   sw    r1, 49152       # Zapiši trenutno barvo v pomnilnik RGB
		addi  r1, r1, 1        # Piksel desno
        add   r1, r1, r2       # Zamenjaj barvo
        beq   r1, r3, reset    # Če je r1 == 16, skoči na reset in ponastavi na 0

continue:   add   r0, r0, -1       # Dekrementiraj števec zank
        	jnez  r0, loop         # Če je r0 != 0, nadaljuj zanko
        	jmp   main             # Ponovi celoten program (zanka za vedno)

reset:  li    r1, 0            # Ponastavi r1 na 0
        jmp   continue         # Nadaljuj zanko

/* collatz.s
 *
 *Collatz Sequence
 *
 *
 *David Mataconis*/

        .syntax unified
        .text
        .global _start

_start:
        mov r0, 0
        mov r1, 15 @number being tested in collatz
        cmp r1, 1
        beq loop
        mov r2, 2
        mov r3, 3
        and r4, r1, 1
        cmp r4, 1
        beq odd

even:
        udiv r1, r1, r2


loop:
        add r0, r0, 1
        cmp r1, 1
        beq exit
        and r4, r1, 1
        cmp r4, 1
        bne even


odd:
        mov r5, r1
        mul r1, r5, r3
        add r1, r1, 1
        bal loop

exit:
        mov r7, 1
        swi 0

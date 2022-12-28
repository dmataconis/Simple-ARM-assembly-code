/* Fibonacci
 * Create fibonacci sequence
 *
 *
 * David Mataconis
 */
        .syntax unified
        .text
        .global _start

_start:
        mov r5, 0       @ sum
        mov r1, 11      @ n
        mov r2, 1       @ n-1
        mov r3, 0       @ n-2
        mov r4, 0       @ i = 0

loop:
        add r4, r4, 1
        cmp r4, r1
        beq exit
        add r5, r2, r3
        mov r3, r2
        mov r2, r0
        bal loop




exit:
        mov r7, 1
        swi 0


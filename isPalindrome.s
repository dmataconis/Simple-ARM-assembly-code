
/* isPalindrome
* see if word is palindrome or not
*
* David Mataconis
*/

        .syntax unified
        .text
        .global _start

_start:
        mov r1, 6               @length of string/counter
        sub r2, r1, 1
        ldr r3, =pal_msg        @load message into r3
        mov r5, 0               @i = 0
        add r9, r3, r2          @new register for going backwards


loop:
        ldrb r4, [r3]
        ldrb r10, [r9]
        cmp r4, r10
        bne not_pal
        sub r9, r9 , 1
        add r3, r3, 1
        cmp r9, r3
        ble is_pal
        bal loop



not_pal:
        mov r0, 0
        bal exit


is_pal:
        mov r0, 1


exit:
        mov r7, 1
        swi 0
        
.data
@string inputed by user
pal_msg: .ascii "heeeeh"

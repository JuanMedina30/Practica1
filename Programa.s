main:
        push    {r11, lr}
        mov     r11, sp
        sub     sp, sp, #8
        ldr     r0, .LCPI1_0
        bl      printf
        mov     r1, #0
        str     r0, [sp, #4]                    @ 4-byte Spill
        mov     r0, r1
        mov     sp, r11
        pop     {r11, lr}
        bx      lr
.LCPI1_0:
        .long   .L.str
_GLOBAL__sub_I_example.cpp:
        push    {r11, lr}
        mov     r11, sp
        bl      __cxx_global_var_init
        pop     {r11, lr}
        bx      lr
.L.str:
        .asciz  "Hola mundo"

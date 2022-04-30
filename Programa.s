.LC0:
        .ascii  "Hola mundo sexo\000"
main:
        push    {r7, lr}
        add     r7, sp, #0
        movw    r0, #:lower16:.LC0
        movt    r0, #:upper16:.LC0
        bl      printf
        movs    r3, #0
        mov     r0, r3
        pop     {r7, pc}
__static_initialization_and_destruction_0(int, int):
        push    {r7, lr}
        sub     sp, sp, #8
        add     r7, sp, #0
        str     r0, [r7, #4]
        str     r1, [r7]
        ldr     r3, [r7, #4]
        cmp     r3, #1
        bne     .L5
        ldr     r3, [r7]
        movw    r2, #65535
        cmp     r3, r2
        bne     .L5
        movw    r0, #:lower16:_ZStL8__ioinit
        movt    r0, #:upper16:_ZStL8__ioinit
        bl      std::ios_base::Init::Init() [complete object constructor]
        movw    r2, #:lower16:__dso_handle
        movt    r2, #:upper16:__dso_handle
        movw    r1, #:lower16:_ZNSt8ios_base4InitD1Ev
        movt    r1, #:upper16:_ZNSt8ios_base4InitD1Ev
        movw    r0, #:lower16:_ZStL8__ioinit
        movt    r0, #:upper16:_ZStL8__ioinit
        bl      __aeabi_atexit
.L5:
        nop
        adds    r7, r7, #8
        mov     sp, r7
        pop     {r7, pc}
_GLOBAL__sub_I_main:
        push    {r7, lr}
        add     r7, sp, #0
        movw    r1, #65535
        movs    r0, #1
        bl      __static_initialization_and_destruction_0(int, int)
        pop     {r7, pc}

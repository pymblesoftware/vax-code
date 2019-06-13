

LL0:
        .data
        .text
        .align  1
        .globl  _main
_main:
        .word   L21
        jbr     L23
L24:
        .data   1
L26:
        .ascii  "Enter an integer\72 \0"
        .text
        pushl   $L26
        calls   $1,_printf
        .data   1
L28:
        .ascii  "%d\0"
        .text
        subl3   $4,fp,r0
        pushl   r0
        pushl   $L28
        calls   $2,_scanf
        divl3   $2,-4(fp),r0
        mull2   $2,r0
        subl3   r0,-4(fp),r0
        tstl    r0
        jneq    L29
        .data   1
L30:
        .ascii  "%d is even.\0"
        .text
        pushl   -4(fp)
        pushl   $L30
        calls   $2,_printf
        jbr     L31
L29:
        .data   1
L32:
        .ascii  "%d is odd.\0"
        .text
        pushl   -4(fp)
        pushl   $L32
        calls   $2,_printf
L31:
        clrl    r0
        ret
        ret
        .set    L21,0x0
L23:
        subl2   $4,sp
        jbr     L24
        .data



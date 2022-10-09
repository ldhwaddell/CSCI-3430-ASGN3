Disassembly of function FACTORIAL
(CONST 0) = 1
1 required argument
0 optional arguments
No rest parameter
No keyword parameters
14 byte-code instructions:
0     L0
0     (LOAD&PUSH 1)
1     (CONST&PUSH 0)                      ; 1
2     (CALLSR&JMPIF 1 47 L20)             ; =
6     (LOAD&PUSH 1)
7     (CALLS2&JMPIF 172 L20)              ; ZEROP
10    (LOAD&PUSH 1)
11    (LOAD&DEC&PUSH 2)
13    (JSR&PUSH L0)
15    (CALLSR 2 57)                       ; *
18    (SKIP&RET 2)
20    L20
20    (CONST 0)                           ; 1
21    (SKIP&RET 2)
NIL
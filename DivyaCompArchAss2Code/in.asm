;  add two 1 x N vectors
         go   0
0        ldi  2 .v1          ; r2 points to vectors v1
         ldi  3 .v2          ; r3 points to vectors v2
         ld   4 .count       ; r4 has value of counter
         ldi  5 .output
.loop    ld   1 *2           ; load vectors v1 to register 1
         add  1 *3           ; add vectors v2 to register 1
         dec  4              ; decrement count
         inc  2              ; increment vectors v1 pointer to next elements
         inc  3              ; increment vectors v2 pointer to next elements
         inc  5              ; increment output pointer
         st   1 *5           ; store value at register 1 to .output
         bnz  4 .loop
         sys  1 16
.count   dw   3
.v1      dw   1
         dw   2
         dw   3
.v2      dw   6
         dw   5
         dw   6
.output  dw   0
         dw   0
         dw   0
26       dw   0
         end
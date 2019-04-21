org 0000h
mov a,r7
mov r5,#08
mov r4,#00

here:
rlc a
jnc hi
inc r4
hi:
djnz r5,here

mov a,r6
mov r5,#08
here2:
rlc a
jnc hi2
inc r4
hi2:
djnz r5,here2

setb P3.4
setb P3.3
mov dptr,#30h
mov a,r4
movc a,@a+dptr
mov P1,a
org 0030h
db C0h,F9h,A4h,B0h,99h,92h,82h,F8h,80h,90h

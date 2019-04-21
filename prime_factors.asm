mov a,#121
mov r1,a
mov r2,a
dec r2 
mov r0,#20h
wapas1:
mov a,r2
subb a,#01
jz finstop
mov a,r1
mov b,r2
div ab
mov a,b
cjne a,#00h,nodiv
; r2 is divisor
; check for r2 is prime or not 

mov a,r2
mov r3,a
mov r4,a
dec r4

wapas2:
mov a,r4
subb a,#01h
jz prime
mov a,r3
mov b,r4
div ab
mov a,b

cjne a,#00h,nxt
sjmp nodiv
nxt:dec r4
sjmp wapas2


prime:
mov a,r3
mov @r0,a
inc r0

nodiv:
dec r2
sjmp wapas1

finstop:
end

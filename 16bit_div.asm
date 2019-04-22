nu1 equ 40
nl1 equ 41
nu2 equ 50
nl2 equ 51

mov r6,#00h
mov r7,#00h
loop:
mov a,nu1
cjne a,nu1,less
mov a,nl1
clr c
cjne a,nl2,nless
mov nl1,#00h
mov nu1,#00h
acall addl
ajmp exit
less: jc exit 
nless: cjne a,nl2,exit
ajmp exit
next: jc exit
mov a,nl1
subb a,nl2
acall addl
ajmp loop
exit:
sjmp exit

addl:
mov a,r6
add a,#01h
mov r6,a
mov a,r7
addc a,#00h
mov r7,a
ret
end

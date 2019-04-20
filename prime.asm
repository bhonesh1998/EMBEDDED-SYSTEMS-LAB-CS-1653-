mov a,#15
mov r1,a
mov r0,a
dec r0

here:
mov b,r0
mov a,r1
div ab
mov a,b
jnz wow2
mov r3,#00 ; not prime
sjmp wow
wow2:dec r0
cjne r0,#02,here
mov r3,#01 ; prime
sjmp wow
wow:
end


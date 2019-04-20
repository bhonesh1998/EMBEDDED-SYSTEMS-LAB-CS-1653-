mov a,#05h
mov r1,a
mov r2,a ; ans 
dec r1
dec a
here:

mov b,a
mov r4,a
mov a,r2
mul ab ;a=12

mov r2,a
dec r4
mov a,r4
djnz r1,here

end

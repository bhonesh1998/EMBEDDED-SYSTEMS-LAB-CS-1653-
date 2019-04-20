;method 1 using loop
; a is input and r1 is answer
mov a,#04
mov r0,a
mov r1,#00
mov r2,a
here:
mov a,r2
add a,r1
mov r1,a
dec r2
djnz r0,here
end

; method 2 using mul and div 
; a is input and a is answer 
mov a,#04h
mov b,a
inc a
mul ab
mov b,#02h
div ab
end

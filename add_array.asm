mov r0,#10h
mov a,@r0
mov r1,#02
here:
inc r0
add a,@r0
djnz r1,here
end

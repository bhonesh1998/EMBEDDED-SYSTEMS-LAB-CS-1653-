mov r0,#20h
mov r2,#00h
mov r1,#06
here:
mov a,@r0
inc r0
cjne a,#06h,nxt
inc r2
nxt:
djnz r1,here
end

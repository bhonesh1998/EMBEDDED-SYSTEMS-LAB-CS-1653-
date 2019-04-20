mov r0,#10h
mov r1,#05h
mov r2,#10h
inc r1
here:
cjne r1,#00h,wow2
mov r3,#00h
wow2:mov a,@r0
inc r0
dec r1
subb a,r2
cjne a,#00h,here
mov r3,#01h
end




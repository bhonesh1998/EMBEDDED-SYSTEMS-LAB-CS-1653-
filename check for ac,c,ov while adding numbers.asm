mov r0,#10h
mov r1,#05
mov r2,#00;for carry
mov r3,#00; for ov 
mov r4,#00; for ac
mov r5,#00h
addt:
mov a,@r0
add a,r5;a=a+r5
jnc nocarr
inc r2
nocarr:
jnb AC,noaxcarr
inc r4
noaxcarr:
jnb OV,noover
inc r3
noover:

clr CY
clr AC
clr OV
inc r0
mov r5,a
djnz r1,addt
end

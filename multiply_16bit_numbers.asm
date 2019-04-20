; answer is like (on memory) 23h,22h,21h,20h
; value1=6151
; value2=0210
; answer=00C8B710

;23h=hb4
;22h=lb4+hb3+hb2
;21h=hb1+lb2+lb3
;20h=lb1


mov r1,#02h
mov r3,#10h
mov r2,#61h
mov r4,#51h

mov a,r3
mov b,r4
mul ab ; a=lb1,b=hb1
mov 20h,a
mov 21h,b

mov a,r3
mov b,r2
mul ab;a=lb2,b=hb2
addc a,21h
mov 21h,a
mov 22h,b

mov a,r1
mov b,r4
mul ab;a=lb3,b=hb3
addc a,21h
mov 21h,a
mov a,b
addc a,22h
mov 22h,a

mov  a,r1
mov b,r2
mul ab; a=lb4,b=hb4
addc a,22h
mov 22h,a
mov a,b
addc a,#00h
mov 23h,a

end






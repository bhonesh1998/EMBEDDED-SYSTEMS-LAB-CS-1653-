org 0000h
ljmp main


org 000bh
cpl p2.1
reti


org 0030h
main:
mov tmod,#02h
mov p0,#0ffh
mov th0,#-92
mov ie,#82h
setb tr0
back: mov a,p0
	mov p1,a
	sjmp back

end	

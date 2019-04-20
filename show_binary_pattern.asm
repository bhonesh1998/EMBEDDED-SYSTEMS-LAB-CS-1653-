here:
dec p1
call delay
sjmp here

delay:
mov tmod,#01h
mov th0,#05h
mov tl0,#02h
setb tr0
here2:jnb tf0,here2
ret


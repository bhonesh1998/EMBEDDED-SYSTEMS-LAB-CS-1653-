; use freq 1000 in edsim51 and open dac for output 
mov tmod,#01h
mov p1,#00h
main:
clr p0.7
setb p1.5
acall delay
clr p1.5
acall delay
sjmp main

delay:
mov th0,#0ffh
mov tl0,#1ah
setb tr0
here: jnb tf0,here
clr tr0
clr tf0
setb p1.5
ret 
end

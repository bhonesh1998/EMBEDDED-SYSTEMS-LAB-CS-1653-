MOV A,#08H
MOV B,#03H

HERE: 
JC LOOP
SUBB A,B
CJNE A,B,HERE
MOV A,#00H
LOOP:
END
MOV R0,A
LOOP:
 END
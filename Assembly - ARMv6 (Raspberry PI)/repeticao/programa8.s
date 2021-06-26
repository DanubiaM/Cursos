/*
	somar numeros de 1 ate 10

*/

.global _start
_start:
	MOV R1, #0
	MOV R2, #1

_loop:
	CMP R2, #10
	BGT _end
	ADD R1, R1, R2
	ADD R2, R2, #1
	B _loop
_end:
	MOV R0, R1
	MOV R7, #1
	SWI 0



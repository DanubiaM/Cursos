/*
10 plus 20
*/

.global _start
_start:
	MOV R1, #10
	MOV R2, #20
	ADD R0, R1, R2

	ADD R7, #1
	SWI 0

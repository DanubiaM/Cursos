/*
12 * 3
*/

.global _start
_start:

	MOV R1, #12
	MOV R2, #3
	MUL R0, R1, R2

	MOV R7, #1
	SWI 0

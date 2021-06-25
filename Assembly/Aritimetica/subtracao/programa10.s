/*
10 plus 7
*/
.global _start
_start:
	MOV R1, #10
	SUB R0, R1, #7  @fez direto sem armazenar 7 em um registrador

	MOV R7, #1
	SWI 0

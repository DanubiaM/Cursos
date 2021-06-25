.global _start

_start:
	MOV R1, #12
	MOV R2, #3
	MOV R0, #0 @inicializacao do registrador de resultado

_division:
	SUBS R1, R1, R2
	ADD R0, R0, #1
	BHI _division 	@salto If R1>R2

	MOV R7, #1
	SWI 0

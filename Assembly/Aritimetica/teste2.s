.global _start

_start:
	MOV R0, #1
	LDR R1, =mensagem1
	LDR R2, = len_mensagem1
	MOV R7, #4
	swi 0

_read:
	MOV R0, #0
	LDR R1, =buffer
	LDR R2, =len_buffer
	MOV R7, #3
	SWI 0

_soma:
	ADD R0, R1, #3

_resultado:
	MOV R1, R0

	MOV R0, #1
	LDR R2 ,R1
	MOV R7, #4
	SWI 0
_exit:
	MOV R7, #1
	SWI 0

.data
	buffer: .ascii "    "
	len_buffer= .-buffer

	mensagem1: .ascii "Digite o numero"
	len_mensagem1= .-mensagem1


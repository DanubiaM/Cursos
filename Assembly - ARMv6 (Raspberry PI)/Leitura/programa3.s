.global _start

_start:
	MOV R0, #0		@#0 para indicar o teclado
	LDR R1, =buffer		@variavel que vai ser carregada
	MOV R2, #5		@indica quantos caracteres sera lido
	MOV R7, #3		@syscall para leitura
	SWI 0

_end:
	MOV R7, #1
	SWI 0

.data
	buffer: .ascii "     "

 

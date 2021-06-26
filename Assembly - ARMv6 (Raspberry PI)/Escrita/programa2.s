.global _start

_start:
	MOV R7, #4		@escrever em tela
	MOV R0, #1		@dispositivo de saida: monitor
	LDR R1, =string 	@carregar em R1 o endereço de memoria da string
	MOV R2, #tamanho_string	
	SWI 0

_end:
	MOV R7, #1
	SWI 0


.data
	string: .ascii "Curso de Assembly!! \n"
	tamanho_string = .-string

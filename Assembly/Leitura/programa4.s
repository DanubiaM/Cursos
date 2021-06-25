/*Leitura e Escrita de String*/

.global _start
	
_start:
	MOV R0, #1 		@saida: monitor
	LDR R1, =message1	@carrega mensagem
	LDR R2, =len_message1	@carrega tamanho da mensagem
	MOV R7, #4		@syscal de escrita
	SWI 0

_read:
	MOV R0, #0		@saida: teclado
	LDR R1, =buffer		
	LDR R2, =len_buffer
	MOV R7, #3		@syscall de leitura
	SWI 0

_print_message:
	MOV R0, #1		@saida: monitor
	LDR R1, =message2	
	LDR R2, =len_message2
	MOV R7, #4		@syscall de escrita
	SWI 0

_print_string:
	MOV R0, #1		@saida:monitor
	LDR R1, =buffer
	LDR R2, =len_buffer
	MOV R7, #4		@syscall de escrita
	SWI 0

_exit:
	MOV R7, #1
	SWI 0
.data
	buffer: .ascii "       "
	len_buffer =  .-buffer

	message1: .ascii "Qual o seu nome?"
	len_message1 = .-message1

	message2: .ascii "Bem vindo ao mundo Assembly, "
	len_message2 = .-message2

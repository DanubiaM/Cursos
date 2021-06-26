/*
	print(Digite dois numeros:);
	scanf(n1)
	scanf(n2)
	s = n1+n2
	sub= n1-n2
	div = n1/n2
	multi = n1*n2
	print("n1+n2")
	print(s)
	print("n1-n2")
	print(sub)
	print("n1/n2")
	print(div)
	print("n1*n2")
	print(multi)
*/

/*
.data
get_val_1: .asciz "Numero 1:\n"
get_val_2: .asciz "Numero 2:\n"
pattern: .asciz "%d"
output: .asciz "%d + %d = %d"


addr_get_val_1: .word get_val_1
addr_get_val_2: .word get_val_2
addr_pattern: .word pattern
addr_output: .word output
*/
.global main

main:

	SUB SP, SP, #4


	LDR R0, addr_get_val_1
	BL printf

	LDR R0, addr_pattern 
	MOV R1, SP
	BL scanf
	LDR R1, [SP]
	LDR R0, addr_output
	BL printf
	ADD SP, SP, #4

_exit:
	MOV R8, #0
	SWI 0x11

/*
	LDR R0, addr_get_val_2
	BL printf


	LDR R0, addr_pattern
	LDR R1, addr_num_2
	BL scanf

	LDR R0, addr_num_1
	LDR R0, [R0]
	LDR R1, addr_num_2
	LDR R1, [R1]
	BL sum_vals

	MOV R3, R0

	LDR R0, addr_output
	LDR R1, addr_num_1
	LDR R1, [R1]
	LDR R2, addr_num_2
	LDR R2, [R2]
	BL printf

_fim:
	MOV R7, #1
	SWI 0
*/
addr_get_val_1: .word get_val_1
addr_pattern: .word pattern
addr_output: .word output

.data
get_val_1: .asciz "Digite um numero \n"
pattern: .asciz "%d"
output: .asciz "You  number is %d"

.global printf
.global scanf

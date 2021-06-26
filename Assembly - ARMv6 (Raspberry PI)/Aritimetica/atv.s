/*Objetivo: Receber dois numeros do usuario e apresentar as 4 operações aritimeticas na tela*/
.data
.balign 4
get_val_1: .asciz "Numero 1:\n"

.balign 4
get_val_2: .asciz "Numero 2:\n"

.balign 4
pattern: .asciz "%d"

.balign 4
num_1: .word 0

.balign 4
num_2: .word 0

.balign 4
sum: .word 0

.balign 4
sub: .word 0

.balign 4
mul: .word 0

.balign 4
div: .word 0

.balign 4
output1: .asciz "%d + %d = %d \n"

.balign 4
output2: .asciz "%d - %d = %d \n"

.balign 4
output3: .asciz "%d * %d = %d \n"

.balign 4
output4: .asciz "%d / %d = %d \n"

.balign 4
lr_bu: .word 0

.balign 4
lr_bu_2: .word

.text 
sum_vals:
	LDR R2, addr_lr_bu_2
	STR lr, [R2]

	ADD R0, R0, R1

	LDR lr, addr_lr_bu_2
	LDR lr, [lr]
	BX lr

sub_vals:
	LDR R2, addr_lr_bu_2
	STR lr, [R2]
	SUB R0, R0,R1

	LDR lr, addr_lr_bu_2
	LDR lr, [lr]
	BX lr 

mul_vals:

	LDR R2, addr_lr_bu_2
	STR lr, [R2]
	MUL R0, R0, R1

	LDR lr, addr_lr_bu_2
	LDR lr, [lr]
	BX lr

addr_lr_bu_2: .word lr_bu_2

.global main

main:


	LDR R1, addr_lr_bu
	STR lr, [R1]

	/*Leitura de valores*/
	LDR R0, addr_get_val_1
	BL printf

	LDR R0, addr_pattern 
	LDR R1, addr_num_1
	BL scanf

	LDR R0, addr_get_val_2
	BL printf

	LDR R0, addr_pattern
	LDR R1, addr_num_2
	BL scanf


	/*ADICAO*/
	LDR R0, addr_num_1
	LDR R0, [R0]
	LDR R1, addr_num_2
	LDR R1, [R1]
	BL sum_vals

	MOV R3, R0


	LDR R0, addr_output1
	LDR R1, addr_num_1
	LDR R1, [R1]
	LDR R2, addr_num_2
	LDR R2, [R2]
	BL printf

	/*SUBTRACAO*/
	LDR R0, addr_num_1
	LDR R0, [R0]
	LDR R1, addr_num_2
	LDR R1, [R1]
	BL sub_vals

	MOV R3, R0

	LDR R0, addr_output2
	LDR R1, addr_num_1
	LDR R1, [R1]
	LDR R2, addr_num_2
	LDR R2, [R2]
	BL printf


	/* MULTIPLICACAO*/
	LDR R0, addr_num_1
	LDR R0, [R0]
	LDR R1, addr_num_2
	LDR R1, [R1]
	BL mul_vals

	MOV R3, R0

	LDR R0, addr_output3
	LDR R1, addr_num_1
	LDR R1, [R1]
	LDR R2, addr_num_2
	LDR R2, [R2]
	BL printf

	/*DIVISAO*/
	LDR R1, addr_num_1
	LDR R1, [R1]
	LDR R2, addr_num_2
	LDR R2, [R2]
	MOV R0, #0

 

_division:
	SUBS R1, R1, R2
	ADD R0, R0, #1
	BHI _division


	MOV R3, R0

	LDR R0, addr_output4
	LDR R1, addr_num_1
	LDR R1, [R1]
	LDR R2, addr_num_2
	LDR R2, [R2]
	BL printf
_exit:
	LDR lr, addr_lr_bu
	LDR lr, [lr]
	BX lr

addr_get_val_1: .word get_val_1
addr_get_val_2: .word get_val_2
addr_pattern: .word pattern
addr_num_1: .word num_1
addr_num_2: .word num_2
addr_sum: .word sum
addr_sub: .word sub
addr_mul: .word mul
.saddr_div: .word div
addr_output1: .word output1
addr_output2: .word output2
addr_output3: .word output3
addr_output4: .word output4
addr_lr_bu: .word lr_bu

.global printf
.global scanf

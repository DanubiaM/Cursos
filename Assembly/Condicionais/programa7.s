/*
	R0 = 13
	R1 = 0
i	if RO > R1:
		R0 = RO - 1
	else
		R0 = R0 + 1
	endif   
*/
.global _start
_start:
	MOV R0, #5
	MOV R1, #0

_if:
	CMP R0, R1 	
	BLE _else
	SUB R0, R0, #1
	B _endif

_else:
	ADD R0, R0, #1

_endif:
	MOV R7, #1
	SWI 0

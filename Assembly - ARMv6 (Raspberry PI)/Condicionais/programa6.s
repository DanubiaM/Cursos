/*
	R0 = 13
	if R0 > 0
	R0 = R0 - 1
*/
.global _start

_start:
	MOV R0, #13

_if:
	CMP R0, #0
	BLE _endif
	SUB R0, R0, #1

_endif:
	MOV R7, #1
	SWI 0


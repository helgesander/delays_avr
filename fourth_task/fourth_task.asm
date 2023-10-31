/*
 * fourth_task.asm
 *
 *  Created: 27.10.2023 23:24:33
 *   Author: helge
	�������: ����������� ��������� �������� �� 15 ������. 
	P.S. ��� ��������� ������ ����������� 15 ������. 
	����� ���� ��������� ������ ������� � ����� ��������. 
	�������� ���������� ��������.
 */ 

 .def counter = R16
 .def delay_1 = R18 
 .def delay_2 = R19 

 .CSEG 

 ; �������������� ����

ldi R16, Low(RAMEND)
out SPL, R16

ldi R16, High(RAMEND)
out SPH, R16

 Start: 
	clr counter
	cpi counter, 15
	breq _Sleep
	call Delay 
	inc counter
	rjmp Start

_Sleep:  
	sleep

Delay: 
	ldi delay_1, 0x1E
Delay1: 
	dec delay_1
	brne Delay1
	ret




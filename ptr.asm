;Str_concatenate program
;Program No.1
;Write a procedure named str_concat that concatenates a source string 
;to the end of a target string. Sufficient space must exist in the target
;string to accommodate the new characters. Pass pointers to the source 
;and target strings. Here is a sample call:

.386
INCLUDE Irvine32.inc

Str_concat PROTO,
source:PTR BYTE, ; source string target:PTR BYTE; target string
.data
targetStr BYTE "LAST Week of class and so preparation ",0 
sourceStr BYTE "Before final exam.",0

.code 
main PROC 
call Clrscr
; Sample procedure call
INVOKE Str_concat, ADDR targetStr, ADDR sourceStr
; Display the target string
mov edx,OFFSET targetStr 
call WriteString
call Crlf
exit
main ENDP

Str_concat PROC USES eax ecx esi edi,
target:PTR BYTE; source string
source:PTR BYTE; target string
; Copy a string from source to target.
; Requires: the target string must contain enough
; space to hold a copy of the source string. ;----------------------------------------------------------
INVOKE Str_length,target 
add target,eax
INVOKE Str_length,source 
mov ecx, eax
; get length of target string
; move to end of target string
; get length of source string ; insert length in REP count
; add 1 for null byte
; move the source pointer ; move the target pointer ; direction = up
; copy the string
 inc ecx
mov esi,
mov edi,
cld
repmovsb
ret
Str_concat ENDP
END main

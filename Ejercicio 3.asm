.model small 
.stack 100h
.data
mensaje1 db 'ingrese el primer numero :$'
mensaje2 db 'ingrese el segundo numero :$'
mensaje3 db 'la suma de los dos numero es :$'
.code 
main proc 
mov ax ,@data 
mov ds , ax
;Mostrar mensaje para ingresar el primer numero 
mov ah , 09h
lea dx , mensaje1
int 21h
;Capturar el primer numero
mov ah , 01h
int 21h
sub al , 30h ; Convertir el caracter ingresado a numero
mov bl , al ; Guardar el primer numero enregistro BL
;Mostrar mensaje para ingresar el segundo numero 
mov ah ,09h
lea dx , mensaje2 
int 21h
;Capturar eln segundo numero 
mov ah ,01h
int 21h
sub al ,30h ;Convertir el caracter ingresado a numero
;Sumar los dos numeros add al , bl
;Mostrar la suma 
add al ,30h ; Convertir el numero a caracter
mov ah ,02h
lea dx , mensaje3
int 21h
main endp
end  
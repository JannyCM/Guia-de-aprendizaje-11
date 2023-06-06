.model small 
.stack 100h
.data 
mensaje1 db 'ingrese el primer numero :$'
mensaje2 db 'ingrese el segundo numero :$'
mensaje3 db 'el menor de los dos numero es :$'
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
;Comparar los dos numeros 
cmp al , bl 
jl menor ;Saltar a etiqueta "menor" si al < bl 
;Si no , el primer numero es el menor 
mov al , bl
menor:
;Mostrar el numero menor
add al , 30h ; Convertir el numero a caracter 
mov ah ,02h
lea dx , mensaje3
int 21h
mov dl , al
int 21h 
mov ah , 4ch
int 21h
main endp
end
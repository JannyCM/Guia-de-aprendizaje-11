.model small 
.stack 100h
.data
mensaje db 'ingrese un numero :$'
mensaje2 db 'El factorial del numero es :$'
.code 
main proc 
mov ax ,@data 
mov ds , ax
;Mostrar mensaje para ingresar el numero 
mov ah , 09h
lea dx , mensaje
int 21h
;Capturar el numero
mov ah , 01h
int 21h
sub al , 30h ; Convertir el caracter ingresado a numero
mov cl , al ; Guardar el primer numero enregistro CL
;Calcular el factorial 
mov al , 1 ; Inicializar el acumulador en 1 
mov bl , cl ; Guardar el numero en registro BL
dec cl ; Decrementar el numero en registro CL
factorial:
mul cl ; Multiplicador  el acumulador por el numero decrementado 
dec cl ; Decrementar el numero decrementado 
cmp cl ,0 ; Comparar el numero decrementado con cero
jne factorial ; Si no es cero saltar a la etiqueta "factorial"
;Mostrar el resultado del factorial 
add al , 30h ;Convertir el numero a caracter 
mov ah ,02h 
lea dx , mensaje2 
int 21h 
mov ah ,4ch 
int 21h 
main endp 
end




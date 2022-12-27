.model small
.stack 64
;         -------------     Se almacenan todos los datos guardados -----------------------
.data

    var1 db "Universidad de San Carlos de Guatemala", 10, 13, "$"
    var2 db "Facultad de Ingenieria", 10, 13, "$"
    var3 db "Escuela de Ciencias y Sistemas", 10, 13, "$"
    var4 db "Arquitectura de Compiladores y Ensambladores 1", 10, 13, "$"
    var5 db "Vacaciones Seccion N", 10, 13, "$"
    var6 db "Jose Manuel Solis Ortiz", 10, 13, "$"
    var7 db "201800517", 10, 13, "$"

    menu1 db "////////////////////////////  PRACTICA 2  ////////////////////////////", 10, 13, "$"
    menu2 db "(1) Ingresar ecuacion 'Funcion'", 10, 13, "$"
    menu3 db "(2) Imprimir la funcion almacenada", 10, 13, "$"
    menu4 db "(3) Imprimir la derivada de dicha funcion", 10, 13, "$"
    menu5 db "(4) Imprimir la integral de la funcion", 10, 13, "$"
    menu6 db "(5) Graficar la funcion original, derivada o integral", 10, 13, "$"
    menu7 db "(6) Encontrar los ceros de la funcion por medio del metodo de Newton", 10, 13, "$"
    menu8 db "(7) Encontrar los ceros de la funcion por medio del metodo de Steffensen.", 10, 13, "$"
    menu9 db "(8) Salir de la aplicacion.", 10, 13, "$"
    menu10 db "Ingrese el numero del menu de la seleccion deseada", 10, 13, "$"

    salto db " ", 10, 13, "$"
    men db "Iniciaciando Programa----Direccionando al Menu", 10, 13, "$"
    nombre db ?, 10, 13, "$"


    sin db "---MENSAJE: Funcion no Disponible aun", 10, 13, "$"
    sin0 db "SELECCIONE LA TECLA ESC PARA TERMINAR LA EJECUCION", 10, 13, "$"
    sin1 db "SELECCIONE CUALQUIER TECLA PARA VOLVER AL MENU PRINCIPAL", 10, 13, "$"

    Fun0 db "///// Reglas a seguir para ingresar la funcion //////", 10, 13, "$"
    Fun1 db "Solo numero enteros", 10, 13, "$"
    Fun2 db "Funciones de Grado 5 MAXIMO", 10, 13, "$"
    Fun3 db "Variables reconocidas por el sistema (minusculas): 'x', 'y', 'z'", 10, 13, "$"
    Fun4 db "Se usara la letra 'p' como sustituto del simbolo de potenciacion '^'", 10, 13, "$"
    Fun5 db "Despues de escribir la variable ingrese el simbolo de potenciacion 'p' antes que la potencia", 10, 13, "$"
    Fun6 db "NO PRESIONE ESPACIO, la ecuacion debe ser de corrido", 10, 13, "$"
    Fun7 db "Si se ingresa un simbolo no reconocido Saltara un mensaje de error y debera comenzar desde el principio", 10, 13, "$"
    Fun8 db "Si se ingresa un simbolo reconocido en una posicion incorrecta Saltara un mensaje de error y debera comenzar desde el principio", 10, 13, "$"
    Fun9 db "Cuando termine de ingresar su ecuacion presione 'ENTER'", 10, 13, "$"
    Fun10 db "Para regresar al menu principal presione 'ESC'; ADVERTENCIA: Esta accion eliminara la ecuacion guardada anteriormente", 10, 13, "$"
    
    Fun db "Ingrese la ecuacion `Funcion`:", 10, 13, "$"

    TitIngreso db "/////////////////// Ingreso de Ecuacion ///////////////////////", 10, 13, "$"
    TitImpre db "/////////////////// Impresion de Ecuacion Almacenada ///////////////////////", 10, 13, "$"
    TitDeriva db "/////////////////// Impresion de Derivada Almacenada ///////////////////////", 10, 13, "$"
    TitIntegra db "/////////////////// Impresion de Integral Almacenada ///////////////////////", 10, 13, "$"


    const db "Si un coeficiente es 0 o no existe en su resectivo aparatdo escribir '00' y el signo que se le antepone no importa", 10, 13, "$"

    cons5 db "Escribir el signo del primer coeficiente:", 10, 13, "$"
    cons5_0 db "Si el signo es positivo puede escribir + o ENTER", 10, 13, "$"
    conx5 db "Escribir el coeficiente para x^5 (si no tiene escribir '00'):", 10, 13, "$"
    cons4 db "Escribir el signo del segundo coeficiente:", 10, 13, "$"
    conx4 db "Escribir el coeficiente para x^4 (si no tiene escribir '00'):", 10, 13, "$"
    cons3 db "Escribir el signo del tercer coeficiente:", 10, 13, "$"
    conx3 db "Escribir el coeficiente para x^3 (si no tiene escribir '00'):", 10, 13, "$"
    cons2 db "Escribir el signo del cuarto coeficiente:", 10, 13, "$"
    conx2 db "Escribir el coeficiente para x^2 (si no tiene escribir '00'):", 10, 13, "$"
    cons1 db "Escribir el signo del quinto coeficiente:", 10, 13, "$"
    conx1 db "Escribir el coeficiente para x^1 o dicho de otra forma x (si no tiene escribir '00'):", 10, 13, "$"
    cons0 db "Escribir el signo de la constante:", 10, 13, "$"
    conx0 db "Escribir el coeficiente de la costante (si no tiene escribir '00'):", 10, 13, "$"

    err1 db "---Error: Error dato desconocido", 10, 13, "$"
    err2 db "SELECCIONE CUALQUIER TECLA PARA REINICIAR EL INGRESO DE LA ECUACION", 10, 13, "$"

    mensaje db "Terminacion de ingreso de Datos, para ver la ecuacion seleccione cualquier tecla para volver al menu principal y seleccione la opcion 2", 10, 13, "$"

    volver db "Si desea volver al menu principal seleccione cualquier tecla", 10, 13, "$"

    nu5 db 53, 10, 13, "$"


    signo5 db ?, 10, 13, "$"
    signo4 db ?, 10, 13, "$"
    signo3 db ?, 10, 13, "$"
    signo2 db ?, 10, 13, "$"
    signo1 db ?, 10, 13, "$"
    signocon db ?, 10, 13, "$"


    coefi5 db ?, 10, 13, "$"
    coefi4 db ?, 10, 13, "$"
    coefi3 db ?, 10, 13, "$"
    coefi2 db ?, 10, 13, "$"
    coefi1 db ?, 10, 13, "$"
    coeficon db ?, 10, 13, "$"

    deri5 db ?, 10, 13, "$"
    deri4 db ?, 10, 13, "$"
    deri3 db ?, 10, 13, "$"
    deri2 db ?, 10, 13, "$"
    deri1 db ?, 10, 13, "$"
    dericon db ?, 10, 13, "$"


    integ5 db ?, 10, 13, "$"
    integ4 db ?, 10, 13, "$"
    integ3 db ?, 10, 13, "$"
    integ2 db ?, 10, 13, "$"
    integ1 db ?, 10, 13, "$"
    integcon db ?, 10, 13, "$"
    
    ecuacion db "ADVERTENICA: FUNCION ALMACENADA INEXISTENTE", 10, 13, "$"

    integral db "ADVERTENICA: INTEGRAL ALMACENADA INEXISTENTE", 10, 13, "$"

    r1_5 db ?
    r2_5 db ?
    deriprueba_5 db 0

    r1_4 db ?
    r2_4 db ?
    deriprueba_4 db 0

    r1_3 db ?
    r2_3 db ?
    deriprueba_3 db 0

    r1_2 db ?
    r2_2 db ?
    deriprueba_2 db 0

    r1_1 db ?
    r2_1 db ?
    deriprueba_1 db 0

    r1_con db ?
    r2_con db ?
    deriprueba_con db 0

    derivada db "ADVERTENICA: DERIVADA ALMACENADA INEXISTENTE", 10, 13, "$"



.code


; --------------- Funcion utilizada para atajar la impresion de texto en consola--------------
;Sirve para no tener que escribir las mismas lineas de codigo cada vez que se quiera imprimir un texto
imprimir macro texto
    mov ah, 09
    mov dx, offset texto
    int 21h
endm

;---------------Funcion Main
main proc far

    mov ax, @data
    mov ds, ax
    mov es,ax

    ;limpiar la pantalla
    mov ah, 00h
    mov al, 03h
    int 10h



; Mensaje inicial hasta presionar enter
    ;imprimir datos
    imprimir var1
    imprimir var2
    imprimir var3
    imprimir var4
    imprimir var5
    imprimir var6
    imprimir var7

    ;se guarda el enter
    xor si, si
    
Leer:
    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 13
    jne Concatenar
    je Entrar

Concatenar:
    mov nombre[si], al
    mov nombre[si + 1], "$"
    inc si
    jmp Leer
     

; ---------------------ENTRADA DEL MENU PRINCIAPAL -------------
Entrar:
    
    ;limpiar la pantalla
    mov ah, 00h
    mov al, 03h
    int 10h


    imprimir menu1
    imprimir menu2
    imprimir menu3
    imprimir menu4
    imprimir menu5
    imprimir menu6
    imprimir menu7
    imprimir menu8
    imprimir menu9
    imprimir menu10

    xor si, si


    ; Area de Seleccion donde dependiendo el dato ingresado realiza su accion correspondiente
    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 49
    je IngresarEcuacion  ;Salta al segmento escrito si el dato coincide

    cmp al, 50
    je ImprimirEcuacion

    cmp al, 51
    je ImprimirDerivada

    cmp al, 52
    je ImprimirIntegral

    cmp al, 53
    je SinDisponibilidad

    cmp al, 54
    je SinDisponibilidad

    cmp al, 55
    je SinDisponibilidad

    cmp al, 56
    je Salir

    jmp Entrar  ; Vuelve a iniciar el segmento de menu principal


;-------------------- NO DISPONIBLE ACTUALMENTE ----------------------
;Segmento temporal donde manda un mensaje de default
SinDisponibilidad:
   ;limpiar la pantalla
    mov ah, 00h
    mov al, 03h
    int 10h

    imprimir sin
    imprimir salto
    imprimir sin0
    imprimir sin1 

   ; Area de seleccion
    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 27
    je Salir  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea
    jne Entrar ; Si el dato no coincide el codigo salta al segmento escrito en esta linea



;----------------- INGRESO DE LA ECUACION --------------------
; Segmentos hechos para la escritura de la ecuacion
IngresarEcuacion:
    ;limpiar la pantalla
    mov ah, 00h
    mov al, 03h
    int 10h

    imprimir TitIngreso
    imprimir salto 
    imprimir const
    imprimir salto
    imprimir cons5
    imprimir cons5_0

    xor si, si
    xor di, di

    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 43
    je PositivoInicio  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea
    cmp al, 13
    je PositivoInicio  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea
    cmp al, 45
    je NegativoInicio  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea

    jmp ErrorLectura

ErrorLectura:
    ;limpiar la pantalla
    mov ah, 00h
    mov al, 03h
    int 10h

    imprimir err1
    imprimir salto
    imprimir sin0
    imprimir err2

   ; Area de seleccion
    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 27
    je Salir  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea
    jne IngresarEcuacion ; Si el dato no coincide el codigo salta al segmento escrito en esta linea


PositivoInicio:
    mov ecuacion[si], "+"
    mov ecuacion[si + 1], "$"
    inc si
    
    mov signo5[di], "+"
    mov signo5[di + 1], "$"

    jmp Coeficiente5

NegativoInicio:
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si
    
    mov signo5[di], al
    mov signo5[di + 1], "$"

    jmp Coeficiente5

Coeficiente5:
    imprimir salto
    imprimir conx5

    xor di, di

    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je Coeficiente5_2
    cmp al, 49
    je Coeficiente5_2
    cmp al, 50
    je Coeficiente5_2
    cmp al, 51
    je Coeficiente5_2
    cmp al, 52
    je Coeficiente5_2
    cmp al, 53
    je Coeficiente5_2
    cmp al, 54
    je Coeficiente5_2
    cmp al, 55
    je Coeficiente5_2
    cmp al, 56
    je Coeficiente5_2
    cmp al, 57
    je Coeficiente5_2

    jmp ErrorLectura

Coeficiente5_2:
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si

    mov coefi5[di], al
    mov coefi5[di + 1], "$"
    inc di

    jmp Coeficiente5_2_1

Coeficiente5_2_1:
    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je Coeficiente5_2_2
    cmp al, 49
    je Coeficiente5_2_2
    cmp al, 50
    je Coeficiente5_2_2
    cmp al, 51
    je Coeficiente5_2_2
    cmp al, 52
    je Coeficiente5_2_2
    cmp al, 53
    je Coeficiente5_2_2
    cmp al, 54
    je Coeficiente5_2_2
    cmp al, 55
    je Coeficiente5_2_2
    cmp al, 56
    je Coeficiente5_2_2
    cmp al, 57
    je Coeficiente5_2_2

    jmp ErrorLectura

Coeficiente5_2_2:
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si

    mov coefi5[di], al
    mov coefi5[di + 1], "$"
    inc di

    jmp InSigno4

InSigno4:
    mov ecuacion[si], "x"
    mov ecuacion[si + 1], "$"
    inc si
    mov ecuacion[si], "^"
    mov ecuacion[si + 1], "$"
    inc si
    mov ecuacion[si], "5"
    mov ecuacion[si + 1], "$"
    inc si

    imprimir salto
    imprimir cons4

    xor di, di

    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 43
    je InSigno4_1  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea
    cmp al, 45
    je InSigno4_1  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea

    jmp ErrorLectura

InSigno4_1:
    
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si
    
    mov signo4[di], al
    mov signo4[di + 1], "$"

    jmp Coeficiente4

Coeficiente4:
    imprimir salto
    imprimir conx4

    xor di, di

    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je Coeficiente4_2
    cmp al, 49
    je Coeficiente4_2
    cmp al, 50
    je Coeficiente4_2
    cmp al, 51
    je Coeficiente4_2
    cmp al, 52
    je Coeficiente4_2
    cmp al, 53
    je Coeficiente4_2
    cmp al, 54
    je Coeficiente4_2
    cmp al, 55
    je Coeficiente4_2
    cmp al, 56
    je Coeficiente4_2
    cmp al, 57
    je Coeficiente4_2

    jmp ErrorLectura

Coeficiente4_2:
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si

    mov coefi4[di], al
    mov coefi4[di + 1], "$"
    inc di

    jmp Coeficiente4_2_1

Coeficiente4_2_1:
    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je Coeficiente4_2_2
    cmp al, 49
    je Coeficiente4_2_2
    cmp al, 50
    je Coeficiente4_2_2
    cmp al, 51
    je Coeficiente4_2_2
    cmp al, 52
    je Coeficiente4_2_2
    cmp al, 53
    je Coeficiente4_2_2
    cmp al, 54
    je Coeficiente4_2_2
    cmp al, 55
    je Coeficiente4_2_2
    cmp al, 56
    je Coeficiente4_2_2
    cmp al, 57
    je Coeficiente4_2_2

    jmp ErrorLectura

Coeficiente4_2_2:
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si

    mov coefi4[di], al
    mov coefi4[di + 1], "$"
    inc di

    jmp InSigno3

InSigno3:
    mov ecuacion[si], "x"
    mov ecuacion[si + 1], "$"
    inc si
    mov ecuacion[si], "^"
    mov ecuacion[si + 1], "$"
    inc si
    mov ecuacion[si], "4"
    mov ecuacion[si + 1], "$"
    inc si

    imprimir salto
    imprimir cons3

    xor di, di

    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 43
    je InSigno3_1  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea
    cmp al, 45
    je InSigno3_1  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea

    jmp ErrorLectura

InSigno3_1:
    
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si
    
    mov signo3[di], al
    mov signo3[di + 1], "$"

    jmp Coeficiente3
    ;jmp Entrar

Coeficiente3:
    imprimir salto
    imprimir conx3

    xor di, di

    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je Coeficiente3_2
    cmp al, 49
    je Coeficiente3_2
    cmp al, 50
    je Coeficiente3_2
    cmp al, 51
    je Coeficiente3_2
    cmp al, 52
    je Coeficiente3_2
    cmp al, 53
    je Coeficiente3_2
    cmp al, 54
    je Coeficiente3_2
    cmp al, 55
    je Coeficiente3_2
    cmp al, 56
    je Coeficiente3_2
    cmp al, 57
    je Coeficiente3_2

    jmp ErrorLectura

Coeficiente3_2:
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si

    mov coefi3[di], al
    mov coefi3[di + 1], "$"
    inc di

    jmp Coeficiente3_2_1

Coeficiente3_2_1:
    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je Coeficiente3_2_2
    cmp al, 49
    je Coeficiente3_2_2
    cmp al, 50
    je Coeficiente3_2_2
    cmp al, 51
    je Coeficiente3_2_2
    cmp al, 52
    je Coeficiente3_2_2
    cmp al, 53
    je Coeficiente3_2_2
    cmp al, 54
    je Coeficiente3_2_2
    cmp al, 55
    je Coeficiente3_2_2
    cmp al, 56
    je Coeficiente3_2_2
    cmp al, 57
    je Coeficiente3_2_2

    jmp ErrorLectura

Coeficiente3_2_2:
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si

    mov coefi3[di], al
    mov coefi3[di + 1], "$"
    inc di

    jmp InSigno2

InSigno2:
    mov ecuacion[si], "x"
    mov ecuacion[si + 1], "$"
    inc si
    mov ecuacion[si], "^"
    mov ecuacion[si + 1], "$"
    inc si
    mov ecuacion[si], "3"
    mov ecuacion[si + 1], "$"
    inc si

    imprimir salto
    imprimir cons2

    xor di, di

    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 43
    je InSigno2_1  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea
    cmp al, 45
    je InSigno2_1  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea

    jmp ErrorLectura

InSigno2_1:
    
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si
    
    mov signo2[di], al
    mov signo2[di + 1], "$"

    jmp Coeficiente2
    ;jmp Entrar


Coeficiente2:
    imprimir salto
    imprimir conx2

    xor di, di

    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je Coeficiente2_2
    cmp al, 49
    je Coeficiente2_2
    cmp al, 50
    je Coeficiente2_2
    cmp al, 51
    je Coeficiente2_2
    cmp al, 52
    je Coeficiente2_2
    cmp al, 53
    je Coeficiente2_2
    cmp al, 54
    je Coeficiente2_2
    cmp al, 55
    je Coeficiente2_2
    cmp al, 56
    je Coeficiente2_2
    cmp al, 57
    je Coeficiente2_2

    jmp ErrorLectura

Coeficiente2_2:
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si

    mov coefi2[di], al
    mov coefi2[di + 1], "$"
    inc di

    jmp Coeficiente2_2_1

Coeficiente2_2_1:
    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je Coeficiente2_2_2
    cmp al, 49
    je Coeficiente2_2_2
    cmp al, 50
    je Coeficiente2_2_2
    cmp al, 51
    je Coeficiente2_2_2
    cmp al, 52
    je Coeficiente2_2_2
    cmp al, 53
    je Coeficiente2_2_2
    cmp al, 54
    je Coeficiente2_2_2
    cmp al, 55
    je Coeficiente2_2_2
    cmp al, 56
    je Coeficiente2_2_2
    cmp al, 57
    je Coeficiente2_2_2

    jmp ErrorLectura

Coeficiente2_2_2:
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si

    mov coefi2[di], al
    mov coefi2[di + 1], "$"
    inc di

    jmp InSigno1

InSigno1:
    mov ecuacion[si], "x"
    mov ecuacion[si + 1], "$"
    inc si
    mov ecuacion[si], "^"
    mov ecuacion[si + 1], "$"
    inc si
    mov ecuacion[si], "2"
    mov ecuacion[si + 1], "$"
    inc si

    imprimir salto
    imprimir cons1

    xor di, di

    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 43
    je InSigno1_1  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea
    cmp al, 45
    je InSigno1_1  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea

    jmp ErrorLectura

InSigno1_1:
    
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si
    
    mov signo1[di], al
    mov signo1[di + 1], "$"

    jmp Coeficiente1
    ;jmp Entrar

Coeficiente1:
    imprimir salto
    imprimir conx1

    xor di, di

    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je Coeficiente1_2
    cmp al, 49
    je Coeficiente1_2
    cmp al, 50
    je Coeficiente1_2
    cmp al, 51
    je Coeficiente1_2
    cmp al, 52
    je Coeficiente1_2
    cmp al, 53
    je Coeficiente1_2
    cmp al, 54
    je Coeficiente1_2
    cmp al, 55
    je Coeficiente1_2
    cmp al, 56
    je Coeficiente1_2
    cmp al, 57
    je Coeficiente1_2

    jmp ErrorLectura

Coeficiente1_2:
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si

    mov coefi1[di], al
    mov coefi1[di + 1], "$"
    inc di

    jmp Coeficiente1_2_1

Coeficiente1_2_1:
    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je Coeficiente1_2_2
    cmp al, 49
    je Coeficiente1_2_2
    cmp al, 50
    je Coeficiente1_2_2
    cmp al, 51
    je Coeficiente1_2_2
    cmp al, 52
    je Coeficiente1_2_2
    cmp al, 53
    je Coeficiente1_2_2
    cmp al, 54
    je Coeficiente1_2_2
    cmp al, 55
    je Coeficiente1_2_2
    cmp al, 56
    je Coeficiente1_2_2
    cmp al, 57
    je Coeficiente1_2_2

    jmp ErrorLectura

Coeficiente1_2_2:
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si

    mov coefi1[di], al
    mov coefi1[di + 1], "$"
    inc di

    jmp InSigno0

InSigno0:
    mov ecuacion[si], "x"
    mov ecuacion[si + 1], "$"
    inc si

    imprimir salto
    imprimir cons0

    xor di, di

    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 43
    je InSigno0_1  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea
    cmp al, 45
    je InSigno0_1  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea

    jmp ErrorLectura

InSigno0_1:
    
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si
    
    mov signocon[di], al
    mov signocon[di + 1], "$"

    jmp Coeficiente0
    ;jmp Entrar

Coeficiente0:
    imprimir salto
    imprimir conx0

    xor di, di

    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je Coeficiente0_2
    cmp al, 49
    je Coeficiente0_2
    cmp al, 50
    je Coeficiente0_2
    cmp al, 51
    je Coeficiente0_2
    cmp al, 52
    je Coeficiente0_2
    cmp al, 53
    je Coeficiente0_2
    cmp al, 54
    je Coeficiente0_2
    cmp al, 55
    je Coeficiente0_2
    cmp al, 56
    je Coeficiente0_2
    cmp al, 57
    je Coeficiente0_2

    jmp ErrorLectura

Coeficiente0_2:
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si

    mov coeficon[di], al
    mov coeficon[di + 1], "$"
    inc di

    jmp Coeficiente0_2_1

Coeficiente0_2_1:
    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je Coeficiente0_2_2
    cmp al, 49
    je Coeficiente0_2_2
    cmp al, 50
    je Coeficiente0_2_2
    cmp al, 51
    je Coeficiente0_2_2
    cmp al, 52
    je Coeficiente0_2_2
    cmp al, 53
    je Coeficiente0_2_2
    cmp al, 54
    je Coeficiente0_2_2
    cmp al, 55
    je Coeficiente0_2_2
    cmp al, 56
    je Coeficiente0_2_2
    cmp al, 57
    je Coeficiente0_2_2

    jmp ErrorLectura

Coeficiente0_2_2:
    mov ecuacion[si], al
    mov ecuacion[si + 1], "$"
    inc si

    mov coeficon[di], al
    mov coeficon[di + 1], "$"
    inc di

    imprimir salto
    imprimir salto
    imprimir mensaje

    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 13
    je VariablesDeriInteg
    jne VariablesDeriInteg

;--------------------- TRANSFORMACION ECUACION A SU DERIVADA E INTEGRAL --------------------
VariablesDeriInteg:
    xor si, si

    mov al, coefi5[si]
    sub al, 30h
    mov deri5[si], al
    mov deri5[si + 1], "$"
    mov integ5[si], al
    mov integ5[si + 1], "$"
    inc si

    mov al, coefi5[si]
    sub al, 30h
    mov deri5[si], al
    mov deri5[si + 1], "$"
    mov integ5[si], al
    mov integ5[si + 1], "$"
    inc si

    xor si, si

    mov al, coefi4[si]
    sub al, 30h
    mov deri4[si], al
    mov deri4[si + 1], "$"
    mov integ4[si], al
    mov integ4[si + 1], "$"
    inc si

    mov al, coefi4[si]
    sub al, 30h
    mov deri4[si], al
    mov deri4[si + 1], "$"
    mov integ4[si], al
    mov integ4[si + 1], "$"
    inc si

    xor si, si

    mov al, coefi3[si]
    sub al, 30h
    mov deri3[si], al
    mov deri3[si + 1], "$"
    mov integ3[si], al
    mov integ3[si + 1], "$"
    inc si

    mov al, coefi3[si]
    sub al, 30h
    mov deri3[si], al
    mov deri3[si + 1], "$"
    mov integ3[si], al
    mov integ3[si + 1], "$"
    inc si

    xor si, si

    mov al, coefi2[si]
    sub al, 30h
    mov deri2[si], al
    mov deri2[si + 1], "$"
    mov integ2[si], al
    mov integ2[si + 1], "$"
    inc si

    mov al, coefi2[si]
    sub al, 30h
    mov deri2[si], al
    mov deri2[si + 1], "$"
    mov integ2[si], al
    mov integ2[si + 1], "$"
    inc si

    xor si, si

    mov al, coefi1[si]
    sub al, 30h
    mov deri1[si], al
    mov deri1[si + 1], "$"
    mov integ1[si], al
    mov integ1[si + 1], "$"
    inc si

    mov al, coefi1[si]
    sub al, 30h
    mov deri1[si], al
    mov deri1[si + 1], "$"
    mov integ1[si], al
    mov integ1[si + 1], "$"
    inc si

    xor si, si

    mov al, coeficon[si]
    sub al, 30h
    mov dericon[si], al
    mov dericon[si + 1], "$"
    mov integcon[si], al
    mov integcon[si + 1], "$"
    inc si

    mov al, coeficon[si]
    sub al, 30h
    mov dericon[si], al
    mov dericon[si + 1], "$"
    mov integcon[si], al
    mov integcon[si + 1], "$"
    inc si

    jmp DeriInteg5


DeriInteg5:
        xor si, si

        ;---------------- REALIZAMOS LA OPERACION PARA LAS DERIVADAS  ------------
        mov al, 53           
        sub al, 30h
        mov bl, deri5[si+1]            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov deriprueba_5,AH               
        mov r2_5,AL               

        mov al, 53 
        sub al, 30h            
        mov bl, deri5[si]            
        mul bl                  
        mov r1_5,al                         
        mov bl,deriprueba_5               
        add r1_5,bl               
        mov ah,00h              
        mov al,r1_5               
        AAM                             ;ASCII Adjustment
        mov r1_5,al               
        mov deriprueba_5,ah             

       jmp DeriInteg4

DeriInteg4:
        xor si, si

        ;---------------- REALIZAMOS LA OPERACION PARA LAS DERIVADAS  ------------
        mov al, 52           
        sub al, 30h
        mov bl, deri4[si+1]            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov deriprueba_4,AH               
        mov r2_4,AL               

        mov al, 52 
        sub al, 30h            
        mov bl, deri4[si]            
        mul bl                  
        mov r1_4,al                         
        mov bl,deriprueba_4               
        add r1_4,bl               
        mov ah,00h              
        mov al,r1_4               
        AAM                             ;ASCII Adjustment
        mov r1_4,al               
        mov deriprueba_4,ah             

       jmp DeriInteg3

DeriInteg3:
        xor si, si

        ;---------------- REALIZAMOS LA OPERACION PARA LAS DERIVADAS  ------------
        mov al, 51           
        sub al, 30h
        mov bl, deri3[si+1]            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov deriprueba_3,AH               
        mov r2_3,AL               

        mov al, 51 
        sub al, 30h            
        mov bl, deri3[si]            
        mul bl                  
        mov r1_3,al                         
        mov bl,deriprueba_3               
        add r1_3,bl               
        mov ah,00h              
        mov al,r1_3               
        AAM                             ;ASCII Adjustment
        mov r1_3,al               
        mov deriprueba_3,ah             

       jmp DeriInteg2

DeriInteg2:
        xor si, si

        ;---------------- REALIZAMOS LA OPERACION PARA LAS DERIVADAS  ------------
        mov al, 50           
        sub al, 30h
        mov bl, deri2[si+1]            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov deriprueba_2,AH               
        mov r2_2,AL               

        mov al, 50 
        sub al, 30h            
        mov bl, deri2[si]            
        mul bl                  
        mov r1_2,al                         
        mov bl,deriprueba_2               
        add r1_2,bl               
        mov ah,00h              
        mov al,r1_2               
        AAM                             ;ASCII Adjustment
        mov r1_2,al               
        mov deriprueba_2,ah             

       jmp DeriInteg1

DeriInteg1:
        xor si, si

        ;---------------- REALIZAMOS LA OPERACION PARA LAS DERIVADAS  ------------
        mov al, 49           
        sub al, 30h
        mov bl, deri1[si+1]            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov deriprueba_1,AH               
        mov r2_1,AL               

        mov al, 49 
        sub al, 30h            
        mov bl, deri1[si]            
        mul bl                  
        mov r1_1,al                         
        mov bl,deriprueba_1               
        add r1_1,bl               
        mov ah,00h              
        mov al,r1_1              
        AAM                             ;ASCII Adjustment
        mov r1_1,al               
        mov deriprueba_1,ah             

       jmp DeriInteg0

DeriInteg0:
        xor si, si

        ;---------------- REALIZAMOS LA OPERACION PARA LAS DERIVADAS  ------------
        mov al, 48           
        sub al, 30h
        mov bl, dericon[si+1]            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov deriprueba_con,AH               
        mov r2_con,AL               

        mov al, 48 
        sub al, 30h            
        mov bl, dericon[si]            
        mul bl                  
        mov r1_con,al                         
        mov bl,deriprueba_con              
        add r1_con,bl               
        mov ah,00h              
        mov al,r1_con               
        AAM                             ;ASCII Adjustment
        mov r1_con,al               
        mov deriprueba_con,ah             

       jmp ConsDeri

;--------------------- CONSTRUCION DE LA ECUACION DE LA DERIVADA E INTEGRAL -------------------
ConsDeri:
    xor si, si
    mov al, signo5
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, deriprueba_5
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, r1_5
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, r2_5
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov derivada[si], "x"
    mov derivada[si + 1], "$"
    inc si
    mov derivada[si], "^"
    mov derivada[si + 1], "$"
    inc si
    mov derivada[si], "4"
    mov derivada[si + 1], "$"
    inc si
    mov al, signo4
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, deriprueba_4
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, r1_4
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, r2_4
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov derivada[si], "x"
    mov derivada[si + 1], "$"
    inc si
    mov derivada[si], "^"
    mov derivada[si + 1], "$"
    inc si
    mov derivada[si], "3"
    mov derivada[si + 1], "$"
    inc si
    mov al, signo3
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, deriprueba_3
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, r1_3
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, r2_3
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov derivada[si], "x"
    mov derivada[si + 1], "$"
    inc si
    mov derivada[si], "^"
    mov derivada[si + 1], "$"
    inc si
    mov derivada[si], "2"
    mov derivada[si + 1], "$"
    inc si
    mov al, signo2
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, deriprueba_2
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, r1_2
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, r2_2
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov derivada[si], "x"
    mov derivada[si + 1], "$"
    inc si
    mov al, signo1
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, deriprueba_1
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, r1_1
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, r2_1
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, signocon
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, deriprueba_con
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, r1_con
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si
    mov al, r2_con
    add al, 30h
    mov derivada[si], al
    mov derivada[si + 1], "$"
    inc si

    jmp ConsInteg
    
ConsInteg:
    xor si, si
    xor di, di
    mov al, signo5
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "("
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, integ5[di]
    add al, 30h
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, integ5[di+1]
    add al, 30h
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "/"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "6"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, ")"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "x"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "^"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "6"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si

    mov al, signo4
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "("
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, integ4[di]
    add al, 30h
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, integ4[di+1]
    add al, 30h
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "/"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "5"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, ")"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "x"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "^"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "5"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si

    mov al, signo3
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "("
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, integ3[di]
    add al, 30h
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, integ3[di+1]
    add al, 30h
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "/"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "4"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, ")"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "x"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "^"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "4"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si

    mov al, signo2
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "("
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, integ2[di]
    add al, 30h
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, integ2[di+1]
    add al, 30h
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "/"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "3"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, ")"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "x"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "^"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "3"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si

    mov al, signo1
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "("
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, integ1[di]
    add al, 30h
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, integ1[di+1]
    add al, 30h
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "/"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "2"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, ")"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "x"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "^"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "2"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si

    mov al, signocon
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "("
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, integcon[di]
    add al, 30h
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, integcon[di+1]
    add al, 30h
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "/"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "1"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, ")"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "x"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si

    mov al, "+"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si
    mov al, "c"
    mov integral[si], al
    mov integral[si + 1], "$"
    inc si

    jmp Entrar


;----------------------IMPRESION DE LAS ECUACIONES ALMACENADAS ------------------
ImprimirEcuacion:
    ;limpiar la pantalla
    mov ah, 00h
    mov al, 03h
    int 10h

    imprimir TitImpre
    imprimir salto
    imprimir ecuacion
    imprimir salto
    imprimir salto
    imprimir volver

    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 49
    je Entrar
    jne Entrar

ImprimirDerivada:
    ;limpiar la pantalla
    mov ah, 00h
    mov al, 03h
    int 10h

    imprimir TitDeriva
    imprimir salto
    imprimir derivada
    imprimir salto
    imprimir salto
    imprimir volver

    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 49
    je Entrar
    jne Entrar

ImprimirIntegral:
    ;limpiar la pantalla
    mov ah, 00h
    mov al, 03h
    int 10h

    imprimir TitIntegra
    imprimir salto
    imprimir integral
    imprimir salto
    imprimir salto
    imprimir volver

    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 49
    je Entrar
    jne Entrar



;------------------------  SALIDA -----------------------------------
Salir:
    mov ax, 4c00h
    int 21h 
main endp         

    
end main
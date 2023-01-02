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

    menu1 db "////////////////////////////  PROYECTO 2  ////////////////////////////", 10, 13, "$"
    menu2 db "(1) Ingresar ecuacion 'Funcion'", 10, 13, "$"
    menu3 db "(2) Imprimir la funcion almacenada", 10, 13, "$"
    menu4 db "(3) Imprimir la derivada de dicha funcion", 10, 13, "$"
    menu5 db "(4) Imprimir la integral de la funcion", 10, 13, "$"
    menu6 db "(5) Graficar la funcion original, derivada o integral", 10, 13, "$"
    menu7 db "(6) Encontrar los ceros de la funcion por medio del metodo de Newton", 10, 13, "$"
    menu8 db "(7) Encontrar los ceros de la funcion por medio del metodo de Steffensen.", 10, 13, "$"
    menu9 db "(8) Salir de la aplicacion.", 10, 13, "$"
    menu10 db "Ingrese el numero del menu de la seleccion deseada", 10, 13, "$"

    graf1 db "////////////////////////////  Graficar Funcion  ////////////////////////////", 10, 13, "$"
    graf2 db "(1) Graficar la Funcion Original", 10, 13, "$"
    graf3 db "(2) Graficar la Derivada", 10, 13, "$"
    graf4 db "(3) Graficar la Integral", 10, 13, "$"
    graf5 db "(4) Regresar", 10, 13, "$"
    graf6 db "Ingrese el numero del menu de la seleccion deseada", 10, 13, "$"

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

    metTitNewt  db "/////////////////// ingreso Metodo de Newton ///////////////////////", 10, 13, "$"
    metTitSteff  db "/////////////////// ingreso Metodo de Steffenson ///////////////////////", 10, 13, "$"

    met5 db "Escribir el Numero de Iteracciones maximo:", 10, 13, "$"
    met4 db "Escribir el Coeficiente de tolerancia:", 10, 13, "$"
    met3 db "Escribir el Grado de tolerancia:", 10, 13, "$"
    met2 db "Escribir el Limite superior del metodo:", 10, 13, "$"
    met1 db "Escribir el Limite inferior del metodo:", 10, 13, "$"

    newtsignosup db "+", 10, 13, "$"
    newtsignoinf db "+", 10, 13, "$"

    newtiter db ?, 10, 13, "$"
    newtcoefi db ?, 10, 13, "$"
    newtgrado db ?, 10, 13, "$"
    newtsup db ?, 10, 13, "$"
    newtinf db ?, 10, 13, "$"

    steffsignosup db "+", 10, 13, "$"
    steffsignoinf db "+", 10, 13, "$"

    steffiter db ?, 10, 13, "$"
    steffcoefi db ?, 10, 13, "$"
    steffgrado db ?, 10, 13, "$"
    steffsup db ?, 10, 13, "$"
    steffinf db ?, 10, 13, "$"

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

    coeficon2 db ?, 10, 13, "$"

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

    x dw (50)
    y dw (50); dw es de 16 bits
    w dw (0)
    h dw (0)
    color db (14); color amarillo
    ;db es de 8 bits

    wd dw (0)
    hd dw (0)

    wi dw (0)
    hi dw (0)

    w2 dw (0)
    h2 dw (0)

    w1 dw (0)
    h1 dw (0)

    w0 dw (0)
    h0 dw (0)

    
   sderi5 db 0, 10, 13, "$"


    dos_5_1 db 51
    dos_5_2 db 50
    dos_4_1 db 49
    dos_4_2 db 54
    dos_3_1 db 48
    dos_3_2 db 56
    dos_2_1 db 48
    dos_2_2 db 52
    dos_1_1 db 48
    dos_1_2 db 50

    sderi4 db 0, 10, 13, "$"

    uno_t_2 db 48
    uno_t_1 db 49

    sderi3 db 0, 10, 13, "$"


    cero db 48

    co5_1_1 db ?
    co5_1_2 db ? , 10, 13, "$"
    ecu5_1_1 db 0

    co5_2_1 db ?
    co5_2_2 db ?
    ecu5_2_1 db 0

    sderi2 db 0, 10, 13, "$"


    co4_1_1 db ?
    co4_1_2 db ?, 10, 13, "$"
    ecu4_1_1 db 0

    co4_2_1 db ?
    co4_2_2 db ?
    ecu4_2_1 db 0

    sderi1 db 0, 10, 13, "$"

    co3_1_1 db ?
    co3_1_2 db ?, 10, 13, "$"
    ecu3_1_1 db 0

    co3_2_1 db ?
    co3_2_2 db ?
    ecu3_2_1 db 0

    co2_1_1 db ?
    co2_1_2 db ?, 10, 13, "$"
    ecu2_1_1 db 0

    co2_2_1 db ?
    co2_2_2 db ?
    ecu2_2_1 db 0

    co1_1_1 db ?
    co1_1_2 db ?, 10, 13, "$"
    ecu1_1_1 db 0

    co1_2_1 db ?
    co1_2_2 db ?
    ecu1_2_1 db 0

   input db 10,13,'Ingresa un numero $'
   result db 10,13,'El resultado es: $'
   n1 dw (-1)
   n2 dw 48
   n3 dw 48


    ssderi5 dw (0)
    ssderi4 dw (0)
    ssderi3 dw (0)
    ssderi2 dw (0)
    ssderi1 dw (0)
    ssderi0 dw (0)

    sscofi5 dw (0)
    sscofi4 dw (0)
    sscofi3 dw (0)
    sscofi2 dw (0)
    sscofi1 dw (0)


    ssderitotal dw (0)

    sscofitotal dw (0)

    ssconstatotal dw (0)


    estado db ?, 10, 13, "$"

    Ecuapara0 dw (0)
    Ecuapara1 dw (0)
    Ecuapara2 dw (0)

    Deripara0 dw (0)
    Deripara1 dw (0)
    Deripara2 dw (0)
    
    Intepara0 dw (0)
    Intepara1 dw (0)
    Intepara2 dw (0)

    

    Newttitulo  db "/////////////////// Iteraciones De Newton ///////////////////////", 10, 13, "$"

    iter5 db "No. de Iteracion: ", 10, 13, "$"
    iter4 db "Valor Inicial Xn = ", 10, 13, "$"
    iter3 db "Error: ", 10, 13, "$"
    iter2 db "Valor Xn+1 = ", 10, 13, "$"

    errornewt dw ?, 10, 13, "$"




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
    je GraficarFuncion

    cmp al, 54
    je FunNewton

    cmp al, 55
    je FunSteffensen

    cmp al, 56
    je Salir

    jmp Entrar  ; Vuelve a iniciar el segmento de menu principal


FunNewton:
    ;limpiar la pantalla
    mov ah, 00h
    mov al, 03h
    int 10h

    imprimir metTitNewt
    imprimir salto 
    imprimir met5
    imprimir salto

    xor di, di

    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je NewtTole
    cmp al, 49
    je NewtTole
    cmp al, 50
    je NewtTole
    cmp al, 51
    je NewtTole
    cmp al, 52
    je NewtTole
    cmp al, 53
    je NewtTole
    cmp al, 54
    je NewtTole
    cmp al, 55
    je NewtTole
    cmp al, 56
    je NewtTole
    cmp al, 57
    je NewtTole

    jmp ErrorLectura2


NewtTole:
    mov newtiter[si], al
    mov newtiter[si + 1], "$"

    imprimir salto
    imprimir met4
    imprimir salto 

    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je NewtGrade
    cmp al, 49
    je NewtGrade
    cmp al, 50
    je NewtGrade
    cmp al, 51
    je NewtGrade
    cmp al, 52
    je NewtGrade
    cmp al, 53
    je NewtGrade
    cmp al, 54
    je NewtGrade
    cmp al, 55
    je NewtGrade
    cmp al, 56
    je NewtGrade
    cmp al, 57
    je NewtGrade

    jmp ErrorLectura2

NewtGrade:
    mov newtcoefi[si], al
    mov newtcoefi[si + 1], "$"

    imprimir salto
    imprimir met3
    imprimir salto 

    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je NewtLimSup
    cmp al, 49
    je NewtLimSup
    cmp al, 50
    je NewtLimSup
    cmp al, 51
    je NewtLimSup
    cmp al, 52
    je NewtLimSup
    cmp al, 53
    je NewtLimSup
    cmp al, 54
    je NewtLimSup
    cmp al, 55
    je NewtLimSup
    cmp al, 56
    je NewtLimSup
    cmp al, 57
    je NewtLimSup

    jmp ErrorLectura2

NewtLimSup:
    mov newtgrado[si], al
    mov newtgrado[si + 1], "$"

    imprimir salto
    imprimir met2
    imprimir salto 

    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 45
    je NegaNewtSup  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea
    jne NumNewtSup

NegaNewtSup:
    mov newtsignosup[si], al
    mov newtsignosup[si + 1], "$"


    mov ax, 00
    mov ah, 01h
    int 21h
    jmp NumNewtSup

NumNewtSup:

    cmp al, 48
    je NewtLimInf
    cmp al, 49
    je NewtLimInf
    cmp al, 50
    je NewtLimInf
    cmp al, 51
    je NewtLimInf
    cmp al, 52
    je NewtLimInf
    cmp al, 53
    je NewtLimInf
    cmp al, 54
    je NewtLimInf
    cmp al, 55
    je NewtLimInf
    cmp al, 56
    je NewtLimInf
    cmp al, 57
    je NewtLimInf

    jmp ErrorLectura2

NewtLimInf:
    mov newtsup[si], al
    mov newtsup[si + 1], "$"

    imprimir salto
    imprimir met1
    imprimir salto 

    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 45
    je NegaNewtInf  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea
    jne NumNewtInf
    
NegaNewtInf:
    mov newtsignoinf[si], al
    mov newtsignoinf[si + 1], "$"


    mov ax, 00
    mov ah, 01h
    int 21h
    jmp NumNewtInf

NumNewtInf:
    cmp al, 48
    je FinNewt
    cmp al, 49
    je FinNewt
    cmp al, 50
    je FinNewt
    cmp al, 51
    je FinNewt
    cmp al, 52
    je FinNewt
    cmp al, 53
    je FinNewt
    cmp al, 54
    je FinNewt
    cmp al, 55
    je FinNewt
    cmp al, 56
    je FinNewt
    cmp al, 57
    je FinNewt

    jmp ErrorLectura2

FinNewt:
    mov newtinf[si], al
    mov newtinf[si + 1], "$"

    mov al, 48

    jmp ImpNewt


FunSteffensen:
    mov ah, 00h
    mov al, 03h
    int 10h

    imprimir metTitSteff
    imprimir salto 
    imprimir met5
    imprimir salto

    xor di, di

    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je SteffTole
    cmp al, 49
    je SteffTole
    cmp al, 50
    je SteffTole
    cmp al, 51
    je SteffTole
    cmp al, 52
    je SteffTole
    cmp al, 53
    je SteffTole
    cmp al, 54
    je SteffTole
    cmp al, 55
    je SteffTole
    cmp al, 56
    je SteffTole
    cmp al, 57
    je SteffTole

    jmp ErrorLectura2

SteffTole:
    mov steffiter[si], al
    mov steffiter[si + 1], "$"

    imprimir salto
    imprimir met4
    imprimir salto 

    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je SteffGrade
    cmp al, 49
    je SteffGrade
    cmp al, 50
    je SteffGrade
    cmp al, 51
    je SteffGrade
    cmp al, 52
    je SteffGrade
    cmp al, 53
    je SteffGrade
    cmp al, 54
    je SteffGrade
    cmp al, 55
    je SteffGrade
    cmp al, 56
    je SteffGrade
    cmp al, 57
    je SteffGrade

    jmp ErrorLectura2

SteffGrade:
    mov steffcoefi[si], al
    mov steffcoefi[si + 1], "$"

    imprimir salto
    imprimir met3
    imprimir salto 

    mov ax, 00
    mov ah, 01h
    int 21h

    cmp al, 48
    je SteffLimSup
    cmp al, 49
    je SteffLimSup
    cmp al, 50
    je SteffLimSup
    cmp al, 51
    je SteffLimSup
    cmp al, 52
    je SteffLimSup
    cmp al, 53
    je SteffLimSup
    cmp al, 54
    je SteffLimSup
    cmp al, 55
    je SteffLimSup
    cmp al, 56
    je SteffLimSup
    cmp al, 57
    je SteffLimSup

    jmp ErrorLectura2

SteffLimSup:
    mov steffgrado[si], al
    mov steffgrado[si + 1], "$"

    imprimir salto
    imprimir met2
    imprimir salto 

    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 45
    je NegaSteffSup  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea
    jne NumSteffSup

NegaSteffSup:
    mov steffsignosup[si], al
    mov steffsignosup[si + 1], "$"


    mov ax, 00
    mov ah, 01h
    int 21h
    jmp NumSteffSup

NumSteffSup:

    cmp al, 48
    je SteffLimInf
    cmp al, 49
    je SteffLimInf
    cmp al, 50
    je SteffLimInf
    cmp al, 51
    je SteffLimInf
    cmp al, 52
    je SteffLimInf
    cmp al, 53
    je SteffLimInf
    cmp al, 54
    je SteffLimInf
    cmp al, 55
    je SteffLimInf
    cmp al, 56
    je SteffLimInf
    cmp al, 57
    je SteffLimInf

    jmp ErrorLectura2

SteffLimInf:
    mov steffsup[si], al
    mov steffsup[si + 1], "$"

    imprimir salto
    imprimir met1
    imprimir salto 

    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 45
    je NegaSteffInf  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea
    jne NumSteffInf

NegaSteffInf:
    mov steffsignoinf[si], al
    mov steffsignoinf[si + 1], "$"


    mov ax, 00
    mov ah, 01h
    int 21h
    jmp NumSteffInf

NumSteffInf:
    cmp al, 48
    je FinSteff
    cmp al, 49
    je FinSteff
    cmp al, 50
    je FinSteff
    cmp al, 51
    je FinSteff
    cmp al, 52
    je FinSteff
    cmp al, 53
    je FinSteff
    cmp al, 54
    je FinSteff
    cmp al, 55
    je FinSteff
    cmp al, 56
    je FinSteff
    cmp al, 57
    je FinSteff

    jmp ErrorLectura2

FinSteff:
    mov steffinf[si], al
    mov steffinf[si + 1], "$"

    jmp Entrar

ImpNewt:
    xor si, si

    imprimir salto
    imprimir iter5
    imprimir n2
    imprimir salto
    imprimir iter4

    cmp n2, 48
    je FuncionNewton0
    cmp n2, 49
    je FuncionNewton1
    cmp n2, 50
    je FuncionNewton2

    ;jmp FuncionNewton

FuncionNewton0:
   
    imprimir n2
    imprimir salto
    imprimir iter3

    ;------ Xn+1
    mov dx, Ecuapara0
    mov ax, Deripara0
    ;div ax

    imprimir iter3
    
    mov dx, n2
    mov n3, dx

    sub n3, ax


    ;-------- Error

    mov ax, n3
    mov errornewt, ax

    sub errornewt, dx

    mov dx, errornewt
    mov ax, n3
    ;div ax

    mov errornewt, ax

    imprimir errornewt
    imprimir salto
    imprimir iter2
    imprimir n3
    imprimir salto
    imprimir salto

    inc n2

    jmp ImpNewt


FuncionNewton1:
   
    imprimir n2
    imprimir salto
    imprimir iter3

    ;------ Xn+1

    mov dx, Ecuapara1
    mov ax, Deripara1
    ;div ax
    
    mov dx, n2
    mov n3, dx

    sub n3, ax

    ;-------- Error

    mov ax, n3
    mov errornewt, ax

    sub errornewt, dx 

    mov dx, errornewt
    mov ax, n3
    ;div ax

    mov errornewt, ax

    imprimir errornewt
    imprimir salto
    imprimir iter2
    imprimir n3
    imprimir salto
    imprimir salto

    inc n2

    jmp ImpNewt



FuncionNewton2:
   
    imprimir n2
    imprimir salto
    imprimir iter3

    ;------ Xn+1
    mov dx, Ecuapara2
    mov ax, Deripara2
    ;div ax
    
    mov dx, n2
    mov n3, dx

    sub n3, ax

    ;-------- Error

    mov ax, n3
    mov errornewt, ax

    sub errornewt, dx 

    mov dx, errornewt
    mov ax, n3
    ;div ax

    mov errornewt, ax

    imprimir errornewt
    imprimir salto
    imprimir iter2
    imprimir n3
    imprimir salto
    imprimir salto

    jmp Terminar

Terminar:
    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 27
    je Salir  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea
    jne Entrar ; Si el dato no coincide el codigo salta al segmento escrito en esta linea
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

ErrorLectura2:
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
    jne Entrar ; Si el dato no coincide el codigo salta al segmento escrito en esta linea


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


;--------------------------- GRAFICAR LAS FUNCIONES ----------------------------
GraficarFuncion:
    ;limpiar la pantalla
    mov ah, 00h
    mov al, 03h
    int 10h

    imprimir graf1
    imprimir graf2
    imprimir graf3
    imprimir graf4
    imprimir graf5
    imprimir graf6

    xor si, si

    ; Area de Seleccion donde dependiendo el dato ingresado realiza su accion correspondiente
    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 49
    je GraficaEcuacion  ;Salta al segmento escrito si el dato coincide

    cmp al, 50
    je GraficaDerivada

    cmp al, 51
    je GraficaIntegral

    cmp al, 52
    je Entrar

    jmp GraficarFuncion

GraficaEcuacion:
    ;limpiar la pantalla
    mov ah, 00h
    mov al, 03h
    int 10h

    ; cambio a modo grafico
    mov ah, 00; CAMBIA A MODO GRAFICO
    mov al, 12h; Tipo de resolucion grafica
    int 10h ; int BIOS

    mov estado[si], 35
    mov estado[si + 1], "$"

    ; PINTAR UN PIXEL

    ; pintar una linea horizontal
    mov cx, 100; columna del pixel x
pix:  
    mov ah, 0ch ; PINTA UN PIXEL
    mov al, color; es el color
    mov bh, 0h; es la pagina 0
    mov dx, 280; renglon y
    int 10h
    inc cx; incrementa de 1 en 1 columna
    inc w
    cmp w, 300
    jne pix ;salta sino es igual

    ; pintar una linea vertical
    mov dx, 50; columna del pixel x
pix2:  
    mov ah, 0ch ; PINTA UN PIXEL
    mov al, 4; es el color
    mov bh, 0h; es la pagina 0
    mov cx, 200; renglon y
    int 10h
    inc dx; incrementa de 1 en 1 columna
    inc h
    cmp h, 300
    jne pix2 ;salta sino es igual
    
    jmp ContinuarEcuacion5_1

GraficaDerivada:
   ;limpiar la pantalla
    mov ah, 00h
    mov al, 03h
    int 10h

    ; cambio a modo grafico
    mov ah, 00; CAMBIA A MODO GRAFICO
    mov al, 12h; Tipo de resolucion grafica
    int 10h ; int BIOS

    mov estado, 36
    mov estado[si + 1], "$"

    ; PINTAR UN PIXEL

    ; pintar una linea horizontal
    mov cx, 100; columna del pixel x
nix:  
    mov ah, 0ch ; PINTA UN PIXEL
    mov al, 7; es el color
    mov bh, 0h; es la pagina 0
    mov dx, 280; renglon y
    int 10h
    inc cx; incrementa de 1 en 1 columna
    inc wd
    cmp wd, 300
    jne nix ;salta sino es igual

    ; pintar una linea vertical
    mov dx, 50; columna del pixel x
nix2:  
    mov ah, 0ch ; PINTA UN PIXEL
    mov al, 12; es el color
    mov bh, 0h; es la pagina 0
    mov cx, 200; renglon y
    int 10h
    inc dx; incrementa de 1 en 1 columna
    inc hd
    cmp hd, 300
    jne nix2 ;salta sino es igual
    
    jmp ContinuarDerivada4_1

GraficaIntegral:
    ;limpiar la pantalla
    mov ah, 00h
    mov al, 03h
    int 10h

    ; cambio a modo grafico
    mov ah, 00; CAMBIA A MODO GRAFICO
    mov al, 12h; Tipo de resolucion grafica
    int 10h ; int BIOS

    mov estado, 37
    mov estado[si + 1], "$"

    ; PINTAR UN PIXEL

    ; pintar una linea horizontal
    mov cx, 100; columna del pixel x
vix:  
    mov ah, 0ch ; PINTA UN PIXEL
    mov al, 9; es el color
    mov bh, 0h; es la pagina 0
    mov dx, 280; renglon y
    int 10h
    inc cx; incrementa de 1 en 1 columna
    inc wi
    cmp wi, 300
    jne vix ;salta sino es igual

    ; pintar una linea vertical
    mov dx, 50; columna del pixel x
vix2:  
    mov ah, 0ch ; PINTA UN PIXEL
    mov al, 2; es el color
    mov bh, 0h; es la pagina 0
    mov cx, 200; renglon y
    int 10h
    inc dx; incrementa de 1 en 1 columna
    inc hi
    cmp hi, 300
    jne vix2 ;salta sino es igual
    
    jmp FinalizarEcuacion


ContinuarEcuacion5_1:
        ;---------------- REALIZAMOS LA MULTIPLICACION ENTRE LA VARIABLE POTENCIADA Y LOS COEFICIENTES  ------------
        xor si, si
        mov al, dos_5_2           
        sub al, 30h
        mov bl, deri5[si+1]            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu5_1_1,AH               
        mov co5_1_2,AL               

        mov al, dos_5_2 
        sub al, 30h            
        mov bl, deri5[si]            
        mul bl                  
        mov co5_1_1,al                         
        mov bl,ecu5_1_1               
        add co5_1_1,bl               
        mov ah,00h              
        mov al,co5_1_1               
        AAM                             ;ASCII Adjustment
        mov co5_1_1,al               
        mov ecu5_1_1,ah             

       jmp ContinuarEcuacion5_2

ContinuarEcuacion5_2:
        xor si, si
        mov al, dos_5_1          
        sub al, 30h
        mov bl, deri5[si+1]            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu5_2_1,AH               
        mov co5_2_2,AL               

        mov al, dos_5_1
        sub al, 30h            
        mov bl, deri5[si]            
        mul bl                  
        mov co5_2_1,al                         
        mov bl,ecu5_2_1               
        add co5_2_1,bl               
        mov ah,00h              
        mov al,co5_2_1               
        AAM                             ;ASCII Adjustment
        mov co5_2_1,al               
        mov ecu5_2_1,ah             

       jmp ContinuarEcuacion4_1

ContinuarEcuacion4_1:
        ;---------------- REALIZAMOS LA MULTIPLICACION ENTRE LA VARIABLE POTENCIADA Y LOS COEFICIENTES  ------------
        xor si, si
        mov al, dos_4_2           
        sub al, 30h
        mov bl, deri4[si+1]            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu4_1_1,AH               
        mov co4_1_2,AL               

        mov al, dos_4_2 
        sub al, 30h            
        mov bl, deri4[si]            
        mul bl                  
        mov co4_1_1,al                         
        mov bl,ecu4_1_1               
        add co4_1_1,bl               
        mov ah,00h              
        mov al,co4_1_1               
        AAM                             ;ASCII Adjustment
        mov co4_1_1,al               
        mov ecu4_1_1,ah             

       jmp ContinuarEcuacion4_2

ContinuarEcuacion4_2:
        xor si, si
        mov al, dos_4_1          
        sub al, 30h
        mov bl, deri4[si+1]            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu4_2_1,AH               
        mov co4_2_2,AL               

        mov al, dos_4_1
        sub al, 30h            
        mov bl, deri4[si]            
        mul bl                  
        mov co4_2_1,al                         
        mov bl,ecu4_2_1               
        add co4_2_1,bl               
        mov ah,00h              
        mov al,co4_2_1               
        AAM                             ;ASCII Adjustment
        mov co4_2_1,al               
        mov ecu4_2_1,ah             

       jmp ContinuarEcuacion3_1

ContinuarEcuacion3_1:
        ;---------------- REALIZAMOS LA MULTIPLICACION ENTRE LA VARIABLE POTENCIADA Y LOS COEFICIENTES  ------------
        xor si, si
        mov al, dos_3_2           
        sub al, 30h
        mov bl, deri3[si+1]            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu3_1_1,AH               
        mov co3_1_2,AL               

        mov al, dos_3_2 
        sub al, 30h            
        mov bl, deri3[si]            
        mul bl                  
        mov co3_1_1,al                         
        mov bl,ecu3_1_1               
        add co3_1_1,bl               
        mov ah,00h              
        mov al,co3_1_1               
        AAM                             ;ASCII Adjustment
        mov co3_1_1,al               
        mov ecu3_1_1,ah             

       jmp ContinuarEcuacion3_2

ContinuarEcuacion3_2:
        xor si, si
        mov al, dos_3_1          
        sub al, 30h
        mov bl, deri3[si+1]            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu3_2_1,AH               
        mov co3_2_2,AL               

        mov al, dos_3_1
        sub al, 30h            
        mov bl, deri3[si]            
        mul bl                  
        mov co3_2_1,al                         
        mov bl,ecu3_2_1               
        add co3_2_1,bl               
        mov ah,00h              
        mov al,co3_2_1               
        AAM                             ;ASCII Adjustment
        mov co3_2_1,al               
        mov ecu3_2_1,ah             

       jmp ContinuarEcuacion2_1

ContinuarEcuacion2_1:
        ;---------------- REALIZAMOS LA MULTIPLICACION ENTRE LA VARIABLE POTENCIADA Y LOS COEFICIENTES  ------------
        xor si, si
        mov al, dos_2_2           
        sub al, 30h
        mov bl, deri2[si+1]            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu2_1_1,AH               
        mov co2_1_2,AL               

        mov al, dos_2_2 
        sub al, 30h            
        mov bl, deri2[si]            
        mul bl                  
        mov co2_1_1,al                         
        mov bl,ecu2_1_1               
        add co2_1_1,bl               
        mov ah,00h              
        mov al,co2_1_1               
        AAM                             ;ASCII Adjustment
        mov co2_1_1,al               
        mov ecu2_1_1,ah             

       jmp ContinuarEcuacion2_2

ContinuarEcuacion2_2:
        xor si, si
        mov al, dos_2_1          
        sub al, 30h
        mov bl, deri2[si+1]            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu2_2_1,AH               
        mov co2_2_2,AL               

        mov al, dos_2_1
        sub al, 30h            
        mov bl, deri2[si]            
        mul bl                  
        mov co2_2_1,al                         
        mov bl,ecu2_2_1               
        add co2_2_1,bl               
        mov ah,00h              
        mov al,co2_2_1               
        AAM                             ;ASCII Adjustment
        mov co2_2_1,al               
        mov ecu2_2_1,ah             

       jmp ContinuarEcuacion1_1

ContinuarEcuacion1_1:
        ;---------------- REALIZAMOS LA MULTIPLICACION ENTRE LA VARIABLE POTENCIADA Y LOS COEFICIENTES  ------------
        xor si, si
        mov al, dos_1_2           
        sub al, 30h
        mov bl, deri1[si+1]            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu1_1_1,AH               
        mov co1_1_2,AL               

        mov al, dos_1_2 
        sub al, 30h            
        mov bl, deri1[si]            
        mul bl                  
        mov co1_1_1,al                         
        mov bl,ecu1_1_1               
        add co1_1_1,bl               
        mov ah,00h              
        mov al,co1_1_1               
        AAM                             ;ASCII Adjustment
        mov co1_1_1,al               
        mov ecu1_1_1,ah             

       jmp ContinuarEcuacion1_2

ContinuarEcuacion1_2:
        xor si, si
        mov al, dos_1_1          
        sub al, 30h
        mov bl, deri1[si+1]            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu1_2_1,AH               
        mov co1_2_2,AL               

        mov al, dos_1_1
        sub al, 30h            
        mov bl, deri1[si]            
        mul bl                  
        mov co1_2_1,al                         
        mov bl,ecu1_2_1               
        add co1_2_1,bl               
        mov ah,00h              
        mov al,co1_2_1               
        AAM                             ;ASCII Adjustment
        mov co1_2_1,al               
        mov ecu1_2_1,ah             

       jmp ContinuarEcuacionCons

ContinuarEcuacionCons:
    xor si, si
    mov al, coeficon[si]
    mov coeficon2[si], al
    mov coeficon2[si + 1], "$"
    inc si
    mov al, coeficon[si]
    mov coeficon2[si], al
    mov coeficon2[si + 1], "$"
    inc si

    jmp FF5

ContinuarDerivada4_1:
        ;---------------- REALIZAMOS LA MULTIPLICACION ENTRE LA VARIABLE POTENCIADA Y LOS COEFICIENTES  ------------
        xor si, si
        mov al, dos_4_2           
        sub al, 30h
        mov bl, r2_5            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu4_1_1,AH               
        mov co4_1_2,AL               

        mov al, dos_4_2 
        sub al, 30h            
        mov bl, r1_5           
        mul bl                  
        mov co4_1_1,al                         
        mov bl,ecu4_1_1               
        add co4_1_1,bl               
        mov ah,00h              
        mov al,co4_1_1               
        AAM                             ;ASCII Adjustment
        mov co4_1_1,al               
        mov ecu4_1_1,ah             

       jmp ContinuarDerivada4_2

ContinuarDerivada4_2:
        xor si, si
        mov al, dos_4_1          
        sub al, 30h
        mov bl, r2_5            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu4_2_1,AH               
        mov co4_2_2,AL               

        mov al, dos_4_1
        sub al, 30h            
        mov bl, r1_5           
        mul bl                  
        mov co4_2_1,al                         
        mov bl,ecu4_2_1               
        add co4_2_1,bl               
        mov ah,00h              
        mov al,co4_2_1               
        AAM                             ;ASCII Adjustment
        mov co4_2_1,al               
        mov ecu4_2_1,ah             

       jmp ContinuarDerivada3_1

ContinuarDerivada3_1:
        ;---------------- REALIZAMOS LA MULTIPLICACION ENTRE LA VARIABLE POTENCIADA Y LOS COEFICIENTES  ------------
        xor si, si
        mov al, dos_3_2           
        sub al, 30h
        mov bl, r2_4            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu3_1_1,AH               
        mov co3_1_2,AL               

        mov al, dos_3_2 
        sub al, 30h            
        mov bl, r1_4            
        mul bl                  
        mov co3_1_1,al                         
        mov bl,ecu3_1_1               
        add co3_1_1,bl               
        mov ah,00h              
        mov al,co3_1_1               
        AAM                             ;ASCII Adjustment
        mov co3_1_1,al               
        mov ecu3_1_1,ah             

       jmp ContinuarDerivada3_2

ContinuarDerivada3_2:
        xor si, si
        mov al, dos_3_1          
        sub al, 30h
        mov bl, r2_4            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu3_2_1,AH               
        mov co3_2_2,AL               

        mov al, dos_3_1
        sub al, 30h            
        mov bl, r1_4           
        mul bl                  
        mov co3_2_1,al                         
        mov bl,ecu3_2_1               
        add co3_2_1,bl               
        mov ah,00h              
        mov al,co3_2_1               
        AAM                             ;ASCII Adjustment
        mov co3_2_1,al               
        mov ecu3_2_1,ah             

       jmp ContinuarDerivada2_1

ContinuarDerivada2_1:
        ;---------------- REALIZAMOS LA MULTIPLICACION ENTRE LA VARIABLE POTENCIADA Y LOS COEFICIENTES  ------------
        xor si, si
        mov al, dos_2_2           
        sub al, 30h
        mov bl, r2_3           
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu2_1_1,AH               
        mov co2_1_2,AL               

        mov al, dos_2_2 
        sub al, 30h            
        mov bl, r1_3           
        mul bl                  
        mov co2_1_1,al                         
        mov bl,ecu2_1_1               
        add co2_1_1,bl               
        mov ah,00h              
        mov al,co2_1_1               
        AAM                             ;ASCII Adjustment
        mov co2_1_1,al               
        mov ecu2_1_1,ah             

       jmp ContinuarDerivada2_2

ContinuarDerivada2_2:
        xor si, si
        mov al, dos_2_1          
        sub al, 30h
        mov bl, r2_3            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu2_2_1,AH               
        mov co2_2_2,AL               

        mov al, dos_2_1
        sub al, 30h            
        mov bl, r1_3           
        mul bl                  
        mov co2_2_1,al                         
        mov bl,ecu2_2_1               
        add co2_2_1,bl               
        mov ah,00h              
        mov al,co2_2_1               
        AAM                             ;ASCII Adjustment
        mov co2_2_1,al               
        mov ecu2_2_1,ah             

       jmp ContinuarDerivada1_1

ContinuarDerivada1_1:
        ;---------------- REALIZAMOS LA MULTIPLICACION ENTRE LA VARIABLE POTENCIADA Y LOS COEFICIENTES  ------------
        xor si, si
        mov al, dos_1_2           
        sub al, 30h
        mov bl, r2_2            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu1_1_1,AH               
        mov co1_1_2,AL               

        mov al, dos_1_2 
        sub al, 30h            
        mov bl, r1_2           
        mul bl                  
        mov co1_1_1,al                         
        mov bl,ecu1_1_1               
        add co1_1_1,bl               
        mov ah,00h              
        mov al,co1_1_1               
        AAM                             ;ASCII Adjustment
        mov co1_1_1,al               
        mov ecu1_1_1,ah             

       jmp ContinuarDerivada1_2

ContinuarDerivada1_2:
        xor si, si
        mov al, dos_1_1          
        sub al, 30h
        mov bl, r2_2            
        mul bl                  
        mov Ah,0h               
        AAM                             ;ASCII Adjusment
        mov ecu1_2_1,AH               
        mov co1_2_2,AL               

        mov al, dos_1_1
        sub al, 30h            
        mov bl, r1_2           
        mul bl                  
        mov co1_2_1,al                         
        mov bl,ecu1_2_1               
        add co1_2_1,bl               
        mov ah,00h              
        mov al,co1_2_1               
        AAM                             ;ASCII Adjustment
        mov co1_2_1,al               
        mov ecu1_2_1,ah             

       jmp ContinuarDerivadaCons

ContinuarDerivadaCons:
    xor si, si
    mov al, r1_1
    mov coeficon2[si], al
    mov coeficon2[si + 1], "$"
    inc si
    mov al, r2_1
    mov coeficon2[si], al
    mov coeficon2[si + 1], "$"
    inc si

    jmp FF5


FF5:
            
    mov bl,ecu5_1_1 

    mov cl,co5_1_1
            
            ; ingresa segundo numero
    add bl,co5_2_1
            
    add cl,co5_2_2
            
           ; mov ah,09h
           ; lea dx,result 
           ; int 21h
            
            
    mov ax,cx
            
    aam
            
    mov cx,ax
            
    add bl,ch
    mov ax,bx
            
    aam
    mov bx,ax

    add bh, ecu5_2_1

    xor si, si

    mov al, bh
    add al, 30h
    mov sderi5[si], al
    mov sderi5[si + 1], "$"
    inc si

    mov al, bl
    add al, 30h
    mov sderi5[si], al
    mov sderi5[si + 1], "$"
    inc si

    mov al, cl
    add al, 30h
    mov sderi5[si], al
    mov sderi5[si + 1], "$"
    inc si
            

    mov al, co5_1_2
    add al, 30h
    mov sderi5[si], al
    mov sderi5[si + 1], "$"
    inc si
          
                     
    jmp FF4

FF4:
            
            mov bl,ecu4_1_1 

            mov cl,co4_1_1
            
            ; ingresa segundo numero
            add bl,co4_2_1
            
            add cl,co4_2_2
            
           ; mov ah,09h
           ; lea dx,result 
           ; int 21h
            
            
            mov ax,cx
            
            aam
            
            mov cx,ax
            
            add bl,ch
            mov ax,bx
            
            aam
            mov bx,ax

            add bh, ecu4_2_1

            xor si, si

            mov al, bh
            add al, 30h
            mov sderi4[si], al
            mov sderi4[si + 1], "$"
            inc si

            mov al, bl
            add al, 30h
            mov sderi4[si], al
            mov sderi4[si + 1], "$"
            inc si

            mov al, cl
            add al, 30h
            mov sderi4[si], al
            mov sderi4[si + 1], "$"
            inc si

            mov al, co4_1_2
            add al, 30h
            mov sderi4[si], al
            mov sderi4[si + 1], "$"
            inc si
                     
        jmp FF3

FF3:
            
            mov bl,ecu3_1_1 

            mov cl,co3_1_1
            
            ; ingresa segundo numero
            add bl,co3_2_1
            
            add cl,co3_2_2
            
           ; mov ah,09h
           ; lea dx,result 
           ; int 21h
            
            
            mov ax,cx
            
            aam
            
            mov cx,ax
            
            add bl,ch
            mov ax,bx
            
            aam
            mov bx,ax

            add bh, ecu3_2_1

            xor si, si

            mov al, bh
            add al, 30h
            mov sderi3[si], al
            mov sderi3[si + 1], "$"
            inc si

            mov al, bl
            add al, 30h
            mov sderi3[si], al
            mov sderi3[si + 1], "$"
            inc si

            mov al, cl
            add al, 30h
            mov sderi3[si], al
            mov sderi3[si + 1], "$"
            inc si

            mov al, co3_1_2
            add al, 30h
            mov sderi3[si], al
            mov sderi3[si + 1], "$"
            inc si
                     
        jmp FF2

FF2:
            
            mov bl,ecu2_1_1 

            mov cl,co2_1_1
            
            ; ingresa segundo numero
            add bl,co2_2_1
            
            add cl,co2_2_2
            
           ; mov ah,09h
           ; lea dx,result 
           ; int 21h
            
            
            mov ax,cx
            
            aam
            
            mov cx,ax
            
            add bl,ch
            mov ax,bx
            
            aam
            mov bx,ax

            add bh, ecu2_2_1

            xor si, si

            mov al, bh
            add al, 30h
            mov sderi2[si], al
            mov sderi2[si + 1], "$"
            inc si

            mov al, bl
            add al, 30h
            mov sderi2[si], al
            mov sderi2[si + 1], "$"
            inc si

            mov al, cl
            add al, 30h
            mov sderi2[si], al
            mov sderi2[si + 1], "$"
            inc si

            mov al, co2_1_2
            add al, 30h
            mov sderi2[si], al
            mov sderi2[si + 1], "$"
            inc si
                     
        jmp FF1

FF1:
            
            mov bl,ecu1_1_1 

            mov cl,co1_1_1
            
            ; ingresa segundo numero
            add bl,co1_2_1
            
            add cl,co1_2_2
            
           ; mov ah,09h
           ; lea dx,result 
           ; int 21h
            
            
            mov ax,cx
            
            aam
            
            mov cx,ax
            
            add bl,ch
            mov ax,bx
            
            aam
            mov bx,ax

            add bh, ecu1_2_1

            xor si, si

            mov al, bh
            add al, 30h
            mov sderi1[si], al
            mov sderi1[si + 1], "$"
            inc si

            mov al, bl
            add al, 30h
            mov sderi1[si], al
            mov sderi1[si + 1], "$"
            inc si

            mov al, cl
            add al, 30h
            mov sderi1[si], al
            mov sderi1[si + 1], "$"
            inc si

            mov al, co1_1_2
            add al, 30h
            mov sderi1[si], al
            mov sderi1[si + 1], "$"
            inc si
                     
        jmp DW5_M

DW5_M:
    xor si, si
    cmp sderi5[si], 48
    je DW5_M0 ;salta sino es igual
    cmp sderi5[si], 49
    je DW5_M1 ;salta sino es igual
    cmp sderi5[si], 50
    je DW5_M2 ;salta sino es igual
    cmp sderi5[si], 51
    je DW5_M3 ;salta sino es igual
    cmp sderi5[si], 52
    je DW5_M4 ;salta sino es igual
    cmp sderi5[si], 53
    je DW5_M5 ;salta sino es igual
    cmp sderi5[si], 54
    je DW5_M6 ;salta sino es igual
    cmp sderi5[si], 55
    je DW5_M7 ;salta sino es igual
    cmp sderi5[si], 56
    je DW5_M8 ;salta sino es igual
    cmp sderi5[si], 57
    je DW5_M9 ;salta sino es igual
      
DW5_M0:
    mov ax, 0*1000
    mov ssderi5, ax  

    inc si

    jmp DW5_C

DW5_M1:
    mov ax, 1*1000
    mov ssderi5, ax  

    inc si

    jmp DW5_C

DW5_M2:
    mov ax, 2*1000
    mov ssderi5, ax  

    inc si

    jmp DW5_C

DW5_M3:
    mov ax, 3*1000
    mov ssderi5, ax  

    inc si

    jmp DW5_C

DW5_M4:
    mov ax, 4*1000
    mov ssderi5, ax  

    inc si

    jmp DW5_C

DW5_M5:
    mov ax, 5*1000
    mov ssderi5, ax  

    inc si

    jmp DW5_C

DW5_M6:
    mov ax, 6*1000
    mov ssderi5, ax  

    inc si

    jmp DW5_C

DW5_M7:
    mov ax, 7*1000
    mov ssderi5, ax  

    inc si

    jmp DW5_C

DW5_M8:
    mov ax, 8*1000
    mov ssderi5, ax  

    inc si

    jmp DW5_C

DW5_M9:
    mov ax, 9*1000
    mov ssderi5, ax  

    inc si

    jmp DW5_C

DW5_C:
    cmp sderi5[si], 48
    je DW5_C0 ;salta sino es igual
    cmp sderi5[si], 49
    je DW5_C1 ;salta sino es igual
    cmp sderi5[si], 50
    je DW5_C2 ;salta sino es igual
    cmp sderi5[si], 51
    je DW5_C3 ;salta sino es igual
    cmp sderi5[si], 52
    je DW5_C4 ;salta sino es igual
    cmp sderi5[si], 53
    je DW5_C5 ;salta sino es igual
    cmp sderi5[si], 54
    je DW5_C6 ;salta sino es igual
    cmp sderi5[si], 55
    je DW5_C7 ;salta sino es igual
    cmp sderi5[si], 56
    je DW5_C8 ;salta sino es igual
    cmp sderi5[si], 57
    je DW5_C9 ;salta sino es igual


DW5_C0:
    mov ax, 0*100
    add ssderi5, ax  

    inc si

    jmp DW5_D

DW5_C1:
    mov ax, 1*100
    add ssderi5, ax  

    inc si

    jmp DW5_D

DW5_C2:
    mov ax, 2*100
    add ssderi5, ax  

    inc si

    jmp DW5_D

DW5_C3:
    mov ax, 3*100
    add ssderi5, ax  

    inc si

    jmp DW5_D

DW5_C4:
    mov ax, 4*100
    add ssderi5, ax  

    inc si

    jmp DW5_D

DW5_C5:
    mov ax, 5*100
    add ssderi5, ax  

    inc si

    jmp DW5_D

DW5_C6:
    mov ax, 6*100
    add ssderi5, ax  

    inc si

    jmp DW5_D

DW5_C7:
    mov ax, 7*100
    add ssderi5, ax  

    inc si

    jmp DW5_D

DW5_C8:
    mov ax, 8*100
    add ssderi5, ax  

    inc si

    jmp DW5_D

DW5_C9:
    mov ax, 9*100
    add ssderi5, ax  

    inc si

    jmp DW5_D

DW5_D:
    cmp sderi5[si], 48
    je DW5_D0 ;salta sino es igual
    cmp sderi5[si], 49
    je DW5_D1 ;salta sino es igual
    cmp sderi5[si], 50
    je DW5_D2 ;salta sino es igual
    cmp sderi5[si], 51
    je DW5_D3 ;salta sino es igual
    cmp sderi5[si], 52
    je DW5_D4 ;salta sino es igual
    cmp sderi5[si], 53
    je DW5_D5 ;salta sino es igual
    cmp sderi5[si], 54
    je DW5_D6 ;salta sino es igual
    cmp sderi5[si], 55
    je DW5_D7 ;salta sino es igual
    cmp sderi5[si], 56
    je DW5_D8 ;salta sino es igual
    cmp sderi5[si], 57
    je DW5_D9 ;salta sino es igual

DW5_D0:
    mov ax, 0*10
    add ssderi5, ax  

    inc si

    jmp DW5_U

DW5_D1:
    mov ax, 1*10
    add ssderi5, ax  

    inc si

    jmp DW5_U

DW5_D2:
    mov ax, 2*10
    add ssderi5, ax  

    inc si

    jmp DW5_U

DW5_D3:
    mov ax, 3*10
    add ssderi5, ax  

    inc si

    jmp DW5_U

DW5_D4:
    mov ax, 4*10
    add ssderi5, ax  

    inc si

    jmp DW5_U

DW5_D5:
    mov ax, 5*10
    add ssderi5, ax  

    inc si

    jmp DW5_U

DW5_D6:
    mov ax, 6*10
    add ssderi5, ax  

    inc si

    jmp DW5_U

DW5_D7:
    mov ax, 7*10
    add ssderi5, ax  

    inc si

    jmp DW5_U

DW5_D8:
    mov ax, 8*10
    add ssderi5, ax  

    inc si

    jmp DW5_U

DW5_D9:
    mov ax, 9*10
    add ssderi5, ax  

    inc si

    jmp DW5_U

DW5_U:
    cmp sderi5[si], 48
    je DW5_U0 ;salta sino es igual
    cmp sderi5[si], 49
    je DW5_U1 ;salta sino es igual
    cmp sderi5[si], 50
    je DW5_U2 ;salta sino es igual
    cmp sderi5[si], 51
    je DW5_U3 ;salta sino es igual
    cmp sderi5[si], 52
    je DW5_U4 ;salta sino es igual
    cmp sderi5[si], 53
    je DW5_U5 ;salta sino es igual
    cmp sderi5[si], 54
    je DW5_U6 ;salta sino es igual
    cmp sderi5[si], 55
    je DW5_U7 ;salta sino es igual
    cmp sderi5[si], 56
    je DW5_U8 ;salta sino es igual
    cmp sderi5[si], 57
    je DW5_U9 ;salta sino es igual

DW5_U0:
    mov ax, 0*1
    add ssderi5, ax  

    inc si

    jmp DW4_M

DW5_U1:
    mov ax, 1*1
    add ssderi5, ax  

    inc si

    jmp DW4_M

DW5_U2:
    mov ax, 2*1
    add ssderi5, ax  

    inc si

    jmp DW4_M

DW5_U3:
    mov ax, 3*1
    add ssderi5, ax  

    inc si

    jmp DW4_M

DW5_U4:
    mov ax, 4*1
    add ssderi5, ax  

    inc si

    jmp DW4_M

DW5_U5:
    mov ax, 5*1
    add ssderi5, ax  

    inc si

    jmp DW4_M

DW5_U6:
    mov ax, 6*1
    add ssderi5, ax  

    inc si

    jmp DW4_M

DW5_U7:
    mov ax, 7*1
    add ssderi5, ax  

    inc si

    jmp DW4_M

DW5_U8:
    mov ax, 8*1
    add ssderi5, ax  

    inc si

    jmp DW4_M

DW5_U9:
    mov ax, 9*1
    add ssderi5, ax  

    inc si

    jmp DW4_M

DW4_M:
    xor si, si
    cmp sderi4[si], 48
    je DW4_M0 ;salta sino es igual
    cmp sderi4[si], 49
    je DW4_M1 ;salta sino es igual
    cmp sderi4[si], 50
    je DW4_M2 ;salta sino es igual
    cmp sderi4[si], 51
    je DW4_M3 ;salta sino es igual
    cmp sderi4[si], 52
    je DW4_M4 ;salta sino es igual
    cmp sderi4[si], 53
    je DW4_M5 ;salta sino es igual
    cmp sderi4[si], 54
    je DW4_M6 ;salta sino es igual
    cmp sderi4[si], 55
    je DW4_M7 ;salta sino es igual
    cmp sderi4[si], 56
    je DW4_M8 ;salta sino es igual
    cmp sderi4[si], 57
    je DW4_M9 ;salta sino es igual

DW4_M0:
    mov ax, 0*1000
    mov ssderi4, ax  

    inc si

    jmp DW4_C

DW4_M1:
    mov ax, 1*1000
    mov ssderi4, ax  

    inc si

    jmp DW4_C

DW4_M2:
    mov ax, 2*1000
    mov ssderi4, ax  

    inc si

    jmp DW4_C

DW4_M3:
    mov ax, 3*1000
    mov ssderi4, ax  

    inc si

    jmp DW4_C

DW4_M4:
    mov ax, 4*1000
    mov ssderi4, ax  

    inc si

    jmp DW4_C

DW4_M5:
    mov ax, 5*1000
    mov ssderi4, ax  

    inc si

    jmp DW4_C

DW4_M6:
    mov ax, 6*1000
    mov ssderi4, ax  

    inc si

    jmp DW4_C

DW4_M7:
    mov ax, 7*1000
    mov ssderi4, ax  

    inc si

    jmp DW4_C

DW4_M8:
    mov ax, 8*1000
    mov ssderi4, ax  

    inc si

    jmp DW4_C

DW4_M9:
    mov ax, 9*1000
    mov ssderi4, ax  

    inc si

    jmp DW4_C

DW4_C:
    cmp sderi4[si], 48
    je DW4_C0 ;salta sino es igual
    cmp sderi4[si], 49
    je DW4_C1 ;salta sino es igual
    cmp sderi4[si], 50
    je DW4_C2 ;salta sino es igual
    cmp sderi4[si], 51
    je DW4_C3 ;salta sino es igual
    cmp sderi4[si], 52
    je DW4_C4 ;salta sino es igual
    cmp sderi4[si], 53
    je DW4_C5 ;salta sino es igual
    cmp sderi4[si], 54
    je DW4_C6 ;salta sino es igual
    cmp sderi4[si], 55
    je DW4_C7 ;salta sino es igual
    cmp sderi4[si], 56
    je DW4_C8 ;salta sino es igual
    cmp sderi4[si], 57
    je DW4_C9 ;salta sino es igual


DW4_C0:
    mov ax, 0*100
    add ssderi4, ax  

    inc si

    jmp DW4_D

DW4_C1:
    mov ax, 1*100
    add ssderi4, ax  

    inc si

    jmp DW4_D

DW4_C2:
    mov ax, 2*100
    add ssderi4, ax  

    inc si

    jmp DW4_D

DW4_C3:
    mov ax, 3*100
    add ssderi4, ax  

    inc si

    jmp DW4_D

DW4_C4:
    mov ax, 4*100
    add ssderi4, ax  

    inc si

    jmp DW4_D

DW4_C5:
    mov ax, 5*100
    add ssderi4, ax  

    inc si

    jmp DW4_D

DW4_C6:
    mov ax, 6*100
    add ssderi4, ax  

    inc si

    jmp DW4_D

DW4_C7:
    mov ax, 7*100
    add ssderi4, ax  

    inc si

    jmp DW4_D

DW4_C8:
    mov ax, 8*100
    add ssderi4, ax  

    inc si

    jmp DW4_D

DW4_C9:
    mov ax, 9*100
    add ssderi4, ax  

    inc si

    jmp DW4_D

DW4_D:
    cmp sderi4[si], 48
    je DW4_D0 ;salta sino es igual
    cmp sderi4[si], 49
    je DW4_D1 ;salta sino es igual
    cmp sderi4[si], 50
    je DW4_D2 ;salta sino es igual
    cmp sderi4[si], 51
    je DW4_D3 ;salta sino es igual
    cmp sderi4[si], 52
    je DW4_D4 ;salta sino es igual
    cmp sderi4[si], 53
    je DW4_D5 ;salta sino es igual
    cmp sderi4[si], 54
    je DW4_D6 ;salta sino es igual
    cmp sderi4[si], 55
    je DW4_D7 ;salta sino es igual
    cmp sderi4[si], 56
    je DW4_D8 ;salta sino es igual
    cmp sderi4[si], 57
    je DW4_D9 ;salta sino es igual

DW4_D0:
    mov ax, 0*10
    add ssderi4, ax  

    inc si

    jmp DW4_U

DW4_D1:
    mov ax, 1*10
    add ssderi4, ax  

    inc si

    jmp DW4_U

DW4_D2:
    mov ax, 2*10
    add ssderi4, ax  

    inc si

    jmp DW4_U

DW4_D3:
    mov ax, 3*10
    add ssderi4, ax  

    inc si

    jmp DW4_U

DW4_D4:
    mov ax, 4*10
    add ssderi4, ax  

    inc si

    jmp DW4_U

DW4_D5:
    mov ax, 5*10
    add ssderi4, ax  

    inc si

    jmp DW4_U

DW4_D6:
    mov ax, 6*10
    add ssderi4, ax  

    inc si

    jmp DW4_U

DW4_D7:
    mov ax, 7*10
    add ssderi4, ax  

    inc si

    jmp DW4_U

DW4_D8:
    mov ax, 8*10
    add ssderi4, ax  

    inc si

    jmp DW4_U

DW4_D9:
    mov ax, 9*10
    add ssderi4, ax  

    inc si

    jmp DW4_U

DW4_U:
    cmp sderi4[si], 48
    je DW4_U0 ;salta sino es igual
    cmp sderi4[si], 49
    je DW4_U1 ;salta sino es igual
    cmp sderi4[si], 50
    je DW4_U2 ;salta sino es igual
    cmp sderi4[si], 51
    je DW4_U3 ;salta sino es igual
    cmp sderi4[si], 52
    je DW4_U4 ;salta sino es igual
    cmp sderi4[si], 53
    je DW4_U5 ;salta sino es igual
    cmp sderi4[si], 54
    je DW4_U6 ;salta sino es igual
    cmp sderi4[si], 55
    je DW4_U7 ;salta sino es igual
    cmp sderi4[si], 56
    je DW4_U8 ;salta sino es igual
    cmp sderi4[si], 57
    je DW4_U9 ;salta sino es igual

DW4_U0:
    mov ax, 0*1
    add ssderi4, ax  

    inc si

    jmp DW3_M

DW4_U1:
    mov ax, 1*1
    add ssderi4, ax  

    inc si

    jmp DW3_M

DW4_U2:
    mov ax, 2*1
    add ssderi4, ax  

    inc si

    jmp DW3_M

DW4_U3:
    mov ax, 3*1
    add ssderi4, ax  

    inc si

    jmp DW3_M

DW4_U4:
    mov ax, 4*1
    add ssderi4, ax  

    inc si

    jmp DW3_M

DW4_U5:
    mov ax, 5*1
    add ssderi4, ax  

    inc si

    jmp DW3_M

DW4_U6:
    mov ax, 6*1
    add ssderi4, ax  

    inc si

    jmp DW3_M

DW4_U7:
    mov ax, 7*1
    add ssderi4, ax  

    inc si

    jmp DW3_M

DW4_U8:
    mov ax, 8*1
    add ssderi4, ax  

    inc si

    jmp DW3_M

DW4_U9:
    mov ax, 9*1
    add ssderi4, ax  

    inc si

    jmp DW3_M

DW3_M:
    xor si, si
    cmp sderi3[si], 48
    je DW3_M0 ;salta sino es igual
    cmp sderi3[si], 49
    je DW3_M1 ;salta sino es igual
    cmp sderi3[si], 50
    je DW3_M2 ;salta sino es igual
    cmp sderi3[si], 51
    je DW3_M3 ;salta sino es igual
    cmp sderi3[si], 52
    je DW3_M4 ;salta sino es igual
    cmp sderi3[si], 53
    je DW3_M5 ;salta sino es igual
    cmp sderi3[si], 54
    je DW3_M6 ;salta sino es igual
    cmp sderi3[si], 55
    je DW3_M7 ;salta sino es igual
    cmp sderi3[si], 56
    je DW3_M8 ;salta sino es igual
    cmp sderi3[si], 57
    je DW3_M9 ;salta sino es igual

DW3_M0:
    mov ax, 0*1000
    mov ssderi3, ax  

    inc si

    jmp DW3_C

DW3_M1:
    mov ax, 1*1000
    mov ssderi3, ax  

    inc si

    jmp DW3_C

DW3_M2:
    mov ax, 2*1000
    mov ssderi3, ax  

    inc si

    jmp DW3_C

DW3_M3:
    mov ax, 3*1000
    mov ssderi3, ax  

    inc si

    jmp DW3_C

DW3_M4:
    mov ax, 4*1000
    mov ssderi3, ax  

    inc si

    jmp DW3_C

DW3_M5:
    mov ax, 5*1000
    mov ssderi3, ax  

    inc si

    jmp DW3_C

DW3_M6:
    mov ax, 6*1000
    mov ssderi3, ax  

    inc si

    jmp DW3_C

DW3_M7:
    mov ax, 7*1000
    mov ssderi3, ax  

    inc si

    jmp DW3_C

DW3_M8:
    mov ax, 8*1000
    mov ssderi3, ax  

    inc si

    jmp DW3_C

DW3_M9:
    mov ax, 9*1000
    mov ssderi3, ax  

    inc si

    jmp DW3_C

DW3_C:
    cmp sderi3[si], 48
    je DW3_C0 ;salta sino es igual
    cmp sderi3[si], 49
    je DW3_C1 ;salta sino es igual
    cmp sderi3[si], 50
    je DW3_C2 ;salta sino es igual
    cmp sderi3[si], 51
    je DW3_C3 ;salta sino es igual
    cmp sderi3[si], 52
    je DW3_C4 ;salta sino es igual
    cmp sderi3[si], 53
    je DW3_C5 ;salta sino es igual
    cmp sderi3[si], 54
    je DW3_C6 ;salta sino es igual
    cmp sderi3[si], 55
    je DW3_C7 ;salta sino es igual
    cmp sderi3[si], 56
    je DW3_C8 ;salta sino es igual
    cmp sderi3[si], 57
    je DW3_C9 ;salta sino es igual


DW3_C0:
    mov ax, 0*100
    add ssderi3, ax  

    inc si

    jmp DW3_D

DW3_C1:
    mov ax, 1*100
    add ssderi3, ax  

    inc si

    jmp DW3_D

DW3_C2:
    mov ax, 2*100
    add ssderi3, ax  

    inc si

    jmp DW3_D

DW3_C3:
    mov ax, 3*100
    add ssderi3, ax  

    inc si

    jmp DW3_D

DW3_C4:
    mov ax, 4*100
    add ssderi3, ax  

    inc si

    jmp DW3_D

DW3_C5:
    mov ax, 5*100
    add ssderi3, ax  

    inc si

    jmp DW3_D

DW3_C6:
    mov ax, 6*100
    add ssderi3, ax  

    inc si

    jmp DW3_D

DW3_C7:
    mov ax, 7*100
    add ssderi3, ax  

    inc si

    jmp DW3_D

DW3_C8:
    mov ax, 8*100
    add ssderi3, ax  

    inc si

    jmp DW3_D

DW3_C9:
    mov ax, 9*100
    add ssderi3, ax  

    inc si

    jmp DW3_D
DW3_D:
    cmp sderi3[si], 48
    je DW3_D0 ;salta sino es igual
    cmp sderi3[si], 49
    je DW3_D1 ;salta sino es igual
    cmp sderi3[si], 50
    je DW3_D2 ;salta sino es igual
    cmp sderi3[si], 51
    je DW3_D3 ;salta sino es igual
    cmp sderi3[si], 52
    je DW3_D4 ;salta sino es igual
    cmp sderi3[si], 53
    je DW3_D5 ;salta sino es igual
    cmp sderi3[si], 54
    je DW3_D6 ;salta sino es igual
    cmp sderi3[si], 55
    je DW3_D7 ;salta sino es igual
    cmp sderi3[si], 56
    je DW3_D8 ;salta sino es igual
    cmp sderi3[si], 57
    je DW3_D9 ;salta sino es igual

DW3_D0:
    mov ax, 0*10
    add ssderi3, ax  

    inc si

    jmp DW3_U

DW3_D1:
    mov ax, 1*10
    add ssderi3, ax  

    inc si

    jmp DW3_U

DW3_D2:
    mov ax, 2*10
    add ssderi3, ax  

    inc si

    jmp DW3_U

DW3_D3:
    mov ax, 3*10
    add ssderi3, ax  

    inc si

    jmp DW3_U

DW3_D4:
    mov ax, 4*10
    add ssderi3, ax  

    inc si

    jmp DW3_U

DW3_D5:
    mov ax, 5*10
    add ssderi3, ax  

    inc si

    jmp DW3_U

DW3_D6:
    mov ax, 6*10
    add ssderi3, ax  

    inc si

    jmp DW3_U

DW3_D7:
    mov ax, 7*10
    add ssderi3, ax  

    inc si

    jmp DW3_U

DW3_D8:
    mov ax, 8*10
    add ssderi3, ax  

    inc si

    jmp DW3_U

DW3_D9:
    mov ax, 9*10
    add ssderi3, ax  

    inc si

    jmp DW3_U
DW3_U:
    cmp sderi3[si], 48
    je DW3_U0 ;salta sino es igual
    cmp sderi3[si], 49
    je DW3_U1 ;salta sino es igual
    cmp sderi3[si], 50
    je DW3_U2 ;salta sino es igual
    cmp sderi3[si], 51
    je DW3_U3 ;salta sino es igual
    cmp sderi3[si], 52
    je DW3_U4 ;salta sino es igual
    cmp sderi3[si], 53
    je DW3_U5 ;salta sino es igual
    cmp sderi3[si], 54
    je DW3_U6 ;salta sino es igual
    cmp sderi3[si], 55
    je DW3_U7 ;salta sino es igual
    cmp sderi3[si], 56
    je DW3_U8 ;salta sino es igual
    cmp sderi3[si], 57
    je DW3_U9 ;salta sino es igual

DW3_U0:
    mov ax, 0*1
    add ssderi3, ax  

    inc si

    jmp DW2_M

DW3_U1:
    mov ax, 1*1
    add ssderi3, ax  

    inc si

    jmp DW2_M

DW3_U2:
    mov ax, 2*1
    add ssderi3, ax  

    inc si

    jmp DW2_M

DW3_U3:
    mov ax, 3*1
    add ssderi3, ax  

    inc si

    jmp DW2_M

DW3_U4:
    mov ax, 4*1
    add ssderi3, ax  

    inc si

    jmp DW2_M

DW3_U5:
    mov ax, 5*1
    add ssderi3, ax  

    inc si

    jmp DW2_M

DW3_U6:
    mov ax, 6*1
    add ssderi3, ax  

    inc si

    jmp DW2_M

DW3_U7:
    mov ax, 7*1
    add ssderi3, ax  

    inc si

    jmp DW2_M

DW3_U8:
    mov ax, 8*1
    add ssderi3, ax  

    inc si

    jmp DW2_M

DW3_U9:
    mov ax, 9*1
    add ssderi3, ax  

    inc si

    jmp DW2_M

DW2_M:
    xor si, si
    cmp sderi2[si], 48
    je DW2_M0 ;salta sino es igual
    cmp sderi2[si], 49
    je DW2_M1 ;salta sino es igual
    cmp sderi2[si], 50
    je DW2_M2 ;salta sino es igual
    cmp sderi2[si], 51
    je DW2_M3 ;salta sino es igual
    cmp sderi2[si], 52
    je DW2_M4 ;salta sino es igual
    cmp sderi2[si], 53
    je DW2_M5 ;salta sino es igual
    cmp sderi2[si], 54
    je DW2_M6 ;salta sino es igual
    cmp sderi2[si], 55
    je DW2_M7 ;salta sino es igual
    cmp sderi2[si], 56
    je DW2_M8 ;salta sino es igual
    cmp sderi2[si], 57
    je DW2_M9 ;salta sino es igual

DW2_M0:
    mov ax, 0*1000
    mov ssderi2, ax  

    inc si

    jmp DW2_C

DW2_M1:
    mov ax, 1*1000
    mov ssderi2, ax  

    inc si

    jmp DW2_C

DW2_M2:
    mov ax, 2*1000
    mov ssderi2, ax  

    inc si

    jmp DW2_C

DW2_M3:
    mov ax, 3*1000
    mov ssderi2, ax  

    inc si

    jmp DW2_C

DW2_M4:
    mov ax, 4*1000
    mov ssderi2, ax  

    inc si

    jmp DW2_C

DW2_M5:
    mov ax, 5*1000
    mov ssderi2, ax  

    inc si

    jmp DW2_C

DW2_M6:
    mov ax, 6*1000
    mov ssderi2, ax  

    inc si

    jmp DW2_C

DW2_M7:
    mov ax, 7*1000
    mov ssderi2, ax  

    inc si

    jmp DW2_C

DW2_M8:
    mov ax, 8*1000
    mov ssderi2, ax  

    inc si

    jmp DW2_C

DW2_M9:
    mov ax, 9*1000
    mov ssderi2, ax  

    inc si

    jmp DW2_C

DW2_C:
    cmp sderi2[si], 48
    je DW2_C0 ;salta sino es igual
    cmp sderi2[si], 49
    je DW2_C1 ;salta sino es igual
    cmp sderi2[si], 50
    je DW2_C2 ;salta sino es igual
    cmp sderi2[si], 51
    je DW2_C3 ;salta sino es igual
    cmp sderi2[si], 52
    je DW2_C4 ;salta sino es igual
    cmp sderi2[si], 53
    je DW2_C5 ;salta sino es igual
    cmp sderi2[si], 54
    je DW2_C6 ;salta sino es igual
    cmp sderi2[si], 55
    je DW2_C7 ;salta sino es igual
    cmp sderi2[si], 56
    je DW2_C8 ;salta sino es igual
    cmp sderi2[si], 57
    je DW2_C9 ;salta sino es igual


DW2_C0:
    mov ax, 0*100
    add ssderi2, ax  

    inc si

    jmp DW2_D

DW2_C1:
    mov ax, 1*100
    add ssderi2, ax  

    inc si

    jmp DW2_D

DW2_C2:
    mov ax, 2*100
    add ssderi2, ax  

    inc si

    jmp DW2_D

DW2_C3:
    mov ax, 3*100
    add ssderi2, ax  

    inc si

    jmp DW2_D

DW2_C4:
    mov ax, 4*100
    add ssderi2, ax  

    inc si

    jmp DW2_D

DW2_C5:
    mov ax, 5*100
    add ssderi2, ax  

    inc si

    jmp DW2_D

DW2_C6:
    mov ax, 6*100
    add ssderi2, ax  

    inc si

    jmp DW2_D

DW2_C7:
    mov ax, 7*100
    add ssderi2, ax  

    inc si

    jmp DW2_D

DW2_C8:
    mov ax, 8*100
    add ssderi2, ax  

    inc si

    jmp DW2_D

DW2_C9:
    mov ax, 9*100
    add ssderi2, ax  

    inc si

    jmp DW2_D

DW2_D:
    cmp sderi2[si], 48
    je DW2_D0 ;salta sino es igual
    cmp sderi2[si], 49
    je DW2_D1 ;salta sino es igual
    cmp sderi2[si], 50
    je DW2_D2 ;salta sino es igual
    cmp sderi2[si], 51
    je DW2_D3 ;salta sino es igual
    cmp sderi2[si], 52
    je DW2_D4 ;salta sino es igual
    cmp sderi2[si], 53
    je DW2_D5 ;salta sino es igual
    cmp sderi2[si], 54
    je DW2_D6 ;salta sino es igual
    cmp sderi2[si], 55
    je DW2_D7 ;salta sino es igual
    cmp sderi2[si], 56
    je DW2_D8 ;salta sino es igual
    cmp sderi2[si], 57
    je DW2_D9 ;salta sino es igual

DW2_D0:
    mov ax, 0*10
    add ssderi2, ax  

    inc si

    jmp DW2_U

DW2_D1:
    mov ax, 1*10
    add ssderi2, ax  

    inc si

    jmp DW2_U

DW2_D2:
    mov ax, 2*10
    add ssderi2, ax  

    inc si

    jmp DW2_U

DW2_D3:
    mov ax, 3*10
    add ssderi2, ax  

    inc si

    jmp DW2_U

DW2_D4:
    mov ax, 4*10
    add ssderi2, ax  

    inc si

    jmp DW2_U

DW2_D5:
    mov ax, 5*10
    add ssderi2, ax  

    inc si

    jmp DW2_U

DW2_D6:
    mov ax, 6*10
    add ssderi2, ax  

    inc si

    jmp DW2_U

DW2_D7:
    mov ax, 7*10
    add ssderi2, ax  

    inc si

    jmp DW2_U

DW2_D8:
    mov ax, 8*10
    add ssderi2, ax  

    inc si

    jmp DW2_U

DW2_D9:
    mov ax, 9*10
    add ssderi2, ax  

    inc si

    jmp DW2_U
DW2_U:
    cmp sderi2[si], 48
    je DW2_U0 ;salta sino es igual
    cmp sderi2[si], 49
    je DW2_U1 ;salta sino es igual
    cmp sderi2[si], 50
    je DW2_U2 ;salta sino es igual
    cmp sderi2[si], 51
    je DW2_U3 ;salta sino es igual
    cmp sderi2[si], 52
    je DW2_U4 ;salta sino es igual
    cmp sderi2[si], 53
    je DW2_U5 ;salta sino es igual
    cmp sderi2[si], 54
    je DW2_U6 ;salta sino es igual
    cmp sderi2[si], 55
    je DW2_U7 ;salta sino es igual
    cmp sderi2[si], 56
    je DW2_U8 ;salta sino es igual
    cmp sderi2[si], 57
    je DW2_U9 ;salta sino es igual

DW2_U0:
    mov ax, 0*1
    add ssderi2, ax  

    inc si

    jmp DW1_M

DW2_U1:
    mov ax, 1*1
    add ssderi2, ax  

    inc si

    jmp DW1_M

DW2_U2:
    mov ax, 2*1
    add ssderi2, ax  

    inc si

    jmp DW1_M

DW2_U3:
    mov ax, 3*1
    add ssderi2, ax  

    inc si

    jmp DW1_M

DW2_U4:
    mov ax, 4*1
    add ssderi2, ax  

    inc si

    jmp DW1_M

DW2_U5:
    mov ax, 5*1
    add ssderi2, ax  

    inc si

    jmp DW1_M

DW2_U6:
    mov ax, 6*1
    add ssderi2, ax  

    inc si

    jmp DW1_M

DW2_U7:
    mov ax, 7*1
    add ssderi2, ax  

    inc si

    jmp DW1_M

DW2_U8:
    mov ax, 8*1
    add ssderi2, ax  

    inc si

    jmp DW1_M

DW2_U9:
    mov ax, 9*1
    add ssderi2, ax  

    inc si

    jmp DW1_M
DW1_M:
    xor si, si
    cmp sderi1[si], 48
    je DW1_M0 ;salta sino es igual
    cmp sderi1[si], 49
    je DW1_M1 ;salta sino es igual
    cmp sderi1[si], 50
    je DW1_M2 ;salta sino es igual
    cmp sderi1[si], 51
    je DW1_M3 ;salta sino es igual
    cmp sderi1[si], 52
    je DW1_M4 ;salta sino es igual
    cmp sderi1[si], 53
    je DW1_M5 ;salta sino es igual
    cmp sderi1[si], 54
    je DW1_M6 ;salta sino es igual
    cmp sderi1[si], 55
    je DW1_M7 ;salta sino es igual
    cmp sderi1[si], 56
    je DW1_M8 ;salta sino es igual
    cmp sderi1[si], 57
    je DW1_M9 ;salta sino es igual

DW1_M0:
    mov ax, 0*1000
    mov ssderi1, ax  

    inc si

    jmp DW1_C

DW1_M1:
    mov ax, 1*1000
    mov ssderi1, ax  

    inc si

    jmp DW1_C

DW1_M2:
    mov ax, 2*1000
    mov ssderi1, ax  

    inc si

    jmp DW1_C

DW1_M3:
    mov ax, 3*1000
    mov ssderi1, ax  

    inc si

    jmp DW1_C

DW1_M4:
    mov ax, 4*1000
    mov ssderi1, ax  

    inc si

    jmp DW1_C

DW1_M5:
    mov ax, 5*1000
    mov ssderi1, ax  

    inc si

    jmp DW1_C

DW1_M6:
    mov ax, 6*1000
    mov ssderi1, ax  

    inc si

    jmp DW1_C

DW1_M7:
    mov ax, 7*1000
    mov ssderi1, ax  

    inc si

    jmp DW1_C

DW1_M8:
    mov ax, 8*1000
    mov ssderi1, ax  

    inc si

    jmp DW1_C

DW1_M9:
    mov ax, 9*1000
    mov ssderi1, ax  

    inc si

    jmp DW1_C

DW1_C:
    cmp sderi1[si], 48
    je DW1_C0 ;salta sino es igual
    cmp sderi1[si], 49
    je DW1_C1 ;salta sino es igual
    cmp sderi1[si], 50
    je DW1_C2 ;salta sino es igual
    cmp sderi1[si], 51
    je DW1_C3 ;salta sino es igual
    cmp sderi1[si], 52
    je DW1_C4 ;salta sino es igual
    cmp sderi1[si], 53
    je DW1_C5 ;salta sino es igual
    cmp sderi1[si], 54
    je DW1_C6 ;salta sino es igual
    cmp sderi1[si], 55
    je DW1_C7 ;salta sino es igual
    cmp sderi1[si], 56
    je DW1_C8 ;salta sino es igual
    cmp sderi1[si], 57
    je DW1_C9 ;salta sino es igual


DW1_C0:
    mov ax, 0*100
    add ssderi1, ax  

    inc si

    jmp DW1_D

DW1_C1:
    mov ax, 1*100
    add ssderi1, ax  

    inc si

    jmp DW1_D

DW1_C2:
    mov ax, 2*100
    add ssderi1, ax  

    inc si

    jmp DW1_D

DW1_C3:
    mov ax, 3*100
    add ssderi1, ax  

    inc si

    jmp DW1_D

DW1_C4:
    mov ax, 4*100
    add ssderi1, ax  

    inc si

    jmp DW1_D

DW1_C5:
    mov ax, 5*100
    add ssderi1, ax  

    inc si

    jmp DW1_D

DW1_C6:
    mov ax, 6*100
    add ssderi1, ax  

    inc si

    jmp DW1_D

DW1_C7:
    mov ax, 7*100
    add ssderi1, ax  

    inc si

    jmp DW1_D

DW1_C8:
    mov ax, 8*100
    add ssderi1, ax  

    inc si

    jmp DW1_D

DW1_C9:
    mov ax, 9*100
    add ssderi1, ax  

    inc si

    jmp DW1_D

DW1_D:
    cmp sderi1[si], 48
    je DW1_D0 ;salta sino es igual
    cmp sderi1[si], 49
    je DW1_D1 ;salta sino es igual
    cmp sderi1[si], 50
    je DW1_D2 ;salta sino es igual
    cmp sderi1[si], 51
    je DW1_D3 ;salta sino es igual
    cmp sderi1[si], 52
    je DW1_D4 ;salta sino es igual
    cmp sderi1[si], 53
    je DW1_D5 ;salta sino es igual
    cmp sderi1[si], 54
    je DW1_D6 ;salta sino es igual
    cmp sderi1[si], 55
    je DW1_D7 ;salta sino es igual
    cmp sderi1[si], 56
    je DW1_D8 ;salta sino es igual
    cmp sderi1[si], 57
    je DW1_D9 ;salta sino es igual

DW1_D0:
    mov ax, 0*10
    add ssderi1, ax  

    inc si

    jmp DW1_U

DW1_D1:
    mov ax, 1*10
    add ssderi1, ax  

    inc si

    jmp DW1_U

DW1_D2:
    mov ax, 2*10
    add ssderi1, ax  

    inc si

    jmp DW1_U

DW1_D3:
    mov ax, 3*10
    add ssderi1, ax  

    inc si

    jmp DW1_U

DW1_D4:
    mov ax, 4*10
    add ssderi1, ax  

    inc si

    jmp DW1_U

DW1_D5:
    mov ax, 5*10
    add ssderi1, ax  

    inc si

    jmp DW1_U

DW1_D6:
    mov ax, 6*10
    add ssderi1, ax  

    inc si

    jmp DW1_U

DW1_D7:
    mov ax, 7*10
    add ssderi1, ax  

    inc si

    jmp DW1_U

DW1_D8:
    mov ax, 8*10
    add ssderi1, ax  

    inc si

    jmp DW1_U

DW1_D9:
    mov ax, 9*10
    add ssderi1, ax  

    inc si

    jmp DW1_U

DW1_U:
    cmp sderi1[si], 48
    je DW1_U0 ;salta sino es igual
    cmp sderi1[si], 49
    je DW1_U1 ;salta sino es igual
    cmp sderi1[si], 50
    je DW1_U2 ;salta sino es igual
    cmp sderi1[si], 51
    je DW1_U3 ;salta sino es igual
    cmp sderi1[si], 52
    je DW1_U4 ;salta sino es igual
    cmp sderi1[si], 53
    je DW1_U5 ;salta sino es igual
    cmp sderi1[si], 54
    je DW1_U6 ;salta sino es igual
    cmp sderi1[si], 55
    je DW1_U7 ;salta sino es igual
    cmp sderi1[si], 56
    je DW1_U8 ;salta sino es igual
    cmp sderi1[si], 57
    je DW1_U9 ;salta sino es igual

DW1_U0:
    mov ax, 0*1
    add ssderi1, ax  

    inc si

    jmp DW0_M

DW1_U1:
    mov ax, 1*1
    add ssderi1, ax  

    inc si

    jmp DW0_M

DW1_U2:
    mov ax, 2*1
    add ssderi1, ax  

    inc si

    jmp DW0_M

DW1_U3:
    mov ax, 3*1
    add ssderi1, ax  

    inc si

    jmp DW0_M

DW1_U4:
    mov ax, 4*1
    add ssderi1, ax  

    inc si

    jmp DW0_M

DW1_U5:
    mov ax, 5*1
    add ssderi1, ax  

    inc si

    jmp DW0_M

DW1_U6:
    mov ax, 6*1
    add ssderi1, ax  

    inc si

    jmp DW0_M

DW1_U7:
    mov ax, 7*1
    add ssderi1, ax  

    inc si

    jmp DW0_M

DW1_U8:
    mov ax, 8*1
    add ssderi1, ax  

    inc si

    jmp DW0_M

DW1_U9:
    mov ax, 9*1
    add ssderi1, ax  

    inc si

    jmp DW0_M

DW0_M:
   xor si, si
   cmp coeficon2[si], 48
    je DW0_D0 ;salta sino es igual
    cmp coeficon2[si], 49
    je DW0_D1 ;salta sino es igual
    cmp coeficon2[si], 50
    je DW0_D2 ;salta sino es igual
    cmp coeficon2[si], 51
    je DW0_D3 ;salta sino es igual
    cmp coeficon2[si], 52
    je DW0_D4 ;salta sino es igual
    cmp coeficon2[si], 53
    je DW0_D5 ;salta sino es igual
    cmp coeficon2[si], 54
    je DW0_D6 ;salta sino es igual
    cmp coeficon2[si], 55
    je DW0_D7 ;salta sino es igual
    cmp coeficon2[si], 56
    je DW0_D8 ;salta sino es igual
    cmp coeficon2[si], 57
    je DW0_D9 ;salta sino es igual

DW0_D0:
    mov ax, 0*10
    mov ssderi0, ax  

    inc si

    jmp DW0_U

DW0_D1:
    mov ax, 1*10
    mov ssderi0, ax  

    inc si

    jmp DW0_U

DW0_D2:
    mov ax, 2*10
    mov ssderi0, ax  

    inc si

    jmp DW0_U

DW0_D3:
    mov ax, 3*10
    mov ssderi0, ax  

    inc si

    jmp DW0_U

DW0_D4:
    mov ax, 4*10
    mov ssderi0, ax  

    inc si

    jmp DW0_U

DW0_D5:
    mov ax, 5*10
    mov ssderi0, ax  

    inc si

    jmp DW0_U

DW0_D6:
    mov ax, 6*10
    mov ssderi0, ax  

    inc si

    jmp DW0_U

DW0_D7:
    mov ax, 7*10
    mov ssderi0, ax  

    inc si

    jmp DW0_U

DW0_D8:
    mov ax, 8*10
    mov ssderi0, ax  

    inc si

    jmp DW0_U

DW0_D9:
    mov ax, 9*10
    mov ssderi0, ax  

    inc si

    jmp DW0_U

DW0_U:
    cmp coeficon2[si], 48
    je DW0_U0 ;salta sino es igual
    cmp coeficon2[si], 49
    je DW0_U1 ;salta sino es igual
    cmp coeficon2[si], 50
    je DW0_U2 ;salta sino es igual
    cmp coeficon2[si], 51
    je DW0_U3 ;salta sino es igual
    cmp coeficon2[si], 52
    je DW0_U4 ;salta sino es igual
    cmp coeficon2[si], 53
    je DW0_U5 ;salta sino es igual
    cmp coeficon2[si], 54
    je DW0_U6 ;salta sino es igual
    cmp coeficon2[si], 55
    je DW0_U7 ;salta sino es igual
    cmp coeficon2[si], 56
    je DW0_U8 ;salta sino es igual
    cmp coeficon2[si], 57
    je DW0_U9 ;salta sino es igual

DW0_U0:
    mov ax, 0*1
    add ssderi0, ax  

    inc si

    jmp DWF_M

DW0_U1:
    mov ax, 1*1
    add ssderi0, ax  

    inc si

    jmp DWF_M

DW0_U2:
    mov ax, 2*1
    add ssderi0, ax  

    inc si

    jmp DWF_M

DW0_U3:
    mov ax, 3*1
    add ssderi0, ax  

    inc si

    jmp DWF_M

DW0_U4:
    mov ax, 4*1
    add ssderi0, ax  

    inc si

    jmp DWF_M

DW0_U5:
    mov ax, 5*1
    add ssderi0, ax  

    inc si

    jmp DWF_M

DW0_U6:
    mov ax, 6*1
    add ssderi0, ax  

    inc si

    jmp DWF_M

DW0_U7:
    mov ax, 7*1
    add ssderi0, ax  

    inc si

    jmp DWF_M

DW0_U8:
    mov ax, 8*1
    add ssderi0, ax  

    inc si

    jmp DWF_M

DW0_U9:
    mov ax, 9*1
    add ssderi0, ax  

    inc si

    jmp DWF_M

DWF_M:
    jmp CoeficiPor1

DSigno:
    mov al, signo5
    cmp al, 45
    je Nega5 
    jne Sign4

Sign4:
    mov al, signo4
    cmp al, 45
    je Nega4 
    jne Sign3

Sign3:
    mov al, signo3
    cmp al, 45
    je Nega3 
    jne Sign2

Sign2:
    mov al, signo2
    cmp al, 45
    je Nega2 
    jne Sign1

Sign1:
    mov al, signo1
    cmp al, 45
    je Nega1 
    jne SignCon

SignCon:
    mov al, signocon
    cmp al, 45
    je NegaCon 
    jne SumaEcu2


Nega5:
    mov ax, ssderi5
    sub ssderi5, ax
    sub ssderi5, ax
    
    mov ax, sscofi5
    sub sscofi5, ax
    sub sscofi5, ax

    jmp Sign4

Nega4:
    mov ax, ssderi4
    sub ssderi4, ax
    sub ssderi4, ax

    mov ax, sscofi4
    sub sscofi4, ax
    sub sscofi4, ax

    jmp Sign3

Nega3:
    mov ax, ssderi3
    sub ssderi3, ax
    sub ssderi3, ax

    mov ax, sscofi3
    sub sscofi3, ax
    sub sscofi3, ax

    jmp Sign2

Nega2:
    mov ax, ssderi2
    sub ssderi2, ax
    sub ssderi2, ax

    mov ax, sscofi2
    sub sscofi2, ax
    sub sscofi2, ax

    jmp Sign1

Nega1:
    mov ax, ssderi1
    sub ssderi1, ax
    sub ssderi1, ax

    mov ax, sscofi1
    sub sscofi1, ax
    sub sscofi1, ax

    jmp SignCon

NegaCon:
    mov ax, ssderi0
    sub ssderi0, ax
    sub ssderi0, ax

    jmp SumaEcu2

SumaEcu2:
    mov ax, ssderi5
    mov ssderitotal, ax
    mov ax, ssderi4
    add ssderitotal, ax
    mov ax, ssderi3
    add ssderitotal, ax
    mov ax, ssderi2
    add ssderitotal, ax
    mov ax, ssderi1
    add ssderitotal, ax
    mov ax, ssderi0
    add ssderitotal, ax

    mov ax, sscofi5
    mov sscofitotal, ax
    mov ax, sscofi4
    add sscofitotal, ax
    mov ax, sscofi3
    add sscofitotal, ax
    mov ax, sscofi2
    add sscofitotal, ax
    mov ax, sscofi1
    add sscofitotal, ax
    mov ax, ssderi0
    add sscofitotal, ax

    mov ax, ssderi0
    mov ssconstatotal, ax

    jmp GraficarPunto2

CoeficiPor1:
    xor si, si
    cmp coefi5[si], 48
    je DU5_D0 ;salta sino es igual
    cmp coefi5[si], 49
    je DU5_D1 ;salta sino es igual
    cmp coefi5[si], 50
    je DU5_D2 ;salta sino es igual
    cmp coefi5[si], 51
    je DU5_D3 ;salta sino es igual
    cmp coefi5[si], 52
    je DU5_D4 ;salta sino es igual
    cmp coefi5[si], 53
    je DU5_D5 ;salta sino es igual
    cmp coefi5[si], 54
    je DU5_D6 ;salta sino es igual
    cmp coefi5[si], 55
    je DU5_D7 ;salta sino es igual
    cmp coefi5[si], 56
    je DU5_D8 ;salta sino es igual
    cmp coefi5[si], 57
    je DU5_D9 ;salta sino es igual

DU5_D0:
    mov ax, 0*10
    mov sscofi5, ax  

    inc si

    jmp DU5_U

DU5_D1:
    mov ax, 1*10
    mov sscofi5, ax  

    inc si

    jmp DU5_U

DU5_D2:
    mov ax, 2*10
    mov sscofi5, ax  

    inc si

    jmp DU5_U

DU5_D3:
    mov ax, 3*10
    mov sscofi5, ax  

    inc si

    jmp DU5_U

DU5_D4:
    mov ax, 4*10
    mov sscofi5, ax  

    inc si

    jmp DU5_U

DU5_D5:
    mov ax, 5*10
    mov sscofi5, ax  

    inc si

    jmp DU5_U

DU5_D6:
    mov ax, 6*10
    mov sscofi5, ax  

    inc si

    jmp DU5_U

DU5_D7:
    mov ax, 7*10
    mov sscofi5, ax  

    inc si

    jmp DU5_U

DU5_D8:
    mov ax, 8*10
    mov sscofi5, ax  

    inc si

    jmp DU5_U

DU5_D9:
    mov ax, 9*10
    mov sscofi5, ax  

    inc si

    jmp DU5_U
DU5_U:
    cmp coefi5[si], 48
    je DU5_U0 ;salta sino es igual
    cmp coefi5[si], 49
    je DU5_U1 ;salta sino es igual
    cmp coefi5[si], 50
    je DU5_U2 ;salta sino es igual
    cmp coefi5[si], 51
    je DU5_U3 ;salta sino es igual
    cmp coefi5[si], 52
    je DU5_U4 ;salta sino es igual
    cmp coefi5[si], 53
    je DU5_U5 ;salta sino es igual
    cmp coefi5[si], 54
    je DU5_U6 ;salta sino es igual
    cmp coefi5[si], 55
    je DU5_U7 ;salta sino es igual
    cmp coefi5[si], 56
    je DU5_U8 ;salta sino es igual
    cmp coefi5[si], 57
    je DU5_U9 ;salta sino es igual

DU5_U0:
    mov ax, 0*1
    add sscofi5, ax  

    inc si

    jmp DU4_D

DU5_U1:
    mov ax, 1*1
    add sscofi5, ax  

    inc si

    jmp DU4_D

DU5_U2:
    mov ax, 2*1
    add sscofi5, ax  

    inc si

    jmp DU4_D

DU5_U3:
    mov ax, 3*1
    add sscofi5, ax  

    inc si

    jmp DU4_D

DU5_U4:
    mov ax, 4*1
    add sscofi5, ax  

    inc si

    jmp DU4_D

DU5_U5:
    mov ax, 5*1
    add sscofi5, ax  

    inc si

    jmp DU4_D

DU5_U6:
    mov ax, 6*1
    add sscofi5, ax  

    inc si

    jmp DU4_D

DU5_U7:
    mov ax, 7*1
    add sscofi5, ax  

    inc si

    jmp DU4_D

DU5_U8:
    mov ax, 8*1
    add sscofi5, ax  

    inc si

    jmp DU4_D

DU5_U9:
    mov ax, 9*1
    add sscofi5, ax  

    inc si

    jmp DU4_D


DU4_D:
    xor si, si
    cmp coefi4[si], 48
    je DU4_D0 ;salta sino es igual
    cmp coefi4[si], 49
    je DU4_D1 ;salta sino es igual
    cmp coefi4[si], 50
    je DU4_D2 ;salta sino es igual
    cmp coefi4[si], 51
    je DU4_D3 ;salta sino es igual
    cmp coefi4[si], 52
    je DU4_D4 ;salta sino es igual
    cmp coefi4[si], 53
    je DU4_D5 ;salta sino es igual
    cmp coefi4[si], 54
    je DU4_D6 ;salta sino es igual
    cmp coefi4[si], 55
    je DU4_D7 ;salta sino es igual
    cmp coefi4[si], 56
    je DU4_D8 ;salta sino es igual
    cmp coefi4[si], 57
    je DU4_D9 ;salta sino es igual

DU4_D0:
    mov ax, 0*10
    mov sscofi4, ax  

    inc si

    jmp DU4_U

DU4_D1:
    mov ax, 1*10
    mov sscofi4, ax  

    inc si

    jmp DU4_U

DU4_D2:
    mov ax, 2*10
    mov sscofi4, ax  

    inc si

    jmp DU4_U

DU4_D3:
    mov ax, 3*10
    mov sscofi4, ax  

    inc si

    jmp DU4_U

DU4_D4:
    mov ax, 4*10
    mov sscofi4, ax  

    inc si

    jmp DU4_U

DU4_D5:
    mov ax, 5*10
    mov sscofi4, ax  

    inc si

    jmp DU4_U

DU4_D6:
    mov ax, 6*10
    mov sscofi4, ax  

    inc si

    jmp DU4_U

DU4_D7:
    mov ax, 7*10
    mov sscofi4, ax  

    inc si

    jmp DU4_U

DU4_D8:
    mov ax, 8*10
    mov sscofi4, ax  

    inc si

    jmp DU4_U

DU4_D9:
    mov ax, 9*10
    mov sscofi4, ax  

    inc si

    jmp DU4_U

DU4_U:
    cmp coefi4[si], 48
    je DU4_U0 ;salta sino es igual
    cmp coefi4[si], 49
    je DU4_U1 ;salta sino es igual
    cmp coefi4[si], 50
    je DU4_U2 ;salta sino es igual
    cmp coefi4[si], 51
    je DU4_U3 ;salta sino es igual
    cmp coefi4[si], 52
    je DU4_U4 ;salta sino es igual
    cmp coefi4[si], 53
    je DU4_U5 ;salta sino es igual
    cmp coefi4[si], 54
    je DU4_U6 ;salta sino es igual
    cmp coefi4[si], 55
    je DU4_U7 ;salta sino es igual
    cmp coefi4[si], 56
    je DU4_U8 ;salta sino es igual
    cmp coefi4[si], 57
    je DU4_U9 ;salta sino es igual

DU4_U0:
    mov ax, 0*1
    add sscofi4, ax  

    inc si

    jmp DU3_D

DU4_U1:
    mov ax, 1*1
    add sscofi4, ax  

    inc si

    jmp DU3_D

DU4_U2:
    mov ax, 2*1
    add sscofi4, ax  

    inc si

    jmp DU3_D

DU4_U3:
    mov ax, 3*1
    add sscofi4, ax  

    inc si

    jmp DU3_D

DU4_U4:
    mov ax, 4*1
    add sscofi4, ax  

    inc si

    jmp DU3_D

DU4_U5:
    mov ax, 5*1
    add sscofi4, ax  

    inc si

    jmp DU3_D

DU4_U6:
    mov ax, 6*1
    add sscofi4, ax  

    inc si

    jmp DU3_D

DU4_U7:
    mov ax, 7*1
    add sscofi4, ax  

    inc si

    jmp DU3_D

DU4_U8:
    mov ax, 8*1
    add sscofi4, ax  

    inc si

    jmp DU3_D

DU4_U9:
    mov ax, 9*1
    add sscofi4, ax  

    inc si

    jmp DU3_D

DU3_D:
    xor si, si
    cmp coefi3[si], 48
    je DU3_D0 ;salta sino es igual
    cmp coefi3[si], 49
    je DU3_D1 ;salta sino es igual
    cmp coefi3[si], 50
    je DU3_D2 ;salta sino es igual
    cmp coefi3[si], 51
    je DU3_D3 ;salta sino es igual
    cmp coefi3[si], 52
    je DU3_D4 ;salta sino es igual
    cmp coefi3[si], 53
    je DU3_D5 ;salta sino es igual
    cmp coefi3[si], 54
    je DU3_D6 ;salta sino es igual
    cmp coefi3[si], 55
    je DU3_D7 ;salta sino es igual
    cmp coefi3[si], 56
    je DU3_D8 ;salta sino es igual
    cmp coefi3[si], 57
    je DU3_D9 ;salta sino es igual

DU3_D0:
    mov ax, 0*10
    mov sscofi3, ax  

    inc si

    jmp DU3_U

DU3_D1:
    mov ax, 1*10
    mov sscofi3, ax  

    inc si

    jmp DU3_U

DU3_D2:
    mov ax, 2*10
    mov sscofi3, ax  

    inc si

    jmp DU3_U

DU3_D3:
    mov ax, 3*10
    mov sscofi3, ax  

    inc si

    jmp DU3_U

DU3_D4:
    mov ax, 4*10
    mov sscofi3, ax  

    inc si

    jmp DU3_U

DU3_D5:
    mov ax, 5*10
    mov sscofi3, ax  

    inc si

    jmp DU3_U

DU3_D6:
    mov ax, 6*10
    mov sscofi3, ax  

    inc si

    jmp DU3_U

DU3_D7:
    mov ax, 7*10
    mov sscofi3, ax  

    inc si

    jmp DU3_U

DU3_D8:
    mov ax, 8*10
    mov sscofi3, ax  

    inc si

    jmp DU3_U

DU3_D9:
    mov ax, 9*10
    mov sscofi3, ax  

    inc si

    jmp DU3_U


DU3_U:
    cmp coefi3[si], 48
    je DU3_U0 ;salta sino es igual
    cmp coefi3[si], 49
    je DU3_U1 ;salta sino es igual
    cmp coefi3[si], 50
    je DU3_U2 ;salta sino es igual
    cmp coefi3[si], 51
    je DU3_U3 ;salta sino es igual
    cmp coefi3[si], 52
    je DU3_U4 ;salta sino es igual
    cmp coefi3[si], 53
    je DU3_U5 ;salta sino es igual
    cmp coefi3[si], 54
    je DU3_U6 ;salta sino es igual
    cmp coefi3[si], 55
    je DU3_U7 ;salta sino es igual
    cmp coefi3[si], 56
    je DU3_U8 ;salta sino es igual
    cmp coefi3[si], 57
    je DU3_U9 ;salta sino es igual

DU3_U0:
    mov ax, 0*1
    add sscofi3, ax  

    inc si

    jmp DU2_D

DU3_U1:
    mov ax, 1*1
    add sscofi3, ax  

    inc si

    jmp DU2_D

DU3_U2:
    mov ax, 2*1
    add sscofi3, ax  

    inc si

    jmp DU2_D

DU3_U3:
    mov ax, 3*1
    add sscofi3, ax  

    inc si

    jmp DU2_D

DU3_U4:
    mov ax, 4*1
    add sscofi3, ax  

    inc si

    jmp DU2_D

DU3_U5:
    mov ax, 5*1
    add sscofi3, ax  

    inc si

    jmp DU2_D

DU3_U6:
    mov ax, 6*1
    add sscofi3, ax  

    inc si

    jmp DU2_D

DU3_U7:
    mov ax, 7*1
    add sscofi3, ax  

    inc si

    jmp DU2_D

DU3_U8:
    mov ax, 8*1
    add sscofi3, ax  

    inc si

    jmp DU2_D

DU3_U9:
    mov ax, 9*1
    add sscofi3, ax  

    inc si

    jmp DU2_D

DU2_D:
    xor si, si
    cmp coefi2[si], 48
    je DU2_D0 ;salta sino es igual
    cmp coefi2[si], 49
    je DU2_D1 ;salta sino es igual
    cmp coefi2[si], 50
    je DU2_D2 ;salta sino es igual
    cmp coefi2[si], 51
    je DU2_D3 ;salta sino es igual
    cmp coefi2[si], 52
    je DU2_D4 ;salta sino es igual
    cmp coefi2[si], 53
    je DU2_D5 ;salta sino es igual
    cmp coefi2[si], 54
    je DU2_D6 ;salta sino es igual
    cmp coefi2[si], 55
    je DU2_D7 ;salta sino es igual
    cmp coefi2[si], 56
    je DU2_D8 ;salta sino es igual
    cmp coefi2[si], 57
    je DU2_D9 ;salta sino es igual

DU2_D0:
    mov ax, 0*10
    mov sscofi2, ax  

    inc si

    jmp DU2_U

DU2_D1:
    mov ax, 1*10
    mov sscofi2, ax  

    inc si

    jmp DU2_U

DU2_D2:
    mov ax, 2*10
    mov sscofi2, ax  

    inc si

    jmp DU2_U

DU2_D3:
    mov ax, 3*10
    mov sscofi2, ax  

    inc si

    jmp DU2_U

DU2_D4:
    mov ax, 4*10
    mov sscofi2, ax  

    inc si

    jmp DU2_U

DU2_D5:
    mov ax, 5*10
    mov sscofi2, ax  

    inc si

    jmp DU2_U

DU2_D6:
    mov ax, 6*10
    mov sscofi2, ax  

    inc si

    jmp DU2_U

DU2_D7:
    mov ax, 7*10
    mov sscofi2, ax  

    inc si

    jmp DU2_U

DU2_D8:
    mov ax, 8*10
    mov sscofi2, ax  

    inc si

    jmp DU2_U

DU2_D9:
    mov ax, 9*10
    mov sscofi2, ax  

    inc si

    jmp DU2_U

DU2_U:
    cmp coefi2[si], 48
    je DU2_U0 ;salta sino es igual
    cmp coefi2[si], 49
    je DU2_U1 ;salta sino es igual
    cmp coefi2[si], 50
    je DU2_U2 ;salta sino es igual
    cmp coefi2[si], 51
    je DU2_U3 ;salta sino es igual
    cmp coefi2[si], 52
    je DU2_U4 ;salta sino es igual
    cmp coefi2[si], 53
    je DU2_U5 ;salta sino es igual
    cmp coefi2[si], 54
    je DU2_U6 ;salta sino es igual
    cmp coefi2[si], 55
    je DU2_U7 ;salta sino es igual
    cmp coefi2[si], 56
    je DU2_U8 ;salta sino es igual
    cmp coefi2[si], 57
    je DU2_U9 ;salta sino es igual

DU2_U0:
    mov ax, 0*1
    add sscofi2, ax  

    inc si

    jmp DU1_D

DU2_U1:
    mov ax, 1*1
    add sscofi2, ax  

    inc si

    jmp DU1_D

DU2_U2:
    mov ax, 2*1
    add sscofi2, ax  

    inc si

    jmp DU1_D

DU2_U3:
    mov ax, 3*1
    add sscofi2, ax  

    inc si

    jmp DU1_D

DU2_U4:
    mov ax, 4*1
    add sscofi2, ax  

    inc si

    jmp DU1_D

DU2_U5:
    mov ax, 5*1
    add sscofi2, ax  

    inc si

    jmp DU1_D

DU2_U6:
    mov ax, 6*1
    add sscofi2, ax  

    inc si

    jmp DU1_D

DU2_U7:
    mov ax, 7*1
    add sscofi2, ax  

    inc si

    jmp DU1_D

DU2_U8:
    mov ax, 8*1
    add sscofi2, ax  

    inc si

    jmp DU1_D

DU2_U9:
    mov ax, 9*1
    add sscofi2, ax  

    inc si

    jmp DU1_D

DU1_D:
    xor si, si
    cmp coefi1[si], 48
    je DU1_D0 ;salta sino es igual
    cmp coefi1[si], 49
    je DU1_D1 ;salta sino es igual
    cmp coefi1[si], 50
    je DU1_D2 ;salta sino es igual
    cmp coefi1[si], 51
    je DU1_D3 ;salta sino es igual
    cmp coefi1[si], 52
    je DU1_D4 ;salta sino es igual
    cmp coefi1[si], 53
    je DU1_D5 ;salta sino es igual
    cmp coefi1[si], 54
    je DU1_D6 ;salta sino es igual
    cmp coefi1[si], 55
    je DU1_D7 ;salta sino es igual
    cmp coefi1[si], 56
    je DU1_D8 ;salta sino es igual
    cmp coefi1[si], 57
    je DU1_D9 ;salta sino es igual

DU1_D0:
    mov ax, 0*10
    mov sscofi1, ax  

    inc si

    jmp DU1_U

DU1_D1:
    mov ax, 1*10
    mov sscofi1, ax  

    inc si

    jmp DU1_U

DU1_D2:
    mov ax, 2*10
    mov sscofi1, ax  

    inc si

    jmp DU1_U

DU1_D3:
    mov ax, 3*10
    mov sscofi1, ax  

    inc si

    jmp DU1_U

DU1_D4:
    mov ax, 4*10
    mov sscofi1, ax  

    inc si

    jmp DU1_U

DU1_D5:
    mov ax, 5*10
    mov sscofi1, ax  

    inc si

    jmp DU1_U

DU1_D6:
    mov ax, 6*10
    mov sscofi1, ax  

    inc si

    jmp DU1_U

DU1_D7:
    mov ax, 7*10
    mov sscofi1, ax  

    inc si

    jmp DU1_U

DU1_D8:
    mov ax, 8*10
    mov sscofi1, ax  

    inc si

    jmp DU1_U

DU1_D9:
    mov ax, 9*10
    mov sscofi1, ax  

    inc si

    jmp DU1_U

DU1_U:
    cmp coefi1[si], 48
    je DU1_U0 ;salta sino es igual
    cmp coefi1[si], 49
    je DU1_U1 ;salta sino es igual
    cmp coefi1[si], 50
    je DU1_U2 ;salta sino es igual
    cmp coefi1[si], 51
    je DU1_U3 ;salta sino es igual
    cmp coefi1[si], 52
    je DU1_U4 ;salta sino es igual
    cmp coefi1[si], 53
    je DU1_U5 ;salta sino es igual
    cmp coefi1[si], 54
    je DU1_U6 ;salta sino es igual
    cmp coefi1[si], 55
    je DU1_U7 ;salta sino es igual
    cmp coefi1[si], 56
    je DU1_U8 ;salta sino es igual
    cmp coefi1[si], 57
    je DU1_U9 ;salta sino es igual

DU1_U0:
    mov ax, 0*1
    add sscofi1, ax  

    inc si

    jmp DUF_D

DU1_U1:
    mov ax, 1*1
    add sscofi1, ax  

    inc si

    jmp DUF_D

DU1_U2:
    mov ax, 2*1
    add sscofi1, ax  

    inc si

    jmp DUF_D

DU1_U3:
    mov ax, 3*1
    add sscofi1, ax  

    inc si

    jmp DUF_D

DU1_U4:
    mov ax, 4*1
    add sscofi1, ax  

    inc si

    jmp DUF_D

DU1_U5:
    mov ax, 5*1
    add sscofi1, ax  

    inc si

    jmp DUF_D

DU1_U6:
    mov ax, 6*1
    add sscofi1, ax  

    inc si

    jmp DUF_D

DU1_U7:
    mov ax, 7*1
    add sscofi1, ax  

    inc si

    jmp DUF_D

DU1_U8:
    mov ax, 8*1
    add sscofi1, ax  

    inc si

    jmp DUF_D

DU1_U9:
    mov ax, 9*1
    add sscofi1, ax  

    inc si

    jmp DUF_D

DUF_D:
   jmp DSigno

GraficarPunto2:


    ; PINTAR UN PIXEL

    ; pintar una linea horizontal
    mov cx, 200; columna del pixel x
punt2:  
    mov ah, 0ch ; PINTA UN PIXEL
    mov al, 05; es el color
    mov bh, 0h; es la pagina 0
    mov dx, 280; renglon y
    sub dx, ssconstatotal
    int 10h
    mov dx, 280; renglon y
    sub dx, ssconstatotal
    dec dx
    int 10h
    mov dx, 280; renglon y
    sub dx, ssconstatotal
    inc dx
    int 10h
    mov dx, 280; renglon y
    sub dx, ssconstatotal
    inc dx
    inc dx
    int 10h
    mov dx, 280; renglon y
    sub dx, ssconstatotal
    dec dx
    dec dx
    int 10h
    mov dx, 280; renglon y
    sub dx, ssconstatotal
    mov cx, 200
    inc cx
    int 10h
    inc cx
    int 10h
    mov cx, 200
    dec cx
    int 10h
    dec cx
    int 10h
    mov cx, 200



    inc cx; incrementa de 1 en 1 columna
    add cx, 20
    inc w2
    mov dx, 280; renglon y
    sub dx, sscofitotal
    int 10h
    mov dx, 280; renglon y
    sub dx, sscofitotal
    dec dx
    int 10h
    mov dx, 280; renglon y
    sub dx, sscofitotal
    inc dx
    int 10h
    mov dx, 280; renglon y
    sub dx, sscofitotal
    inc dx
    inc dx
    int 10h
    mov dx, 280; renglon y
    sub dx, sscofitotal
    dec dx
    dec dx
    int 10h
    mov dx, 280; renglon y
    sub dx, sscofitotal
    mov cx, 221
    inc cx
    int 10h
    inc cx
    int 10h
    mov cx, 221
    dec cx
    int 10h
    dec cx
    int 10h
    mov cx, 221



    inc cx; incrementa de 1 en 1 columna
    add cx, 20
    inc w2
    mov dx, 280; renglon y
    sub dx, ssderitotal
    int 10h
    mov dx, 280; renglon y
    sub dx, ssderitotal
    dec dx
    int 10h
    mov dx, 280; renglon y
    sub dx, ssderitotal
    inc dx
    int 10h
    mov dx, 280; renglon y
    sub dx, ssderitotal
    inc dx
    inc dx
    int 10h
    mov dx, 280; renglon y
    sub dx, ssderitotal
    dec dx
    dec dx
    int 10h
    mov dx, 280; renglon y
    sub dx, ssderitotal
    mov cx, 241
    inc cx
    int 10h
    inc cx
    int 10h
    mov cx, 241
    dec cx
    int 10h
    dec cx
    int 10h
    mov cx, 241

    jmp EstadoAlmacen


    ;cmp w2, 101
    ;jne punt2 ;salta sino es igual
    ;je GraficarPunto1

EstadoAlmacen:
    xor si, si
    cmp estado[si], 35
    je AlmacenEcuacion  ;Salta al segmento escrito si el dato coincide
    cmp estado[si], 36
    je AlmacenDerivada
    cmp estado[si], 37
    je AlmacenIntegral

AlmacenEcuacion:
    mov ax, ssderitotal
    mov Ecuapara2, ax

    mov ax, sscofitotal
    mov Ecuapara1, ax

    mov ax, ssconstatotal
    mov Ecuapara0, ax

    jmp FinalizarEcuacion

AlmacenDerivada:
    mov ax, ssderitotal
    mov Deripara2, ax

    mov ax, sscofitotal
    mov Deripara1, ax

    mov ax, ssconstatotal
    mov Deripara0, ax

    jmp FinalizarEcuacion

AlmacenIntegral:
    mov ax, ssderitotal
    mov Intepara2, ax

    mov ax, sscofitotal
    mov Intepara1, ax

    mov ax, ssconstatotal
    mov Intepara0, ax

    jmp FinalizarEcuacion


FinalizarEcuacion:
    mov w, 0
    mov wd, 0 
    mov wi, 0

    mov w2, 0
    mov w1, 0 
    mov w0, 0

    mov h, 0
    mov hd, 0
    mov hi, 0

    mov cx, 0
    mov dx, 0

    
    ;imprimir sderi5
    ;imprimir salto
    ;imprimir sderi4
    ;imprimir salto
    ;imprimir sderi3
    ;imprimir salto
    ;imprimir sderi2
    ;imprimir salto
    ;imprimir sderi1
    ;imprimir salto 
    ;imprimir coeficon
    ;imprimir salto
    ;imprimir salto
    ;imprimir ssderi5



    mov ax, 00
    mov ah, 01h
    int 21h
    cmp al, 27
    je Salir  ; Si el dato coincide el codigo salta al segmento escrito en esta misma linea
    jne Entrar ; Si el dato no coincide el codigo salta al segmento escrito en esta linea

;------------------------  SALIDA -----------------------------------
Salir:
    mov ax, 4c00h
    int 21h 
main endp         

    
end main
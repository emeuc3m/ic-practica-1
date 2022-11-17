;; JUEGO: BUSCAMINAS - PERSONALIDAD: IMPACIENTE
;; En esta prueba queremos ver que tal funciona el juego con mas banderas que numeros
(definstances INSTANCIAS
        (of JUGADOR (nombre robot) (jugando si))
        (of JUGADOR (nombre niño) (jugando no))

        (of PERSONALIDAD (nombre impaciente) (reaccion "quiere jugar ya") (correccion "le dice: tranquilo que ya voy"))

        (of CASILLA (posicion 1) (tipo mina) (propietario ambos) (accion daño))
        (of CASILLA (posicion 2) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 3) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 4) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 5) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 6) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 7) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 8) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 9) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 10) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 11) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 12) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 13) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 14) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 15) (tipo bandera) (propietario ambos) (accion seguir))
)
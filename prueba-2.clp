; BUSCAMINAS - LLORON
(definstances INSTANCIAS
        (of JUGADOR (nombre robot) (jugando si))
        (of JUGADOR (nombre niño) (jugando no))

        (of PERSONALIDAD (nombre lloron) (reaccion llora) (correccion "da animos" ))

        (of CASILLA (posicion 1) (tipo mina) (propietario ambos) (accion daño))
        (of CASILLA (posicion 2) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 3) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 4) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 5) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 6) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 7) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 8) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 9) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 10) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 11) (tipo bandera) (propietario ambos) (accion seguir))
)
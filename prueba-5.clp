;; JUEGO: BUSCAMINAS - PERSONALIDAD: INDECISO
;; En esta prueba hemos optado por incluir más de una mina para ver si el juego termina antes, 
;; por el hecho de tener mas minas
(definstances INSTANCIAS
        (of JUGADOR (nombre robot) (jugando si))
        (of JUGADOR (nombre niño) (jugando no))

        (of PERSONALIDAD (nombre indeciso) (reaccion "no se decide por la casilla que quiere elegir") (correccion "le dice: elige la primera que se te venga a la mente"))

        (of CASILLA (posicion 1) (tipo mina) (propietario ambos) (accion daño))
        (of CASILLA (posicion 2) (tipo mina) (propietario ambos) (accion daño))
        (of CASILLA (posicion 3) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 4) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 5) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 6) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 7) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 8) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 9) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 10) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 11) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 12) (tipo bandera) (propietario ambos) (accion seguir))
)
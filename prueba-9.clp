;; JUEGO: BUSCAMINAS - PERSONALIDAD: PESIMISTA
;; EN esta prueba hemos incluido mas casillas del tipo bandera 
(definstances INSTANCIAS
        (of JUGADOR (nombre robot) (jugando si))
        (of JUGADOR (nombre niño) (jugando no))

        (of PERSONALIDAD (nombre pesimista) (reaccion "ha perdido la fe en que pueda ganar esta partida") (correccion "le dice: yo confio en tus posibilidades"))

        (of CASILLA (posicion 1) (tipo mina) (propietario ambos) (accion daño))
        (of CASILLA (posicion 2) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 3) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 4) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 5) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 6) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 7) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 8) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 9) (tipo bandera) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 10) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 11) (tipo bandera) (propietario ambos) (accion seguir))
)
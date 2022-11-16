;; BUSCAMINAS - DESPISTADO
(definstances INSTANCIAS
        (of JUGADOR (nombre robot) (jugando si))
        (of JUGADOR (nombre niño) (jugando no))

        (of PERSONALIDAD (nombre despistado) (reaccion "empieza a mirar a la nada") (correccion "le dice: presta atención al juego"))

        (of CASILLA (posicion 1) (tipo mina) (propietario ambos) (accion daño))
        (of CASILLA (posicion 2) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 3) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 4) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 5) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 6) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 7) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 14) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 15) (tipo bandera) (propietario ambos) (accion seguir))
)
;; JUEGO: HUNDIR LA FLOTA - PERSONALIDAD: LLORON
;; En esta prueba hemos incluido muchas más casillas de tipo agua que barcos, intentando ver una larga ejecucion
(definstances INSTANCIAS
        (of JUGADOR (nombre robot) (jugando si) (vidas 4))
        (of JUGADOR (nombre niño) (jugando no) (vidas 4))

        (of PERSONALIDAD (nombre lloron) (reaccion "se pone triste y empieza sollozar") (correccion "le dice: no llores por un juego"))
       
        (of CASILLA (posicion 1) (tipo barco) (propietario robot) (accion dañar) (afecta no))
        (of CASILLA (posicion 2) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 3) (tipo barco) (propietario robot) (accion dañar) (afecta no))
        (of CASILLA (posicion 4) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 5) (tipo barco) (propietario robot) (accion dañar) (afecta no))
        (of CASILLA (posicion 6) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 7) (tipo barco) (propietario robot) (accion dañar) (afecta no))
        (of CASILLA (posicion 8) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 9) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 10) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 11) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 12) (tipo agua) (propietario robot) (accion cambiar))

        (of CASILLA (posicion 1) (tipo barco) (propietario niño) (accion dañar) (afecta no))
        (of CASILLA (posicion 2) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 3) (tipo barco) (propietario niño) (accion dañar) (afecta no))
        (of CASILLA (posicion 4) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 5) (tipo barco) (propietario niño) (accion dañar) (afecta no))
        (of CASILLA (posicion 6) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 7) (tipo barco) (propietario niño) (accion dañar) (afecta no))
        (of CASILLA (posicion 8) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 9) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 10) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 11) (tipo agua) (propietario niño) (accion cambiar))  
        (of CASILLA (posicion 12) (tipo agua) (propietario niño) (accion cambiar))        
)
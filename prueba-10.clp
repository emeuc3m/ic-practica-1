;; HUNDIR LA FLOTA - INDECISO
(definstances INSTANCIAS
        (of JUGADOR (nombre robot) (jugando si) (vidas 7))
        (of JUGADOR (nombre niño) (jugando no) (vidas 4))
       
        (of PERSONALIDAD (nombre indeciso) (reaccion "no se decide por la casilla que quiere elegir") (correccion "le dice: elige la primera que se te venga a la mente"))
        
        (of CASILLA (posicion 1) (tipo barco) (propietario robot) (accion daño))
        (of CASILLA (posicion 2) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 3) (tipo barco) (propietario robot) (accion daño))
        (of CASILLA (posicion 4) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 5) (tipo barco) (propietario robot) (accion daño))
        (of CASILLA (posicion 6) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 7) (tipo barco) (propietario robot) (accion daño))
        (of CASILLA (posicion 8) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 9) (tipo barco) (propietario robot) (accion daño))
        (of CASILLA (posicion 10) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 11) (tipo barco) (propietario robot) (accion daño))
        (of CASILLA (posicion 12) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 13) (tipo barco) (propietario robot) (accion daño))

        (of CASILLA (posicion 1) (tipo barco) (propietario niño) (accion daño))
        (of CASILLA (posicion 2) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 3) (tipo barco) (propietario niño) (accion daño))
        (of CASILLA (posicion 4) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 5) (tipo barco) (propietario niño) (accion daño))
        (of CASILLA (posicion 6) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 7) (tipo barco) (propietario niño) (accion daño))
)
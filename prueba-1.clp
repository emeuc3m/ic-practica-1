;; HUNDIR LA FLOTA - DESPISTADO
(definstances INSTANCIAS
        (of JUGADOR (nombre robot) (jugando si) (vidas 3))
        (of JUGADOR (nombre niño) (jugando no) (vidas 3))

        (of PERSONALIDAD (nombre despistado) (reaccion "se despista") (correccion "le dice: espabila hombre"))

        (of CASILLA (posicion 1) (tipo barco) (propietario robot) (accion daño))
        (of CASILLA (posicion 2) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 3) (tipo barco) (propietario robot) (accion daño))
        (of CASILLA (posicion 4) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 5) (tipo barco) (propietario robot) (accion daño))

        (of CASILLA (posicion 1) (tipo barco) (propietario niño) (accion daño))
        (of CASILLA (posicion 2) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 3) (tipo barco) (propietario niño) (accion daño))
        (of CASILLA (posicion 4) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 5) (tipo barco) (propietario niño) (accion daño))
)
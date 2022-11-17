;; JUEGO: HUNDIR LA FLOTA - PERSONALIDAD: IMPACIENTE
;; En esta prueba hemos incluido muchas mas casillas para el robot, que para el niño
(definstances INSTANCIAS
        (of JUGADOR (nombre robot) (jugando si) (vidas 7))
        (of JUGADOR (nombre niño) (jugando no) (vidas 4))

        (of PERSONALIDAD (nombre impaciente) (reaccion "le dice: podrías darte más prisa") (correccion "le dice: tienes que aprender a no ser tan impaciente"))
        
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
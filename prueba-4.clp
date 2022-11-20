;; JUEGO: HUNDIR LA FLOTA - PERSONALIDAD: PESIMISTA
;; En esta prueba queremos ver que el funcionamiento de hundir la flota con el doble de barcos, cambiando el numero de 
;; vidas que se restan en la regla de intervencion, con el objetivo tambien de conseguir que la paciencia llegeu a 0
;; para que se pare el juego por la paciencia
(definstances INSTANCIAS
        (of JUGADOR (nombre robot) (jugando si) (vidas 7))
        (of JUGADOR (nombre niño) (jugando no) (vidas 7))

        (of PERSONALIDAD (nombre pesimista) (reaccion "dice: estoy seguro que voy a perder esta partida") (correccion "le dice: tranquilo seguro que me acabas ganando") (paciencia 5) (intervencion 2))
        
        (of CASILLA (posicion 1) (tipo barco) (propietario robot) (accion dañar) (afecta no))
        (of CASILLA (posicion 2) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 3) (tipo barco) (propietario robot) (accion dañar) (afecta no))
        (of CASILLA (posicion 4) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 5) (tipo barco) (propietario robot) (accion dañar) (afecta no))
        (of CASILLA (posicion 6) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 7) (tipo barco) (propietario robot) (accion dañar) (afecta no))
        (of CASILLA (posicion 8) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 9) (tipo barco) (propietario robot) (accion dañar) (afecta no))
        (of CASILLA (posicion 10) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 11) (tipo barco) (propietario robot) (accion dañar) (afecta no))
        (of CASILLA (posicion 12) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 13) (tipo barco) (propietario robot) (accion dañar) (afecta no))

        (of CASILLA (posicion 1) (tipo barco) (propietario niño) (accion dañar) (afecta no))
        (of CASILLA (posicion 2) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 3) (tipo barco) (propietario niño) (accion dañar) (afecta no))
        (of CASILLA (posicion 4) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 5) (tipo barco) (propietario niño) (accion dañar) (afecta no))
        (of CASILLA (posicion 6) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 7) (tipo barco) (propietario niño) (accion dañar) (afecta no))
        (of CASILLA (posicion 8) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 9) (tipo barco) (propietario niño) (accion dañar) (afecta no))
        (of CASILLA (posicion 10) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 11) (tipo barco) (propietario niño) (accion dañar) (afecta no))
        (of CASILLA (posicion 12) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 13) (tipo barco) (propietario niño) (accion dañar) (afecta no))        
)
;; JUEGO: HUNDIR LA FLOTA
;; En esta prueba lo que buscamos es probar el funcionamiento de hundir la flota con una ejecución simple
;; y con varias personalidades, variando el atributo paciencia en ellas
(definstances INSTANCIAS
        (of JUGADOR (nombre robot) (jugando si) (vidas 3))
        (of JUGADOR (nombre niño) (jugando no) (vidas 3))

        (of PERSONALIDAD (nombre despistado) (reaccion "se despista") (correccion "le dice: espabila hombre") (paciencia 6))
        (of PERSONALIDAD (nombre lloron) (reaccion "llora") (correccion "da animos"))
        (of PERSONALIDAD (nombre impaciente) (reaccion "quiere jugar ya") (correccion "le dice: tranquilo que ya voy") (paciencia 5))

        (of CASILLA (posicion 1) (tipo barco) (propietario robot) (accion dañar) (afecta no))
        (of CASILLA (posicion 2) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 3) (tipo barco) (propietario robot) (accion dañar) (afecta no))
        (of CASILLA (posicion 4) (tipo agua) (propietario robot) (accion cambiar))
        (of CASILLA (posicion 5) (tipo barco) (propietario robot) (accion dañar) (afecta no))

        (of CASILLA (posicion 1) (tipo barco) (propietario niño) (accion dañar) (afecta no))
        (of CASILLA (posicion 2) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 3) (tipo barco) (propietario niño) (accion dañar) (afecta no))
        (of CASILLA (posicion 4) (tipo agua) (propietario niño) (accion cambiar))
        (of CASILLA (posicion 5) (tipo barco) (propietario niño) (accion dañar) (afecta no))
)
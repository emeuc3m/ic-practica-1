;; JUEGO: BUSCAMINAS
;; En esta prueba queremos ver si funciona correctamente el juego de buscaminas con una ejecucion con el mismo numero de 
;; banderas que numeros, y probar el funcionamiento de varias personalidades variando su paciencia
(definstances INSTANCIAS
        (of JUGADOR (nombre robot) (jugando si))
        (of JUGADOR (nombre niño) (jugando no))

        (of PERSONALIDAD (nombre lloron) (reaccion "llora") (correccion "da animos") (paciencia 5))
        (of PERSONALIDAD (nombre pesimista) (reaccion "dice: estoy seguro que voy a perder esta partida") (correccion "le dice: tranquilo seguro que me acabas ganando") (paciencia 6))
        (of PERSONALIDAD (nombre indeciso) (reaccion "no se decide por la casilla que quiere elegir") (correccion "le dice: elige la primera que se te venga a la mente") (paciencia 5))

        (of CASILLA (posicion 1) (tipo mina) (propietario ambos) (accion dañar) (afecta si))
        (of CASILLA (posicion 2) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 3) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 4) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 5) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 6) (tipo numero) (propietario ambos) (accion cambiar))
        (of CASILLA (posicion 7) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 8) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 9) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 10) (tipo bandera) (propietario ambos) (accion seguir))
        (of CASILLA (posicion 11) (tipo bandera) (propietario ambos) (accion seguir))
)
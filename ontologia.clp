;; Clase que usamos para definir la personalidad del niño, en la que tenemos la reaccion por su personalidad y la correccion de esta
(defclass PERSONALIDAD (is-a USER)
    (slot nombre 
        (type SYMBOL)
    )
    (slot reaccion 
        (type SYMBOL)
    )
    (slot correccion
        (type SYMBOL)
    )
    (slot paciencia ;; Se pone 3 por defecto, para que se pueda mostrar la personalidad un minimo de 3 veces
        (type INTEGER)
        (default 3)
    )
)

;; Clase para los jugadores, en la que se define el tipo de jugador, si en ese momneto esta jugando y las vidas, que es un contador 
;; que se utiliza para saber cuando ha perdido un jugador
(defclass JUGADOR (is-a USER)
    (slot nombre
        (type SYMBOL))
    (slot jugando
        (type SYMBOL)
        (allowed-values si no)
        (default ?NONE))
    (slot vidas
        (type INTEGER)
        (default 1)) ;; Por defecto es 1, porque en buscaminas con elegir una mina ya has perdido el juego
)

;; Clase para definir la posición de cada casillas en un array de estas, el tipo de la casilla, el propietario de la casilla
;; y la accion que conlleva ese tipo de casilla
(defclass CASILLA (is-a USER)
    (slot posicion
        (type INTEGER)
        (default ?NONE)
    )
    (slot tipo
        (type SYMBOL)
    )
    (slot propietario
        (type SYMBOL)
        (allowed-values robot niño ambos)
        (default ?NONE)
    )
    (slot accion
        (type SYMBOL)
        (allowed-values cambiar seguir dañar recibir)
        (default ?NONE)
    )
)
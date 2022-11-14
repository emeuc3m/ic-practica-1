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
    (slot paciencia
        (type INTEGER)
        (default 3)
    )
)

(defclass JUGADOR (is-a USER)
    (slot nombre
        (type SYMBOL)
        (allowed-values robot niño)
        (default ?NONE))
    (slot jugando
        (type SYMBOL)
        (allowed-values si no)
        (default ?NONE))
    (slot vidas
        (type INTEGER)
        (default 1))
)

(defclass CASILLA (is-a USER)
    (slot posicion
        (type INTEGER)
        (default ?NONE)
    )
    (slot tipo
        (type SYMBOL)
        (allowed-values barco agua bandera mina numero)
        (default ?NONE)
    )
    (slot propietario
        (type SYMBOL)
        (allowed-values robot niño ambos)
        (default ?NONE)
    )
    (slot accion
        (type SYMBOL)
        (allowed-values cambiar seguir daño)
        (default ?NONE)
    )
)
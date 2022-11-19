;; Regla inicial que cambia el hecho iniciado para poder empezar el juego
(defrule iniciar_juego
    (declare (salience 50)) ;; Se le da prioridad para que se ejecute antes que el resto de reglas, excepto la parada
    (not (iniciado si))
    =>
    (assert (iniciado si))
    (printout t "Iniciando juego" crlf)
)
;; Regla de parada, que comprueba que las vidas de un jugador sean 0 y que las vidas del otro jugador son mas de 0.
;; Para poder determinar que el jugador contrario ha ganado
(defrule parada
    (declare (salience 100))
    ?jugador_gana <- (object (is-a JUGADOR) (nombre ?g) (vidas ?v))
    ?jugador_pierde <- (object (is-a JUGADOR) (nombre ?p) (vidas ?vp))
    (test (> ?v 0))
    (test (< ?vp 1)) ;; Por la regla de intervención, el número de vidas puede ser menor que 0
    =>
    (printout t ?p " ha perdido y " ?g " ha ganado" crlf)
    (halt)
)
;; Regla de parada por la personalidad con la misma prioridad que la otra regla de parada. Se comprueba que el slot paciencia de la clase
;; personalidad es 0
(defrule parada-personalidad
    (declare (salience 100))
    ?per <- (object (is-a PERSONALIDAD) (paciencia 0))
    =>
    (printout t "La sesión se para porque el niño ha reaccionado negativamente demasiadas veces." crlf)
    (halt)
)
;; Regla especial para ejecutar cuando la paciencia llega a un número determinado
(defrule intervencion-personalidad
    (object (is-a JUGADOR) (nombre niño) (jugando si))
    ?robot <- (object (is-a JUGADOR) (nombre robot) (vidas ?v))
    ?per <- (object (is-a PERSONALIDAD) (reaccion ?r) (correccion ?c) (paciencia 3) (intervencion ?i))
    (not (intervencion si))
    =>
    (assert (intervencion si))
    (modify-instance ?robot (vidas (- ?v ?i)))
    (printout t "El robot decide intervenir quitándose " ?i " vidas " crlf)
    (printout t "Vidas del jugador robot: " (- ?v ?i) crlf)
)

;; Regla para ejecutar las personalidades y las correcciones en las diferentes pruebas que vamos a ejecutar
(defrule ejecutar_personalidad
    ?per <- (object (is-a PERSONALIDAD) (reaccion ?r) (correccion ?c) (paciencia ?pac))
    (object (is-a JUGADOR) (nombre niño) (jugando si)) ;; Se ejecuta solo en el turno del niño
    ?f <- (personalidad si) ;; Se guarda en una variable el hecho personalidad
    (not (casilla-seleccionada si)) ;; Se comprueba que el hecho casilla-seleccionada no es si
    =>
    (retract ?f) ;; Se elimina el hecho personalidad de la base de hechos
    (modify-instance ?per (paciencia (- ?pac 1))) ;; Se modifica la instancia de ?per definida en los antecedentes
    ;; de la regla, y se le resta 1 al slot paciencia, porque se ha ejecutado la personalidad
    (printout t "El niño " ?r crlf)
    (printout t "El robot " ?c crlf)
)

;; Regla para la seleccion de casillas, en la que se escogen una casilla y un jugador
(defrule seleccionar_casilla
    ?casilla <- (object (is-a CASILLA) (posicion ?pos) (tipo ?t) (propietario ?pro))
    ?jugador <- (object (is-a JUGADOR) (nombre ?n) (jugando si)) ;; Jugador que esta jugando
    (test (neq ?pro ?n)) ;; Test para comprobar que el propietario de la casilla no es el jugador
    (not (seleccionado ?pos)) ;; Comprobamos que la posicion de la casilla no esta incluida en la base de hechos
    ;; como seleccionado
    (not (casilla-seleccionada si)) ;; Comprobamos que el hecho casilla-seleccionada no es si en la base de hechos
    =>
    (assert (seleccionado ?pos)) ;; Inlcuimos el hecho seleccionado con la posicion de la casilla actual
    (assert (casilla-seleccionada si)) 
    (assert (personalidad si))
    (printout t ?n " ha seleccionado: " ?t  crlf)
)

;; Regla en la que se daña al oponente, para juegos en los que se juega con dos tableros
(defrule casilla_daño
    ?casilla <- (object (is-a CASILLA) (posicion ?pos) (accion dañar) (afecta ?a))
    ?jugador <- (object (is-a JUGADOR) (nombre ?n) (jugando ?a) (vidas ?v)) ;; Jugador que esta jugando
    ?fact <- (seleccionado ?pos)
    ?cs <- (casilla-seleccionada si)
    =>
    (modify-instance ?jugador (vidas (- ?v 1))) ;; Se resta una vida al jugador que afecta la casilla
    (unmake-instance ?casilla) ;; Se elimina la instancia para la casilla actual, porque ya se ha utilizado
    (retract ?fact)
    (retract ?cs)
    (printout t "Vidas del jugador " ?n ": " (- ?v 1) crlf)
)
;; Regla para cuando se selecciona una casilla cuya accion hace que el turno lo mantenga el mismo jugador
(defrule casilla_seguir
    ?casilla <- (object (is-a CASILLA) (posicion ?pos) (accion seguir))
    ?cs <- (casilla-seleccionada si)
    ?fact <- (seleccionado ?pos)
    =>
    (retract ?fact)
    (retract ?cs)
    (unmake-instance ?casilla)
)

;; Regla para cuando se selecciona una casilla cuya accion conlleva cambiar el turno de un jugador a otro
(defrule casilla_cambiar
    ?casilla <- (object (is-a CASILLA) (tipo ?t) (posicion ?pos) (accion cambiar))
    ?jugadorsi <- (object (is-a JUGADOR) (nombre ?n1) (jugando si)) ;; Jugador que juega
    ?jugadorno <- (object (is-a JUGADOR) (nombre ?n2) (jugando no)) ;; Jugador que no esta jugando
    ?fact <- (seleccionado ?pos)
    ?cs <- (casilla-seleccionada si)
    =>
    (modify-instance ?jugadorsi (jugando no)) ;; Se modifica la instancia para hacer que el jugador que estaba jugando
    ;; ahora no este jugando
    (modify-instance ?jugadorno (jugando si)) ;; Aqui se modifica la instancia para hacer justo lo contrario
    (unmake-instance ?casilla) ;; Se elimina la instancia para la casilla actual, porque ya se ha utilizado
    (retract ?fact)
    (retract ?cs)
    (printout t "Pasando turno de " ?n1 " a " ?n2  crlf)
)

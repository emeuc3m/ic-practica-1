(defrule iniciar_juego
    (declare (salience 50))
    (not (iniciado si))
    =>
    (set-strategy random)
    (dribble-on "./salidas/salida-prueba-X.txt")
    (assert (iniciado si))
    (printout t "Iniciando juego" crlf)
)

(defrule parada
    (declare (salience 100))
    ?jugador_gana <- (object (is-a JUGADOR) (nombre ?g) (vidas ?v))
    ?jugador_pierde <- (object (is-a JUGADOR) (nombre ?p) (vidas 0))
    (test (> ?v 0))
    =>
    (printout t ?p " ha perdido y " ?g " ha ganado" crlf)
    (dribble-off)
    (halt)
)

(defrule parada-personalidad
    (declare (salience 100))
    ?per <- (object (is-a PERSONALIDAD) (paciencia 0))
    =>
    (printout t "La sesión se para porque el niño ha reaccionado negativamente demasiadas veces." crlf)
    (dribble-off)
    (halt)
)

(defrule ejecutar_personalidad
    ?per <- (object (is-a PERSONALIDAD) (reaccion ?r) (correccion ?c) (paciencia ?pac))
    ?f <- (personalidad si)
    (not (casilla-seleccionada si))
    =>
    (retract ?f)
    (modify-instance ?per (paciencia (- ?pac 1)))
    (printout t "El niño " ?r crlf)
    (printout t "El robot " ?c crlf)

)

(defrule seleccionar_casilla
    ?casilla <- (object (is-a CASILLA) (posicion ?pos) (tipo ?t) (propietario ?pro))
    ?jugador <- (object (is-a JUGADOR) (nombre ?n) (jugando si))
    (test (neq ?pro ?n))
    (not (seleccionado ?pos))
    (not (casilla-seleccionada si))
    =>
    (assert (seleccionado ?pos))
    (assert (casilla-seleccionada si))
    (assert (personalidad si))
    (printout t ?n " ha seleccionado: " ?t  crlf)
)

(defrule casilla_barco
    ?jugadorsi <- (object (is-a JUGADOR) (nombre ?s) (jugando si))
    ?jugadorno <- (object (is-a JUGADOR) (nombre ?n) (jugando no) (vidas ?v))
    ?casilla <- (object (is-a CASILLA) (posicion ?pos) (tipo barco) (propietario ?n))
    ?fact <- (seleccionado ?pos)
    ?cs <- (casilla-seleccionada si)
    =>
    (modify-instance ?jugadorno (vidas (- ?v 1)))
    (unmake-instance ?casilla)
    (retract ?fact)
    (retract ?cs)
    (printout t ?s " ha tocado un barco de " ?n  crlf)
)

(defrule casilla_mina
    ?casilla <- (object (is-a CASILLA) (posicion ?pos) (tipo mina))
    ?jugador <- (object (is-a JUGADOR) (nombre ?n) (jugando si) (vidas ?v))
    ?fact <- (seleccionado ?pos)
    ?cs <- (casilla-seleccionada si)
    =>
    (modify-instance ?jugador (vidas (- ?v 1)))
    (unmake-instance ?casilla)
    (retract ?fact)
    (retract ?cs)
    (printout t ?n " ha pisado una mina."  crlf)
)

(defrule casilla_seguir
    ?casilla <- (object (is-a CASILLA) (posicion ?pos) (accion seguir))
    ?cs <- (casilla-seleccionada si)
    ?fact <- (seleccionado ?pos)
    =>
    (retract ?fact)
    (retract ?cs)
    (unmake-instance ?casilla)
)

(defrule casilla_cambiar
    ?casilla <- (object (is-a CASILLA) (tipo ?t) (posicion ?pos) (accion cambiar))
    ?jugadorsi <- (object (is-a JUGADOR) (nombre ?n1) (jugando si))
    ?jugadorno <- (object (is-a JUGADOR) (nombre ?n2) (jugando no))
    ?fact <- (seleccionado ?pos)
    ?cs <- (casilla-seleccionada si)
    =>
    (modify-instance ?jugadorsi (jugando no))
    (modify-instance ?jugadorno (jugando si))
    (unmake-instance ?casilla)
    (retract ?fact)
    (retract ?cs)
    (printout t "Pasando turno de " ?n1 " a " ?n2  crlf)
)

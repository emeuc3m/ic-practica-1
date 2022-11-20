# .bat para la ejecucion de las pruebas, muy similar al propuesto en aula global

(clear)
(load ontologia.clp)
(load reglas.clp)
(load prueba-8.clp)
(seed (integer (time))) 
(set-strategy random)
(watch focus)
(reset)
(dribble-on ./salidas/salida-prueba-8.txt)
(run)
(dribble-off)
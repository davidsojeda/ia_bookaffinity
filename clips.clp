; Tue Nov 24 19:23:09 CET 2015
; 
;+ (version "3.5")
;+ (build "Build 660")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot edad
		(type SYMBOL)
		(allowed-values infantil juvenil adulto)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot paginas
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot titulo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tipologia_sexual
		(type SYMBOL)
		(allowed-values masculino femenino indiferente)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot genero
		(type INSTANCE)
;+		(allowed-classes Genero)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot complejidad
		(type SYMBOL)
		(allowed-values facil mediana dificil)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Genero
	(is-a USER)
	(role concrete)
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Narrativa
	(is-a Genero)
	(role concrete))

(defclass Novela
	(is-a USER)
	(role concrete)
	(single-slot titulo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot edad
		(type SYMBOL)
		(allowed-values infantil juvenil adulto)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tipologia_sexual
		(type SYMBOL)
		(allowed-values masculino femenino indiferente)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot genero
		(type INSTANCE)
;+		(allowed-classes Genero)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot paginas
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot complejidad
		(type SYMBOL)
		(allowed-values facil mediana dificil)
;+		(cardinality 1 1)
		(create-accessor read-write)))


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------                                   INSTANCIAS                                                      ----------                                                              INSTANCIAS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------
(definstances instancies 
; Tue Nov 24 19:23:09 CET 2015
; 
;+ (version "3.5")
;+ (build "Build 660")

([KB_872675_Class10] of  Genero

	(nombre "Policiaca"))

([KB_872675_Class6] of  Narrativa

	(nombre "Contemporanea"))

([KB_872675_Class7] of  Genero

	(nombre "Fantasia"))

([KB_872675_Class8] of  Genero

	(nombre "Ciencia ficcion"))

([KB_872675_Class9] of  Narrativa

	(nombre "Clasica"))


([Ontologia_Class0] of  Novela

	(complejidad facil)
	(edad juvenil)
	(genero [KB_872675_Class7])
	(paginas 324)
	(tipologia_sexual indiferente)
	(titulo "El Hobbit"))

([Ontologia_Class1] of  Novela

	(complejidad mediana)
	(edad juvenil)
	(genero [KB_872675_Class7])
	(paginas 548)
	(tipologia_sexual indiferente)
	(titulo "El senor de los anillos. La comunidad del anillo."))


([Ontologia_Class12] of  Novela

	(complejidad mediana)
	(edad adulto)
	(genero [KB_872675_Class8])
	(paginas 224)
	(tipologia_sexual indiferente)
	(titulo "Ubik"))

([Ontologia_Class13] of  Novela

	(complejidad mediana)
	(edad adulto)
	(genero [KB_872675_Class8])
	(paginas 208)
	(tipologia_sexual indiferente)
	(titulo "El hombre en el castillo"))

([Ontologia_Class2] of  Novela

	(complejidad mediana)
	(edad juvenil)
	(genero [KB_872675_Class7])
	(paginas 462)
	(tipologia_sexual indiferente)
	(titulo "El senor de los anillos. Las dos torres."))

([Ontologia_Class3] of  Novela

	(complejidad mediana)
	(edad juvenil)
	(genero [KB_872675_Class7])
	(paginas 414)
	(tipologia_sexual indiferente)
	(titulo "El senor de los anillos. El retorno del rey."))

([Ontologia_Class4] of  Genero

	(nombre "Terror"))

([Ontologia_Class5] of  Novela

	(complejidad facil)
	(edad adulto)
	(genero [Ontologia_Class4])
	(paginas 656)
	(tipologia_sexual indiferente)
	(titulo "El resplandor"))

([prueba_Class11] of  Novela

	(complejidad mediana)
	(edad adulto)
	(genero [KB_872675_Class8])
	(paginas 272)
	(tipologia_sexual masculino)
	(titulo "Blade Runner"))




;;; CLOSE INSTANCIAS
)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------                                   TEMPLATES                                                       ----------                                                              TEMPLATES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

(deftemplate  persona   "sexe de la persona a qui va dirigida el llibre"
    (slot sexo  (type STRING))
    (slot edad  (type INTEGER))
)




;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------                                   MENSAJES                                                        ----------                                                              MENSAJES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;;; Mensajes a las clases 

(defmessage-handler Novela imprime primary ()
        (printout t ?self:titulo crlf) 
)

(defmessage-handler Genero imprime primary ()
        (printout t ?self:nombre crlf) 
)





;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------                                   FUNCIONES                                                       ----------                                                              EXTRAS
;;;-------------------------------------------------------------------------------------------------------------------------------------------------------

;;; Funcion para hacer una pregunta general 
(deffunction pregunta-general (?pregunta) 
        (format t "%s" ?pregunta) 
        (bind ?respuesta (read)) 
        ?respuesta
)

;;; Funcion para hacer una pregunta con respuesta en un rango dado
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi) 
        (format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi) 
        (bind ?respuesta (read)) 
        (while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do 
                (format t "Â¿%s? [%d, %d] " ?pregunta ?rangini ?rangfi) 
                (bind ?respuesta (read)) 
        ) 
        ?respuesta
)

;;; Funcion para hacer una pregunta con un conjunto definido de valores de repuesta    
(deffunction pregunta-lista (?pregunta $?valores_posibles) 
        (format t "%s" ?pregunta)  
        (bind ?resposta (readline))  
        (bind ?res (str-explode ?resposta))   
        ?res
)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------                                    MAIN                                                   ----------                                                              MAIN
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; Este es el modulo principal, en este se comprobara l existencia del estudiante 
;; en el conjunto de instancias del sistema

(defmodule MAIN (export ?ALL))

(defrule comienzo "regla inicial"
        (initial-fact)
        =>
        (printout t crlf)
        (printout t "--------------------------------------------------------------" crlf)
        (printout t "------------- BookAffinity - Recomendador de libros ----------" crlf)
        (printout t "--------------------------------------------------------------" crlf)
        (printout t crlf)
        (assert (nueva_recomendacion))             
)

(defrule recomendacion "regla para obtener una recomendacion sencilla"
    (nueva_recomendacion)
    =>
    (bind ?nombre (pregunta-general "Nombre del genero: (Narrativa, Fantasia, Ciencia ficcion...)"))
		(if (eq (str-compare ?nombre "Narrativa") 0) then (assert(Narrativa))
        else (while (not (any-instancep ((?genero Genero)) (eq (str-compare ?genero:nombre ?nombre) 0))) 
                do
                        (printout t "No existe el genero." crlf)
                        (bind ?nombre (pregunta-general "Nombre del genero: ")) 
        ))
    (assert (genero ?nombre))   
        (focus hacer_preguntas)     
)



;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------                           MODULO DE PREGUNTAS                                             ----------                                                      MODULO DE PREGUNTAS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este se le haran las preguntas al estudiantes 
;; para obtener la informacion de sus restricciones y/o preferencias 

(defmodule hacer_preguntas
    (import MAIN ?ALL)
    (export ?ALL)
)


;;(defrule recomendacion "Prueba sencilla de funcionamiento de defrule"
;;    (genero Fantasia)
;;    =>
;;        (printout t "Te recomiendo El Hobbit." crlf)
;;)

;;(defrule recomendacion2 "Prueba sencilla de funcionamiento de defrule"
;;    (genero "Ciencia ficcion")
;;    ?instNovela <- (object (is-a Novela) (genero ?g))
;;    (test (eq ( str-compare ?g:nombre Fantasia) 0))
;;    =>
;;        (printout t "Te recomendamos " (send ?instNovela imprime) crlf)
;;         ;;(printout t "Te recomendamos " (send ?instNovela imprime) " Genero " (send ?g imprime) crlf)
;;)

;;;(defrule recomendacionGeneroV1 "Prueba sencilla de funcionamiento de defrule"
;;;        (genero ?genero)
;;;    ?instNovela <- (object (is-a Novela) (genero ?g))
;;;;    (?g (nombre ?ng) ) 
;;;    (test (eq ( str-compare (send ?g get-nombre) ?genero) 0))
;;;    =>
;;;        (printout t "Te recomendamos " (send ?instNovela get-titulo) crlf)
;;;         ;;(printout t "Te recomendamos " (send ?instNovela imprime) " Genero " (send ?g imprime) crlf)
;;;)

(defrule recomendacion2 "Prueba sencilla de funcionamiento de defrule"
	(genero ?genero)
	;(not(narrativa)
    ?instNovela <- (object (is-a Genero))
    =>
        ;(printout t "Te recomendamos: " ;(instance-name ?instNovela)
		;(send ?instNovela imprime) crlf)
)


;(defrule recomendacionGeneroV2 "Prueba sencilla de funcionamiento de defrule"
;        (genero ?genero)
;        ?g <- (object (is-a Genero) (nombre ?genero))
;    ?instNovela <- (object (is-a Novela) (genero ?g))
;;    (?g (nombre ?ng) ) 
;;    (test (eq ( str-compare (send ?g get-nombre) ?genero) 0))
;    =>
;        (printout t "Te recomendamos " (instance-name ?instNovela) ":" (send ?instNovela get-titulo) crlf)
;         ;;(printout t "Te recomendamos " (send ?instNovela imprime) " Genero " (send ?g imprime) crlf)
;)

(defrule preguntaGeneroNarrativa "regla per obtenir el subgenere de Narrativa"
    (declare (salience 2))
	(Narrativa)
    =>
    (bind ?nombre (pregunta-general "Que genero de Narrativa: "))
        (while (not (any-instancep ((?genero Narrativa)) (eq (str-compare ?genero:nombre ?nombre) 0))) 
                do
                        (printout t "No existe el genero." crlf)
                        (bind ?nombre (pregunta-general "Que genero de Narrativa: ")) 
        )
    (assert (Narrativa ?nombre))   
        (focus hacer_preguntas)     
)

(defrule preguntaEdadSexo "regla para prguntar l'edat i el sexe"
    (genero ?genero)
    =>
    (bind ?edad (pregunta-general "Cuantos años tienes: "))
    (bind ?sexo (pregunta-general "Hombre, mujer o unisex: "))
    (assert (persona (edad ?edad)(sexo ?sexo)))   
        (focus hacer_preguntas)     
)

(defrule preguntaPaginas "regla para prguntar paginas"
    (persona (edad ?x&:(> ?x 15)))
    =>
    (bind ?largo (pregunta-general "Como de largos te gustan los libros? (corto, medio, largo): "))
    (assert (largaria ?largo))   
        (focus hacer_preguntas)     
)




;(bind ?trabaja (pregunta-general "¿Trabajas? (Manana(m)-Tarde(t)-Ninguno(n)(no trabaja)) " ))
;	(if (eq (str-compare ?trabaja "n") 0) then (assert(noTrabaja))  
;	else(if (or (eq (str-compare ?trabaja  "m")0) (eq (str-compare ?trabaja "t") 0))  then
;			(bind ?restriccion (make-instance restriccionHorarioT of RestriccionHorario))
;			(send ?restriccion put-trabaja ?trabaja)
;			(switch (lowcase ?trabaja)
;				(case "m" then (send ?restriccion put-prefHorario Tarde))




; Tue Nov 17 22:54:38 CET 2015
; 
;+ (version "3.5")
;+ (build "Build 660")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
        (is-a USER)
        (role abstract)
        (single-slot Titulo
                (type STRING)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (multislot Tipo
                (type INSTANCE)
;+              (allowed-classes Genero)
                (cardinality 1 ?VARIABLE)
                (create-accessor read-write)))

(defclass Genero
        (is-a USER)
        (role concrete))

(defclass Narrativa
        (is-a Genero)
        (role concrete))

(defclass Novela
        (is-a USER)
        (role concrete)
        (single-slot Titulo
                (type STRING)
;+              (cardinality 1 1)
                (create-accessor read-write))
        (multislot Tipo
                (type INSTANCE)
;+              (allowed-classes Genero)
                (cardinality 1 ?VARIABLE)
                (create-accessor read-write)))

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------                                   INSTANCIAS                                                      ----------                                                              INSTANCIAS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------
(definstances instancies 
; Tue Nov 17 22:54:38 CET 2015
; 
;+ (version "3.5")
;+ (build "Build 660")

([Classica] of  Narrativa
)

([Contemporanea] of  Narrativa
)

([Fantastica] of  Genero
)

([libro1] of  Novela

        (Tipo [Fantastica])
        (Titulo "Harry Potter y la Piedra Filosofal"))

([Ontologia_Class14] of  %3AINSTANCE-ANNOTATION
)

([Policiaca] of  Genero
)


;;; CLOSE INSTANCIAS
)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------                                   TEMPLATES                                                       ----------                                                              TEMPLATES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------



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
                (format t "¿%s? [%d, %d] " ?pregunta ?rangini ?rangfi) 
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

(defrule existe_alumno "regla para obtener una recomendacion sencilla"
    (nueva_recomendacion)
    =>
    (bind ?nombre (pregunta-general "Nombre del género: "))
        (while (not (any-instancep ((?alumno Estudiante)) (eq (str-compare ?alumno:nombre ?nombre) 0))) 
                do
                        (printout t "No existe el estudiante." crlf)
                        (bind ?nombre (pregunta-general "Nombre: ")) 
        ) 
    (assert (Genero ?nombre))   
        (focus hacer_preguntas)     
)



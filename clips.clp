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
    ;(slot edad  (type INTEGER))
)

(deftemplate  valoracionNovela   "novela tiene puntuacion"
    (slot novela  (type INSTANCE))
    (slot puntuacion  (type INTEGER))
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

(deffunction pregunta (?pregunta $?valores-permitidos)
	 (progn$
		(?var ?valores-permitidos)
		(lowcase ?var))
	 (format t "¿%s? (%s) " ?pregunta (implode$ ?valores-permitidos))
	 (bind ?respuesta (read))
	 (while (not (member (lowcase ?respuesta) ?valores-permitidos)) do
		(format t "¿%s? (%s) " ?pregunta (implode$ ?valores-permitidos))
		(bind ?respuesta (read))
	 )
	 ?respuesta
 )



(deffunction pregunta-sino (?pregunta)
	;(format t "%s" ?pregunta)
	(bind ?respuesta (pregunta ?pregunta si no s n))
	(if (or (eq (lowcase ?respuesta) si) (eq (lowcase ?respuesta) s))
		then TRUE
		else FALSE
	 )
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
            (printout t crlf)
            (printout t "Indiferente (i)" crlf)
            (printout t "Ciencia Ficcion (c)" crlf)
            (printout t "Terror (t)" crlf)
            (printout t "Narrativa (n)" crlf)
            (printout t "Policiaca (p)" crlf) 
            (printout t "Fantasia (f)" crlf)       
	(bind ?respuesta (pregunta "Que genero prefieres: " i c t n p f))
            
	(if (eq (lowcase ?respuesta) i)
            then (assert (genero CienciaFiccion))
                 (assert (genero Terror))
                 (assert (genero Policiaca))  
                 (assert (genero Fantasia))
                 (assert (genero Clasica))
                 (assert (genero Contemporanea))
        else (if (eq (lowcase ?respuesta) c)
            then (assert (genero CienciaFiccion))
        else (if (eq (lowcase ?respuesta) t)
            then (assert (genero Terror))
        else (if (eq (lowcase ?respuesta) n)
            then (assert (genero Narrativa))
        else (if (eq (lowcase ?respuesta) p)
            then (assert (genero Policiaca))  
        else (if (eq (lowcase ?respuesta) f)
            then (assert (genero Fantasia)))            
	)))))
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


(defrule preguntaGeneroNarrativa "regla per obtenir el subgenere de Narrativa"
    (declare (salience 2))
	(genero Narrativa)
    =>
    (bind ?nombre (pregunta-general "Que genero de Narrativa: "))
        (while (not (any-instancep ((?genero Narrativa)) (eq (str-compare ?genero:nombre ?nombre) 0))) 
                do
                        (printout t "No existe el genero." crlf)
                        (bind ?nombre (pregunta-general "Que genero de Narrativa: ")) 
        )
    (assert (Narrativa ?nombre))   
        ;(focus hacer_preguntas)     
)

(defrule preguntaSexo "regla para prguntar el sexe"
    ;(declare (salience 1))
    (not (sexo))
    =>
    (bind ?sexo (pregunta-general "Hombre, mujer o unisex: "))
    (assert (persona (sexo ?sexo)))   
    (assert (sexo))
        ;(focus hacer_preguntas)     
)

(defrule preguntaEdad "regla para prguntar l'edat"
    (not (edad))
    =>
    (bind ?edad (pregunta-general "Cuantos años tienes: 1-15 (i), 16-25 (j), 26+ (a) "))
	;(bind ?ed 0)
	(switch (lowcase ?edad)
			(case i then (assert(edad infantil)))
			(case j then then (assert(edad juvenil)))
			(case a then then (assert(edad adulto)))
	)
	(assert (edad))   
)


(defrule preguntaPaginas "regla para prguntar paginas"
	(edad ?edadVal)
        (not (paginas))
	;(test (eq(str-compare ?edad juvenil) 0))
    =>
    (if (eq(str-compare ?edadVal infantil) 0) 
			then (bind ?long (pregunta-general "Paginas: <100 (c), 100-200(m), >200(l) ")))
	(if (eq(str-compare ?edadVal juvenil) 0) 
			then (bind ?long (pregunta-general "Paginas: <150 (c), 150-250(m), >250(l) ")))
	(if (eq(str-compare ?edadVal adulto) 0)
			then (bind ?long (pregunta-general "Paginas: <180 (c), 180-300(m), >300(l) ")))
    (assert (largo ?long)) 
    (assert (paginas))
        ;(focus hacer_preguntas)     
)


(defrule preguntaSitios "regla para prguntar los sitios donde lee"
    (not(sitios))
    ;(genero ?genero)
    =>
	(bind ?comodidad 2) ;comodidad es como decir coste, + alto es peor
	;inicial es 2 (me sirve para las combinaciones), si lee en alguno de los 2 primeros sitios, coste mejora
    (bind ?aki (pregunta-sino "Lees en casa (en silencio, como en la cama), bibliotecas u otros sitios silenciosos?"))
	(if (neq ?aki FALSE) then (bind ?comodidad 0))
	
	(bind ?aki2 (pregunta-sino "Lees en un parque o sitios del estilo, con ruido pero poco?"))
	(if (neq ?aki2 FALSE) then (bind ?comodidad 1))
	
	(bind ?aki3 (pregunta-sino "Lees en las salas de espera?"))
	(if (neq ?aki3 FALSE) then (bind ?comodidad (+ ?comodidad 1))) 
	;si solo lee en estos sitios, malo, si al menos lee tmbn en trankilos, menos coste
	
	(bind ?aki4 (pregunta-sino "Lees con ruido (como la tele), o en transporte publico?"))
	(if (neq ?aki4 FALSE) then (bind ?comodidad (+ ?comodidad 2))) 
	;si solo lee en estos sitios, malo, si al menos lee tmbn en trankilos, menos coste (igual k el anterior)
	(assert(sitio ?comodidad))
        (assert(sitios))
        ;(focus inferir_datos)     
)


(defrule preguntaHoras "regla para prguntar las horas que lee"
    (not(horass))
    =>
    (bind ?horas (pregunta-numerica "Cuantas horas lees a la semana?" 0 70))
	(assert(horas ?horas))
        (assert(horass))
        (focus inferir_datos)     
)



;(bind ?trabaja (pregunta-general "¿Trabajas? (Manana(m)-Tarde(t)-Ninguno(n)(no trabaja)) " ))
;	(if (eq (str-compare ?trabaja "n") 0) then (assert(noTrabaja))  
;	else(if (or (eq (str-compare ?trabaja  "m")0) (eq (str-compare ?trabaja "t") 0))  then
;			(bind ?restriccion (make-instance restriccionHorarioT of RestriccionHorario))
;			(send ?restriccion put-trabaja ?trabaja)
;			(switch (lowcase ?trabaja)
;				(case "m" then (send ?restriccion put-prefHorario Tarde))





;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MODULO DE INFERENCIAS DE DATOS				---------- 				MODULO DE INFERENCIAS DE DATOS					 		
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este modulo se hace la abstraccion de los datos obtenidos del modulo de pregunatas

(defmodule inferir_datos
    (import MAIN ?ALL)
    (import hacer_preguntas ?ALL)
    (export ?ALL)
)

(defrule anadirComplejidad "en funcion de las respuestas de antes hacemos inferencia"
	(horas ?horas)
	(sitio ?comodidad)
	=>
    ;(bind ?horas (pregunta-general "Cuantos horas lees a la semana?"))
	(if (and (< ?horas 3) (> ?comodidad 1))
		then (assert(complejidad facil))
	else (if (or (and (< ?horas 3) (> ?horas 0)) (> ?comodidad 1))
		then (assert(complejidad mediana)))
	else (if (or (< ?horas 3) (> ?comodidad 1))
		then (assert(complejidad mediana)))
	)
        (focus recomendaciones)     
)


(defrule crearLibros "en funcion de las respuestas de antes hacemos inferencia"
        (declare (salience 2))
	?novela <- (object (is-a Novela)(titulo ?t) )
        =>
        ;(printout t ?t "----------" crlf)
        (assert (valoracionNovela (novela ?novela)(puntuacion 0)))
)


(defrule setValorLibro "en funcion de las respuestas de antes hacemos inferencia"
        (genero ?genero)
        ?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt))
	=>        
        (bind ?gen (send ?nov get-genero))
        (printout t ?gen "-------JOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO" crlf)
        (bind ?genNom (send ?gen get-nombre))
        ;(if (any-instancep ((?instGenero ?gen)) ) then
        ;    (bind ?genNom (send ?instGenero get-nombre))
        ;)
        ;(bind $?genNom (send (instance-address * ?gen) get-nombre))
        (if(eq (str-compare ?genero ?genNom) 0) then (bind ?punt (+ ?punt 1)))
        (modify ?vn (novela ?nov)(puntuacion ?punt))
            
)


(defrule next "en funcion de las respuestas de antes hacemos inferencia"
        (declare (salience -1))
        => (focus recomendaciones) 
)
    

;(defrule setValorLibro "en funcion de las respuestas de antes hacemos inferencia"
;	?novela <- (object (is-a Novela) (genero ?g) 
 ;       (genero ?genero)
;	=>
 ;       (bind ?nombreG (send ?g get-nombre))
  ;      (bind ?punt 0)
   ;     
    ;    (while (any-instancep ((?genero genero))) do
     ;       (if(eq (str-compare ?genero ?nombreG) 0) then (bind ?punt (+ ?punt 1))))
      ;  (assert (valoracionNovela (novela ?novela)(puntuacion ?punt))
       ; (focus recomendaciones)     
;)





;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE RECOMENDACIONES		---------- 				MODULO DE RECOMENDACIONES		
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este modulo se obtendran todas las solcuiones y se mostrara la solcuion
;; si hay mas de 6 solcuiones se mostraran las 6 con valor cuantitativo mas alto y 
;; si hay menos pues se mostraran todas  

(defmodule recomendaciones
	(import MAIN ?ALL) 
	(import hacer_preguntas ?ALL)
	(import inferir_datos ?ALL) 
	(export ?ALL)
)


(defrule obtenerRecomendaciones "regla para obtener todas las recomendaciones que ha conseguido el sistema"
	(genero ?genero)
	=> 
	(bind ?pos 1)
	;(bind $?recomendaciones (find-all-instances ((?inst Recomendacion)) TRUE))
	(printout t crlf)
	(printout t "Todas las posibles recomendaciones: " crlf)
	(printout t "----------------------------------- " crlf)
	;(progn$ (?i ?recomendaciones)
	;	(assert (solucionOrdenada (posicion ?pos) (recomendacion ?i)))	
	;	(bind ?grado (send ?i get-gradoRecomendacion))
	;	(printout t " "(instance-name ?i) " " ?grado crlf)
	;	(bind ?pos (+ ?pos 1))		
	;)  
	;(if(> ?pos 1) then (assert (PrimeraPos 1)) (assert (numeroR (- ?pos 1))) (assert(MaxGradoRec 0)))
	(printout t crlf)
	(printout t "------------------------  LIBROS RECOMENDADOS -----------------------" crlf)
	(printout t crlf)
)

(defrule noHayRecomendaciones  "regla para saber que no se obtuvieron recomendacioness"
	(declare (salience -1))
	;(genero ?genero)
	=>	
	(printout t "No tenemos recomendaciones para ti :[ " crlf)  
	(assert (FIN))
)









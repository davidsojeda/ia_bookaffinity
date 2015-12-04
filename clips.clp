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
        (single-slot autor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
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
		(create-accessor read-write))
        (single-slot bestseller
		(type SYMBOL)
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




([Ontologia_Class4] of  Genero

	(nombre "Terror"))

([CienciaFiccion] of  Genero

	(nombre "Ciencia ficcion"))

([Clasica] of  Narrativa

	(nombre "Clasica"))

([Contemporanea] of  Narrativa

	(nombre "Contemporanea"))

([Fantasia] of  Genero

	(nombre "Fantasia"))

([Policiaca] of  Genero

	(nombre "Policiaca"))

([Terror] of  Genero

	(nombre "Terror"))


([Novela_8445075748] of Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 476)
(tipologia_sexual indiferente)
(titulo "El Senor de los anillos")
(autor "J. R. R. Tolkien")
(bestseller FALSE)
)

([Novela_0061756776] of Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 608)
(tipologia_sexual indiferente)
(titulo "El senor de los anillos: El retorno del rey")
(autor "J. R. R. Tolkien")
(bestseller FALSE)
)

([Novela_1507624476] of Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 414)
(tipologia_sexual indiferente)
(titulo "El Senor de los Anillos")
(autor "J. R. R. Tolkien")
(bestseller FALSE)
)

([Novela_OCLC11706289] of Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 201)
(tipologia_sexual indiferente)
(titulo "El Senor de los anillos")
(autor "John Ronald Reuel Tolkien")
(bestseller FALSE)
)

([Novela_9505470673] of Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 547)
(tipologia_sexual indiferente)
(titulo "El Senor De Los Anillos : LA Comunidad Del Anillo / Lord of the Rings : The Fellowship of the Ring")
(autor "John Ronald Reuel Tolkien")
(bestseller FALSE)
)

([Novela_8445074857] of Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 360)
(tipologia_sexual indiferente)
(titulo "El Hobbit, o, Historia de una Ida y de una Vuelta")
(autor "J. R. R. Tolkien")
(bestseller FALSE)
)

([Novela_844507248X] of Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 158)
(tipologia_sexual indiferente)
(titulo "Egidio, el granjero de Ham / Hoja de Niggle / El herrero de Wootton Mayor")
(autor "J. R. R. Tolkien")
(bestseller FALSE)
)

([Novela_8445073737] of Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 408)
(tipologia_sexual indiferente)
(titulo "El Senor de Los Anillos, Ii")
(autor "J. R. R. Tolkien")
(bestseller FALSE)
)

([Novela_9788445001462] of Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 258)
(tipologia_sexual indiferente)
(titulo "La caida de Arturo")
(autor "J. R. R. Tolkien")
(bestseller FALSE)
)

([Novela_8445000659] of Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 309)
(tipologia_sexual indiferente)
(titulo "El hobbit")
(autor "John Ronald Reuel Tolkien")
(bestseller FALSE)
)

([Novela_8445072978] of Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 144)
(tipologia_sexual indiferente)
(titulo "Roverandom")
(autor "J. R. R. Tolkien")
(bestseller FALSE)
)

([Novela_8445071386] of Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 362)
(tipologia_sexual indiferente)
(titulo "El libro de los cuentos perdidos")
(autor "J. R. R. Tolkien")
(bestseller FALSE)
)

([Novela_8435002608] of Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 461)
(tipologia_sexual indiferente)
(titulo "El Senor de los Anillos. 2, Las dos torres")
(autor "J. R. R. Tolkien")
(bestseller FALSE)
)




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
	(slot sexo  (type SYMBOL) (default FALSE))
	(slot edad  (type SYMBOL) (default FALSE))
	(slot genero  (type SYMBOL) (default FALSE))
	(slot dificultad  (type SYMBOL) (default FALSE))
	(slot extension  (type SYMBOL) (default FALSE))
	(slot autor (type SYMBOL) (default FALSE))
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
        (printout t "1. Indiferente" crlf)
        (printout t "2. Ciencia Ficcion" crlf)
        (printout t "3. Terror" crlf)
        (printout t "4. Narrativa" crlf)
        (printout t "5. Policiaca" crlf) 
        (printout t "6. Fantasia" crlf)       
	(bind ?respuesta (pregunta-numerica "Que genero prefieres: " 1 6))
	(if (eq ?respuesta 1)
            then 
			(bind ?lista (create$ 
				"Ciencia ficcion" Terror Policiaca Fantasia Clasica Contemporanea))
			(assert (genero ?lista))
        else (if (eq ?respuesta 2)
            then (assert (genero "Ciencia ficcion"))
        else (if (eq ?respuesta 3)
            then (assert (genero Terror))
        else (if (eq ?respuesta 4)
            then (assert (genero Narrativa))
        else (if (eq ?respuesta 5)
            then (assert (genero Policiaca))  
        else (if (eq ?respuesta 6)
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
)

(defrule preguntaSexo "regla para prguntar el sexe"
	(declare (salience 1))
	(not (sexo))
    =>
	(printout t crlf)
	(printout t "1. Masculino" crlf)
	(printout t "2. Femenino" crlf)
	(printout t "3. Neutro / indiferente" crlf)
    (bind ?sexo (pregunta-numerica "Que estilo prefieres: " 1 3))
	(switch ?sexo
			(case 1 then (assert (persona (sexo "masculino"))))
			(case 2 then (assert (persona (sexo "femenino"))))
			(case 3 then (assert (persona (sexo "indiferente"))))
    )
    (assert (sexo))    
)


(defrule preguntaEdad "regla para preguntar l'edat"
    (not (edad))
    =>
    (bind ?edad (pregunta-numerica "Cuantos años tienes:" 0 120))
        (if (< ?edad 11) 
                then (assert(edad infantil))
        else (if (< ?edad 18) 
                then (assert(edad juvenil))
        else (assert(edad adulto))
        )) 
)



(defrule preguntaPaginas "regla para prguntar paginas"
	(edad ?edadVal)
	(not (paginas))
    =>
	(bind ?long (pregunta "Que extension prefieres: " corto medio largo))
    (assert (largo ?long)) 
    (assert (paginas))    
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
)


(defrule preguntaAutorSN "regla para prguntar si prefiere algun autor"
    (not(autorPrefSN))
    =>
    (bind ?autorSN (pregunta-sino "Tienes algun autor preferido?"))
	(if (neq ?autorSN FALSE) then (assert(autorS)))  
	(assert(autorPrefSN))    
)


(defrule preguntaAutor "regla para prguntar que autor prefiere"
    (not(autorPref))
	(autorS)
    =>
    (bind ?autorSN (pregunta-general "Que autor prefieres?"))
	(assert(autor ?autorSN))  
	(assert(autorPref))    
)


(defrule preguntaHoras "regla para prguntar las horas que lee"
	(declare (salience -10))
    (not(horass))
    =>
    (bind ?horas (pregunta-numerica "Cuantas horas lees a la semana?" 0 70))
	(assert(horas ?horas))
        (assert(horass))
        (focus inferir_datos)     
)







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
	(not (infComplejidad))
	(horas ?horas)
	(sitio ?comodidad)
	=>
	(if (and (< ?horas 3) (> ?comodidad 1))
		then (assert(complejidad facil))
	else (if (or (< ?horas 2) (> ?comodidad 2))
		then (assert(complejidad facil)))
	else (if (or (and (< ?horas 3) (> ?horas 1)) (> ?comodidad 1))
		then (assert(complejidad mediana)))
	else (if (and (> ?horas 5) (< ?comodidad 2))
		then (assert(complejidad dificil)))
	)  
	else (assert(complejidad mediana))
	(assert (infComplejidad))
)


(defrule decidirExtension "decidimos la extension. Los rangos se solapan para que simule algo analogico en vez de ser a saltos"
	(not (infExtens))
	(edad ?edadVal)
	(largo ?extension)
	=>
	(if (eq(str-compare ?edadVal infantil) 0) 
			then (if (eq ?extension corto) then
				(assert (extensionMax 15)) (assert (extensionMin 0))
			else (if (eq ?extension medio) then
				(assert (extensionMax 35)) (assert (extensionMin 12))
			else (if (eq ?extension largo) then
				(assert (extensionMax 100001)) (assert (extensionMin 30))
			) ) )
	
	else (if (eq(str-compare ?edadVal juvenil) 0) 
			then (if (eq ?extension corto) then
				(assert (extensionMax 110)) (assert (extensionMin 0))
			else (if (eq ?extension medio) then
				(assert (extensionMax 220)) (assert (extensionMin 100))
			else (if (eq ?extension largo) then
				(assert (extensionMax 100002)) (assert (extensionMin 200))
			) ) ) )
			
	else (if (eq(str-compare ?edadVal adulto) 0) 
			then (if (eq ?extension corto) then
				(assert (extensionMax 150)) (assert (extensionMin 0))
			else (if (eq ?extension medio) then
				(assert (extensionMax 280)) (assert (extensionMin 130))
			else (if (eq ?extension largo) then
				(assert (extensionMax 100003)) (assert (extensionMin 250))
			) ) ) )
	)
	(assert (infExtens))

)



(defrule crearLibros "creamos hechos de los libros para puntuarlos"
        (declare (salience 2))
	?novela <- (object (is-a Novela)(titulo ?t) )
        =>
        (assert (valoracionNovela (novela ?novela)(puntuacion 0)))
)


(defrule next "en funcion de las respuestas de antes hacemos inferencia"
        (declare (salience -1))
        => (focus puntuar_libros) 
)
    








;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MODULO DE PUNTUAR LIBROS				---------- 				MODULO DE PUNTUAR LIBROS					 		
;;;------------------------------------------------------------------------------------------------------------------------------------------------------


(defmodule puntuar_libros
    (import MAIN ?ALL)
    (import hacer_preguntas ?ALL)
	(import inferir_datos ?ALL)
    (export ?ALL)
)


(defrule setValorLibroGenero "en funcion de las respuestas de antes hacemos inferencia"
        (genero ?genero)
        ?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt)(genero FALSE))
	=>        
		(bind ?gen (nth$ 1 (send ?nov get-genero)))
		(bind $?genNom (send (instance-address * ?gen) get-nombre))
        (if(eq (str-compare ?genero ?genNom) 0) then (bind ?punt (+ ?punt 1)))
        (modify ?vn (novela ?nov)(puntuacion ?punt)(genero TRUE))
            
)


;en el caso de que hayamos dicho genero indiferente, tendremos lista de generos
(defrule setValorLibroGenero2 "en funcion de las respuestas de antes hacemos inferencia"
        (genero $?genero)
        ?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt)(genero FALSE))
	=>        
		(bind ?gen (nth$ 1 (send ?nov get-genero)))
		(bind $?genNom (send (instance-address * ?gen) get-nombre))
        (if(eq (str-compare (nth$ 1 ?genero) ?genNom) 0) then (bind ?punt (+ ?punt 1)))
        (modify ?vn (novela ?nov)(puntuacion ?punt)(genero TRUE))     
)


(defrule setValorLibroEdad "en funcion de las respuestas de antes hacemos inferencia"
        (edad ?edad)
        ?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt)(edad FALSE))
	=>        
		(bind ?age (send ?nov get-edad))
        (if(eq (str-compare ?edad ?age) 0) then (bind ?punt (+ ?punt 1)))
        (modify ?vn (novela ?nov)(puntuacion ?punt)(edad TRUE))       
)



(defrule setValorLibroComplejidad "en funcion de las respuestas de antes hacemos inferencia"
        (complejidad ?dificil)
        ?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt)(dificultad FALSE))
	=>        
		(bind ?dif (send ?nov get-complejidad))
        (if(eq (str-compare ?dificil ?dif) 0) then (bind ?punt (+ ?punt 1)))
        (modify ?vn (novela ?nov)(puntuacion ?punt)(dificultad TRUE))       
)


(defrule setValorLibroSexo "en funcion de las respuestas de antes hacemos inferencia"
        (persona (sexo ?sexo))
        ?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt)(sexo FALSE))
	=>        
		(bind ?sex (send ?nov get-tipologia_sexual))
        (if(eq (str-compare ?sexo ?sex) 0) then (bind ?punt (+ ?punt 1)))
        (modify ?vn (novela ?nov)(puntuacion ?punt)(sexo TRUE))       
)


(defrule setValorLibroExtension "en funcion de las respuestas de antes hacemos inferencia"
        (extensionMax ?pagsMax)
		(extensionMin ?pagsMin)
        ?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt)(extension FALSE))
	=>        
		(bind ?paginas (send ?nov get-paginas))
		(if (and (> ?pagsMax ?paginas) (< ?pagsMin ?paginas)) then (bind ?punt (+ ?punt 1)))
        (modify ?vn (novela ?nov)(puntuacion ?punt)(extension TRUE))       
)


(defrule setValorLibroAutor "en funcion de las respuestas de antes hacemos inferencia"
        (autor ?autor)
        ?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt)(autor FALSE))
	=>        
		(bind ?aut (send ?nov get-autor))
        (if(eq ?autor ?aut) then (bind ?punt (+ ?punt 1)))
        (modify ?vn (novela ?nov)(puntuacion ?punt)(autor TRUE))       
)


(defrule next2 "en funcion de las respuestas de antes hacemos inferencia"
        (declare (salience -1))
        => (focus recomendaciones) 
)











;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE RECOMENDACIONES		---------- 				MODULO DE RECOMENDACIONES		
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este modulo se obtendran todas las solcuiones y se mostrara la solcuion
;; si hay mas de 3 solcuiones se mostraran las 3 con valor cuantitativo mas alto y 
;; si hay menos pues se mostraran todas  

(defmodule recomendaciones
	(import MAIN ?ALL) 
	(import hacer_preguntas ?ALL)
	(import inferir_datos ?ALL) 
	(import puntuar_libros ?ALL)
	(export ?ALL)
)

(defrule calcula-max "devuelve el siguiente libro con mas puntuacion"
	?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt))
	(test (> ?punt 0))
	 (forall (valoracionNovela (novela ?nov2&~?nov)(puntuacion ?punt2)) (test (>= ?punt ?punt2)))
	 ?ps <- (pos ?x)
	 (test (< ?x 3))
	 =>
	 (printout t "Titulo: " (send ?nov get-titulo) crlf)
	 (bind ?x (+ ?x 1))
	 (retract ?ps) ;nos cargamos el hecho de posicion y lo volvemos a meter porque funcionaba mal el modify
	 (assert (pos ?x))
	 (printout t ?punt crlf)
	 (retract ?vn)
)

(defrule obtenerRecomendaciones "regla para obtener todas las recomendaciones que ha conseguido el sistema"
	(declare (salience 10))
	(not (pos ?))
	=> 
	(assert (pos 0))
	(printout t crlf)
	(printout t "Todas las posibles recomendaciones: " crlf)
	(printout t "----------------------------------- " crlf)
	(printout t crlf)
	(printout t "------------------------  LIBROS RECOMENDADOS -----------------------" crlf)
	(printout t crlf)
) 


;aqui recomendamos bestSellers
(defrule noHayRecomendaciones  "regla para saber que no se obtuvieron recomendacioness"
	(declare (salience -1))
	(pos ?x)
	(test (= ?x 0))
	=>	
	(printout t "No tenemos recomendaciones para ti :[ " crlf)  
	(assert (FIN))
)









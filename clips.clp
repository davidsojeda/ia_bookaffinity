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

([CienciaFiccion] of  Genero

        (nombre "Ciencia ficcion"))

([Clasica] of  Narrativa

        (nombre "Clasica"))

([Contemporanea] of  Narrativa

        (nombre "Contemporanea"))

([Fantasia] of  Genero

        (nombre "Fantasia"))

([Romantica] of  Genero

        (nombre "Romantica"))

([Terror] of  Genero

        (nombre "Terror"))

([Novela_1512378666] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 148)
(tipologia_sexual indiferente)
(titulo "Harry Potter")
(autor "J.K. Rowling")
(bestseller FALSE)
)

([Novela_8498381959] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 118)
(tipologia_sexual indiferente)
(titulo "Los cuentos de Beedle el Bardo")
(autor "J.K. Rowling")
(bestseller FALSE)
)

([Novela_8498384931] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 601)
(tipologia_sexual indiferente)
(titulo "Una vacante imprevista")
(autor "J.K. Rowling")
(bestseller FALSE)
)

([Novela_8498381452] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 638)
(tipologia_sexual indiferente)
(titulo "Harry Potter and the deathly hallows")
(autor "J.K. Rowling")
(bestseller FALSE)
)

([Novela_8435015955] of  Novela
(complejidad mediana)
(edad adulto)
(genero [CienciaFiccion])
(paginas 262)
(tipologia_sexual indiferente)
(titulo "Blade runner")
(autor "Philip K. Dick")
(bestseller FALSE)
)

([Novela_1517244277] of  Novela
(complejidad mediana)
(edad adulto)
(genero [CienciaFiccion])
(paginas 252)
(tipologia_sexual indiferente)
(titulo "¿Suenan Los Androides con Ovejas Electricas?")
(autor "Philip K. Dick")
(bestseller FALSE)
)

([Novela_8467907916] of  Novela
(complejidad mediana)
(edad adulto)
(genero [CienciaFiccion])
(paginas 360)
(tipologia_sexual indiferente)
(titulo "¿Suenan los androides con ovejas electricas? 2")
(autor "Philip K. Dick")
(bestseller FALSE)
)

([Novela_9788445001356] of  Novela
(complejidad mediana)
(edad adulto)
(genero [CienciaFiccion])
(paginas 256)
(tipologia_sexual indiferente)
(titulo "La invasion divina")
(autor "Philip K. Dick")
(bestseller FALSE)
)

([Novela_8445076353] of  Novela
(complejidad mediana)
(edad adulto)
(genero [CienciaFiccion])
(paginas 240)
(tipologia_sexual indiferente)
(titulo "Los tres estigmas de Palmer Eldritch")
(autor "Philip K. Dick")
(bestseller FALSE)
)

([Novela_844507699X] of  Novela
(complejidad mediana)
(edad adulto)
(genero [CienciaFiccion])
(paginas 528)
(tipologia_sexual indiferente)
(titulo "Cuentos completos / Beyond Lies the Wub")
(autor "Philip K. Dick")
(bestseller FALSE)
)

([Novela_9505815824] of  Novela
(complejidad mediana)
(edad adulto)
(genero [CienciaFiccion])
(paginas 292)
(tipologia_sexual indiferente)
(titulo "La Mente Alien")
(autor "Philip K. Dick")
(bestseller FALSE)
)

([Novela_8445076329] of  Novela
(complejidad mediana)
(edad adulto)
(genero [CienciaFiccion])
(paginas 224)
(tipologia_sexual indiferente)
(titulo "Simulacra")
(autor "Philip K. Dick")
(bestseller FALSE)
)

([Novela_8445076337] of  Novela
(complejidad mediana)
(edad adulto)
(genero [CienciaFiccion])
(paginas 240)
(tipologia_sexual indiferente)
(titulo "Nuestros amigos de Frolik 8")
(autor "Philip K. Dick")
(bestseller FALSE)
)

([Novela_1517250226] of  Novela
(complejidad mediana)
(edad adulto)
(genero [CienciaFiccion])
(paginas 226)
(tipologia_sexual indiferente)
(titulo "Planetas Morales")
(autor "Philip K. Dick")
(bestseller FALSE)
)

([Novela_1517244080] of  Novela
(complejidad mediana)
(edad adulto)
(genero [CienciaFiccion])
(paginas 350)
(tipologia_sexual indiferente)
(titulo "La Penultima Verdad")
(autor "Philip K. Dick")
(bestseller FALSE)
)

([Novela_8445077740] of  Novela
(complejidad mediana)
(edad adulto)
(genero [CienciaFiccion])
(paginas 304)
(tipologia_sexual indiferente)
(titulo "El hombre en el castillo")
(autor "Philip K. Dick")
(bestseller FALSE)
)

([Novela_8445075748] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 476)
(tipologia_sexual indiferente)
(titulo "El Senor de los anillos")
(autor "J.R.R. Tolkien")
(bestseller FALSE)
)

([Novela_8445073737] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 408)
(tipologia_sexual indiferente)
(titulo "El Senor de Los Anillos, Ii")
(autor "J.R.R. Tolkien")
(bestseller FALSE)
)

([Novela_0061756776] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 608)
(tipologia_sexual indiferente)
(titulo "El senor de los anillos: El retorno del rey")
(autor "J.R.R. Tolkien")
(bestseller FALSE)
)

([Novela_1507624476] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 414)
(tipologia_sexual indiferente)
(titulo "El Senor de los Anillos")
(autor "J.R.R. Tolkien")
(bestseller FALSE)
)

([Novela_OCLC11706289] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 201)
(tipologia_sexual indiferente)
(titulo "El Senor de los anillos")
(autor "J.R.R. Tolkien")
(bestseller FALSE)
)

([Novela_844507380X] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 288)
(tipologia_sexual indiferente)
(titulo "El Hobbit")
(autor "J.R.R. Tolkien")
(bestseller FALSE)
)

([Novela_9505470673] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 547)
(tipologia_sexual indiferente)
(titulo "El Senor De Los Anillos : LA Comunidad Del Anillo / Lord of the Rings : The Fellowship of the Ring")
(autor "J.R.R. Tolkien")
(bestseller FALSE)
)

([Novela_844507248X] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 158)
(tipologia_sexual indiferente)
(titulo "Egidio, el granjero de Ham / Hoja de Niggle / El herrero de Wootton Mayor")
(autor "J.R.R. Tolkien")
(bestseller FALSE)
)

([Novela_8445074857] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 360)
(tipologia_sexual indiferente)
(titulo "El Hobbit, o, Historia de una Ida y de una Vuelta")
(autor "J.R.R. Tolkien")
(bestseller FALSE)
)

([Novela_9788445001462] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 258)
(tipologia_sexual indiferente)
(titulo "La caida de Arturo")
(autor "J.R.R. Tolkien")
(bestseller FALSE)
)

([Novela_8445000659] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 309)
(tipologia_sexual indiferente)
(titulo "El hobbit")
(autor "J.R.R. Tolkien")
(bestseller FALSE)
)

([Novela_8445071386] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 362)
(tipologia_sexual indiferente)
(titulo "El libro de los cuentos perdidos")
(autor "J.R.R. Tolkien")
(bestseller FALSE)
)

([Novela_8445072978] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Fantasia])
(paginas 144)
(tipologia_sexual indiferente)
(titulo "Roverandom")
(autor "J.R.R. Tolkien")
(bestseller FALSE)
)

([Novela_9788420499079] of  Novela
(complejidad facil)
(edad adulto)
(genero [Romantica])
(paginas 624)
(tipologia_sexual femenino)
(titulo "Eclipse (Saga Crepusculo 3)")
(autor "Stephenie Meyer")
(bestseller TRUE)
)

([Novela_9788420499055] of  Novela
(complejidad facil)
(edad adulto)
(genero [Romantica])
(paginas 832)
(tipologia_sexual femenino)
(titulo "Amanecer (Saga Crepusculo 4)")
(autor "Stephenie Meyer")
(bestseller TRUE)
)

([Novela_9788420499086] of  Novela
(complejidad facil)
(edad adulto)
(genero [Romantica])
(paginas 574)
(tipologia_sexual femenino)
(titulo "Luna nueva (Saga Crepusculo 2)")
(autor "Stephenie Meyer")
(bestseller TRUE)
)

([Novela_9788420499062] of  Novela
(complejidad facil)
(edad adulto)
(genero [Romantica])
(paginas 512)
(tipologia_sexual femenino)
(titulo "Crepusculo (Saga Crepusculo 1)")
(autor "Stephenie Meyer")
(bestseller TRUE)
)

([Novela_8420405698] of  Novela
(complejidad facil)
(edad adulto)
(genero [Romantica])
(paginas 312)
(tipologia_sexual femenino)
(titulo "Noches de baile en el Infierno")
(autor "Stephenie Meyer")
(bestseller TRUE)
)

([Novela_6071104823] of  Novela
(complejidad facil)
(edad adulto)
(genero [Romantica])
(paginas 224)
(tipologia_sexual femenino)
(titulo "Crepusculo")
(autor "Stephenie Meyer")
(bestseller TRUE)
)

([Novela_8420409855] of  Novela
(complejidad facil)
(edad adulto)
(genero [Romantica])
(paginas 232)
(tipologia_sexual femenino)
(titulo "Crepusculo II. La novela grafica")
(autor "Stephenie Meyer")
(bestseller TRUE)
)

([Novela_8420406139] of  Novela
(complejidad facil)
(edad adulto)
(genero [Romantica])
(paginas 224)
(tipologia_sexual femenino)
(titulo "Crepusculo : la novela grafica")
(autor "Stephenie Meyer")
(bestseller TRUE)
)

([Novela_0882723243] of  Novela
(complejidad facil)
(edad adulto)
(genero [Romantica])
(paginas 762)
(tipologia_sexual femenino)
(titulo "Huesped")
(autor "Stephenie Meyer")
(bestseller TRUE)
)

([Novela_8420471933] of  Novela
(complejidad facil)
(edad adulto)
(genero [Romantica])
(paginas 512)
(tipologia_sexual femenino)
(titulo "Crepusculo (Edicion de regalo en cartone)")
(autor "Stephenie Meyer")
(bestseller TRUE)
)

([Novela_8483651807] of  Novela
(complejidad facil)
(edad adulto)
(genero [Romantica])
(paginas 760)
(tipologia_sexual femenino)
(titulo "La huesped (The host) (Edicion especial en rustica)")
(autor "Stephenie Meyer")
(bestseller TRUE)
)

([Novela_1514231638] of  Novela
(complejidad facil)
(edad adulto)
(genero [Romantica])
(paginas 244)
(tipologia_sexual femenino)
(titulo "Luna Nueva: Stephenie Meyer (Spanish Edition)")
(autor "Stephenie Meyer")
(bestseller TRUE)
)

([Novela_8420472360] of  Novela
(complejidad facil)
(edad adulto)
(genero [Romantica])
(paginas 574)
(tipologia_sexual femenino)
(titulo "Luna nueva (Edicion de regalo en cartone)")
(autor "Stephenie Meyer")
(bestseller TRUE)
)

([Novela_8466313494] of  Novela
(complejidad facil)
(edad adulto)
(genero [Romantica])
(paginas 490)
(tipologia_sexual femenino)
(titulo "Crepuscle")
(autor "Stephenie Meyer")
(bestseller TRUE)
)

([Novela_9788441422407] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 272)
(tipologia_sexual indiferente)
(titulo "Narraciones extraordinarias")
(autor "Edgar Allan Poe")
(bestseller FALSE)
)

([Novela_9580467447] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 110)
(tipologia_sexual indiferente)
(titulo "El gato negro y otros cuentos")
(autor "Edgar Allan Poe")
(bestseller FALSE)
)

([Novela_8446022117] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 504)
(tipologia_sexual indiferente)
(titulo "Historias extraordinarias")
(autor "Edgar Allan Poe")
(bestseller FALSE)
)

([Novela_9788026810049] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 1230)
(tipologia_sexual indiferente)
(titulo "Coleccion integral de Edgar Allan Poe")
(autor "Edgar Allan Poe")
(bestseller FALSE)
)

([Novela_9788026802129] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 350)
(tipologia_sexual indiferente)
(titulo "Los mejores cuentos de Edgar Allan Poe (con indice activo)")
(autor "Edgar Allan Poe")
(bestseller FALSE)
)

([Novela_8478448543] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 256)
(tipologia_sexual indiferente)
(titulo "Cuentos de terror y misterio")
(autor "Edgar Allan Poe")
(bestseller FALSE)
)

([Novela_9783734787461] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 17)
(tipologia_sexual indiferente)
(titulo "Manuscrito hallado en una botella")
(autor "Edgar Allan Poe")
(bestseller FALSE)
)

([Novela_9681903552] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 175)
(tipologia_sexual indiferente)
(titulo "Cuentos Del Terror / Tales of Terror")
(autor "Edgar Allan Poe")
(bestseller FALSE)
)

([Novela_9501112829] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 71)
(tipologia_sexual indiferente)
(titulo "Clasicos de terror/ Horror Classics")
(autor "Edgar Allan Poe")
(bestseller FALSE)
)

([Novela_8420643343] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 736)
(tipologia_sexual indiferente)
(titulo "Los mitos de Cthulhu")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_8441410666] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 256)
(tipologia_sexual indiferente)
(titulo "La sombra sobre Onnsmouth")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_8415530188] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 128)
(tipologia_sexual indiferente)
(titulo "En las montanas de la locura")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_8498851394] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 112)
(tipologia_sexual indiferente)
(titulo "La guarida del horror")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_8494033638] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 96)
(tipologia_sexual indiferente)
(titulo "El horror de Dunwich")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_849283739X] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 128)
(tipologia_sexual indiferente)
(titulo "La llamada de Cthulhu")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_8420691917] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 307)
(tipologia_sexual indiferente)
(titulo "Dagon y otros cuentos macabros")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_987901717X] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 190)
(tipologia_sexual indiferente)
(titulo "En las montanas de la locura")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_8495994135] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 157)
(tipologia_sexual indiferente)
(titulo "El color surgido del espacio; dagon; la sombra sobre innsmouth")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_OCLC3354339] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 207)
(tipologia_sexual indiferente)
(titulo "Viajes al otro mundo")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_8441413789] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 96)
(tipologia_sexual indiferente)
(titulo "La Casa Maldita")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_9509546844] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 115)
(tipologia_sexual indiferente)
(titulo "El horror sobrenatural en la literatura")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_9788441422841] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 328)
(tipologia_sexual indiferente)
(titulo "La llamada de Cthulhu y otros cuentos de terror")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_8441414548] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 96)
(tipologia_sexual indiferente)
(titulo "Polaris")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_8476409869] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 368)
(tipologia_sexual indiferente)
(titulo "El intruso")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_8476407548] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 552)
(tipologia_sexual indiferente)
(titulo "Los que acechan en el abismo")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_8441414998] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 96)
(tipologia_sexual indiferente)
(titulo "La busqueda Onirica de la Desconocida Kadath")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_9789635238651] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 23)
(tipologia_sexual indiferente)
(titulo "La Llamada de Cthulhu")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_8441408955] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 264)
(tipologia_sexual indiferente)
(titulo "El que susurra en la oscuridad")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_8476404778] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 176)
(tipologia_sexual indiferente)
(titulo "Noche del oceano y otros escritos ineditos")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)

([Novela_8441410216] of  Novela
(complejidad mediana)
(edad adulto)
(genero [Terror])
(paginas 200)
(tipologia_sexual indiferente)
(titulo "El que acecha en la oscuridad")
(autor "H.P. Lovecraft")
(bestseller FALSE)
)






;;; CLOSE INSTANCIAS
)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------                                   TEMPLATES                                                       ----------                                                              TEMPLATES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;ibamos a usarlo para guardar sexo y edad juntos pero luego nos era mas problema que mejora, pero lo dejamos con persona sexo al menos
(deftemplate  persona   "sexe de la persona a qui va dirigida el llibre"
    (slot sexo  (type STRING))
    ;(slot edad  (type INTEGER))
)

;aqui tenemos este template que sirve para crear tantos hechos como instancias de novela
;y asi podemos puntuarlas en funcion de las respuestas y la inferencia
(deftemplate  valoracionNovela   "novela tiene puntuacion"
    (slot novela  (type INSTANCE))
    (slot puntuacion  (type INTEGER))
	(slot sexo  (type SYMBOL) (default FALSE))
	(slot edad  (type SYMBOL) (default FALSE))
	(slot genero  (type SYMBOL) (default FALSE))
	(slot dificultad  (type SYMBOL) (default FALSE))
	(slot extension  (type SYMBOL) (default FALSE))
	(slot autor (type SYMBOL) (default FALSE))
	(slot bestseller (type SYMBOL) (default FALSE));;bool para ver si hemos valorado el libro según si es bestseller o no
        (slot esBestseller (type SYMBOL) (default FALSE));;shortcut para saber si es bestseller
)




;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------                                   MENSAJES                                                        ----------                                                              MENSAJES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;;; Mensajes a las clases 

;por si queremos imprimir el titulo de la novela o nombre del genero
(defmessage-handler Novela imprime primary ()
        (printout t ?self:titulo crlf) 
)

(defmessage-handler Genero imprime primary ()
        (printout t ?self:nombre crlf) 
)





;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------                                   FUNCIONES                                                       ----------                                                              EXTRAS
;;;-------------------------------------------------------------------------------------------------------------------------------------------------------

;;; Funcion para hacer una pregunta general que admite cualquier tipo de respuesta
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

;funcion para preguntar con unos valores predefinidos en los que la respuesta ha de ser uno de ellos
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



 ;Funcion para preguntar rapidamente si o no
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

;; Este es el modulo principal, en este se hara la primera pregunta a partir de la cual seguira todo el proceso

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

(defrule recomendacion "regla para preguntar el genero preferido o si no te importa"
    (nueva_recomendacion)
    =>
        (printout t crlf)
        (printout t "1. Indiferente" crlf)
        (printout t "2. Ciencia Ficcion" crlf)
        (printout t "3. Terror" crlf)
        (printout t "4. Narrativa" crlf)
        (printout t "5. Policiaca" crlf) 
        (printout t "6. Fantasia" crlf) 
        (printout t "7. Romantica" crlf)        
	(bind ?respuesta (pregunta-numerica "Que genero prefieres: " 1 7))
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
            then (assert (genero Fantasia))
        else (if (eq ?respuesta 7)
            then (assert (genero Romantica))
        )))))))
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


;en el caso de que prefieras narrativa, escoge subgenero
(defrule preguntaGeneroNarrativa "regla per obtenir el subgenere de Narrativa"
    (declare (salience 2))
	(genero Narrativa)
    =>
    (bind ?nombre (pregunta-general "Que genero de Narrativa (Clasica o Contemporanea): "))
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


;esta pregunta es relativa porque despues haremos inferencia en funcion de esta respuesta y la edad
(defrule preguntaPaginas "regla para prguntar paginas"
	(edad ?edadVal)
	(not (paginas))
    =>
	(bind ?long (pregunta "Que extension prefieres: " corto medio largo))
    (assert (largo ?long)) 
    (assert (paginas))    
)



;aqui tenemos un algoritmo para decir con que comodidad suele leer para decidir la complejidad del libro
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


;preguntar si tiene algun autor que prefiera
(defrule preguntaAutorSN "regla para prguntar si prefiere algun autor"
    (not(autorPrefSN))
    =>
    (bind ?autorSN (pregunta-sino "Tienes algun autor preferido?"))
	(if (neq ?autorSN FALSE) then (assert(autorS)))  
	(assert(autorPrefSN))    
)


;aqui, si ha dicho que si, le preguntamos que autor
(defrule preguntaAutor "regla para prguntar que autor prefiere"
    (not(autorPref))
	(autorS)
    =>
    (bind ?autorSN (pregunta-general "Que autor prefieres?"))
	(assert(autor ?autorSN))  
	(assert(autorPref))    
)

;preguntar si tiene algun autor que prefiera
(defrule preguntaBestseller "regla para preguntar si prefiere bestsellers"
    (not(bestsellers))
    =>
    (bind ?leeBestsellers (pregunta-sino "¿Sueles leer bestsellers?"))
        (assert(bestsellers ?leeBestsellers))    
)


;esto nos ayudara a decidir la complejidad del libro
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

(defrule anadirComplejidad "en funcion de las respuestas de las horas que lee y la comodidad decidimos la complejidad"
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
	?novela <- (object (is-a Novela)(esBestseller ?best) )
        =>
        (assert (valoracionNovela (novela ?novela)(puntuacion 0)(esBestseller ?best)))
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


(defrule setValorLibroGenero "en funcion de las respuestas puntuamos"
        (genero ?genero)
        ?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt)(genero FALSE))
	=>        
		(bind ?gen (nth$ 1 (send ?nov get-genero)))
		(bind $?genNom (send (instance-address * ?gen) get-nombre))
        (if(eq (str-compare ?genero ?genNom) 0) then (bind ?punt (+ ?punt 5)))
        (modify ?vn (novela ?nov)(puntuacion ?punt)(genero TRUE))
)


;en el caso de que hayamos dicho genero indiferente, tendremos lista de generos
(defrule setValorLibroGenero2 "en funcion de las respuestas puntuamos"
        (genero $?genero)
        ?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt)(genero FALSE))
	=>        
		(bind ?gen (nth$ 1 (send ?nov get-genero)))
		(bind $?genNom (send (instance-address * ?gen) get-nombre))
        (if(eq (str-compare (nth$ 1 ?genero) ?genNom) 0) then (bind ?punt (+ ?punt 1))) ;aqui solo sumamos 1 porque al ser genero indiferente, no le damos tanta importancia
        (modify ?vn (novela ?nov)(puntuacion ?punt)(genero TRUE))     
)


(defrule setValorLibroEdad "en funcion de las respuestas puntuamos"
        (edad ?edad)
        ?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt)(edad FALSE))
	=>        
		(bind ?age (send ?nov get-edad))
        (if(eq (str-compare ?edad ?age) 0) then (bind ?punt (+ ?punt 2))
		else (bind ?punt (- ?punt 1)))
        (modify ?vn (novela ?nov)(puntuacion ?punt)(edad TRUE))       
)



(defrule setValorLibroComplejidad "en funcion de las respuestas puntuamos"
        (complejidad ?dificil)
        ?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt)(dificultad FALSE))
	=>        
		(bind ?dif (send ?nov get-complejidad))
        (if(eq (str-compare ?dificil ?dif) 0) then (bind ?punt (+ ?punt 1)))
        (modify ?vn (novela ?nov)(puntuacion ?punt)(dificultad TRUE))       
)


(defrule setValorLibroSexo "en funcion de las respuestas puntuamos"
        (persona (sexo ?sexo))
        ?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt)(sexo FALSE))
	=>        
		(bind ?sex (send ?nov get-tipologia_sexual))
        (if(eq (str-compare ?sexo ?sex) 0) then (bind ?punt (+ ?punt 2)))
        (modify ?vn (novela ?nov)(puntuacion ?punt)(sexo TRUE))       
)

(defrule setValorLibroBestseller "en funcion de las respuestas puntuamos"
        (bestseller ?bestseller)
        ?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt)(bestseller FALSE))
        =>        
                (bind ?bs (send ?nov get-bestseller))
        (if(eq (str-compare ?bestseller ?best) 0) then (bind ?punt (+ ?punt 2)))
        (modify ?vn (novela ?nov)(puntuacion ?punt)(bestseller TRUE))       
)


;escogemos un rango de paginas para decidir si sumamos puntos o no
(defrule setValorLibroExtension "en funcion de las respuestas puntuamos"
        (extensionMax ?pagsMax)
		(extensionMin ?pagsMin)
        ?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt)(extension FALSE))
	=>        
		(bind ?paginas (send ?nov get-paginas))
		(if (and (> ?pagsMax ?paginas) (< ?pagsMin ?paginas)) then (bind ?punt (+ ?punt 1)))
        (modify ?vn (novela ?nov)(puntuacion ?punt)(extension TRUE))       
)


(defrule setValorLibroAutor "en funcion de las respuestas puntuamos"
        (autor ?autor)
        ?vn <- (valoracionNovela (novela ?nov)(puntuacion ?punt)(autor FALSE))
	=>        
		(bind ?aut (send ?nov get-autor))
        (if(eq ?autor ?aut) then (bind ?punt (+ ?punt 3)))
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
	(test (> ?punt 3))
	 (forall (valoracionNovela (novela ?nov2&~?nov)(puntuacion ?punt2)) (test (>= ?punt ?punt2)))
	 ?ps <- (pos ?x)
	 (test (< ?x 3))
	 =>
	 (printout t "Te recomendamos este libro. Titulo: " (send ?nov get-titulo) crlf)
	 (bind ?leido (pregunta-sino "Lo has leido?"))
	 (if (eq ?leido FALSE) then  
		 (bind ?x (+ ?x 1))
		 (retract ?ps) ;nos cargamos el hecho de posicion y lo volvemos a meter porque funcionaba mal el modify
		 (assert (pos ?x))
		 (printout t "puntuacion: " ?punt crlf)
		 (retract ?vn)
	 else (retract ?vn))
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
	?ps <- (pos ?x)
	(test (< ?x 3))
	?nov <- (valoracionNovela (novela ?novela)(esBestseller TRUE))
	=>	
	(printout t "Te recomendamos el bestseller con Titulo: " (send ?novela get-titulo) crlf)
	(bind ?leido (pregunta-sino "¿Lo has leido?"))
	 (if (eq ?leido FALSE) then  
		 (bind ?x (+ ?x 1))
		 (retract ?ps) ;nos cargamos el hecho de posicion y lo volvemos a meter porque funcionaba mal el modify
		 (assert (pos ?x))
		 (retract ?nov) ;asi hacemos que no vuelva a recomendar el mismo bestseller
	else (retract ?nov))

)

(defrule noHayRecomendacionesNiBests  "regla para saber que no se obtuvieron recomendacioness"
	(declare (salience -2))
	(pos ?x)
	(test (< ?x 3))
	=>	
	(printout t "No tenemos mas libros para ti, lo siento" crlf)
)









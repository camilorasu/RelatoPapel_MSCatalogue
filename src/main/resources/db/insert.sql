-- insert en publisher

INSERT INTO publisher (name)
VALUES ('Penguin Random House'),
       ('Editorial Planeta'),
       ('Alfaguara'),
       ('Anagrama'),
       ('Tusquets Editores'),
       ('Seix Barral'),
       ('Alianza Editorial'),
       ('Editorial Gredos'),
       ('Ediciones Cátedra'),
       ('Espasa'),
       ('HarperCollins'),
       ('Simon & Schuster'),
       ('Macmillan Publishers'),
       ('Hachette Livre'),
       ('Oxford University Press'),
       ('Cambridge University Press'),
       ('Editorial Pre-Textos'),
       ('Acantilado'),
       ('Impedimenta'),
       ('Páginas de Espuma'),
       ('Sexto Piso'),
       ('Valdemar'),
       ('Editorial Siruela'),
       ('Ediciones B'),
       ('Plaza & Janés'),
       ('Roca Editorial'),
       ('Duomo Ediciones'),
       ('Periférica'),
       ('Errata Naturae'),
       ('Libros del Asteroide'),
       ('Blackie Books'),
       ('Capitán Swing'),
       ('Editorial Akal'),
       ('Siglo XXI Editores'),
       ('Fondo de Cultura Económica'),
       ('Editorial Hiperión'),
       ('Visor Libros'),
       ('Lumen'),
       ('Editorial Kairós'),
       ('Editorial Trotta'),
       ('Editorial Gedisa'),
       ('Editorial Paidós'),
       ('Editorial Ariel'),
       ('Editorial Crítica'),
       ('Austral'),
       ('Ediciones Destino'),
       ('Booket'),
       ('Debolsillo'),
       ('Ediciones Salamandra'),
       ('Editorial Nova');

-- insert de registros en book

INSERT INTO book (title, description, pages, isbn, price, stock, id_publisher)
VALUES
-- Publisher 1
('Cien años de soledad', 'La obra maestra de Gabriel García Márquez sobre la familia Buendía en Macondo.', 496,
 '978-0307474728', 19.99, 45, 1),
('El amor en los tiempos del cólera', 'Una historia de amor inquebrantable que perdura por más de cincuenta años.', 368,
 '978-0307387264', 15.50, 30, 1),
('Crónica de una muerte anunciada', 'La reconstrucción de un asesinato que todo el pueblo sabía que iba a ocurrir.',
 128, '978-1400034956', 12.00, 60, 1),
('Del amor y otros demonios', 'Una historia de pasión y superstición en la época colonial.', 208, '978-0307389190',
 14.25, 25, 1),

-- Publisher 2
('Don Quijote de la Mancha', 'Las aventuras del ingenioso hidalgo y su fiel escudero Sancho Panza.', 1056,
 '978-8424937454', 24.95, 20, 2),
('La galatea', 'La primera novela de Miguel de Cervantes, de corte pastoril.', 416, '978-8424922313', 18.00, 15, 2),
('Novelas ejemplares', 'Colección de doce novelas cortas escritas por Miguel de Cervantes.', 640, '978-8424936495',
 21.50, 12, 2),
('Los trabajos de Persiles y Sigismunda', 'Obra póstuma de Cervantes de género bizantino.', 528, '978-8424902230',
 19.90, 8, 2),

-- Publisher 3
('Ficciones', 'Antología de cuentos interconectados que exploran laberintos y paradojas.', 176, '978-1101974025', 13.99,
 40, 3),
('El Aleph', 'Una de las colecciones de cuentos más aclamadas de Jorge Luis Borges.', 224, '978-1101974032', 14.50, 35,
 3),
('El libro de arena', 'Cuentos tardíos que muestran la madurez literaria del autor argentino.', 192, '978-1101974049',
 13.00, 18, 3),
('Inquisiciones', 'Recopilación de ensayos tempranos sobre literatura y filosofía.', 160, '978-1101974056', 12.50, 10,
 3),

-- Publisher 4
('Pedro Páramo', 'El viaje de Juan Preciado a Comala en busca de su padre.', 128, '978-1934840856', 11.95, 55, 4),
('El llano en llamas', 'Colección de cuentos que retratan la dureza del campo mexicano.', 152, '978-0292720633', 12.99,
 50, 4),
('El gallo de oro', 'Novela corta sobre el azar, la suerte y el amor trágico.', 144, '978-6074454727', 10.50, 22, 4),
('Cartas a Clara', 'Correspondencia íntima que muestra la faceta más humana del autor.', 210, '978-6074454734', 15.00,
 14, 4),

-- Publisher 5
('Rayuela', 'La obra cumbre del boom latinoamericano que se puede leer de varias formas.', 600, '978-0307474735', 18.99,
 28, 5),
('Bestiario', 'El primer libro de relatos del autor, lleno de elementos fantásticos cotidianos.', 168, '978-8439722748',
 13.50, 32, 5),
('Final del juego', 'Colección de cuentos que incluye relatos célebres como Continuidad de los parques.', 192,
 '978-8439722755', 14.00, 24, 5),
('Las armas secretas', 'Contiene relatos fundamentales donde destaca El perseguidor.', 176, '978-8439722762', 13.80, 19,
 5),

-- Publisher 6
('La ciudad y los perros', 'Novela que retrata la brutalidad de un colegio militar en Lima.', 448, '978-1616052294',
 16.95, 33, 6),
('La fiesta del Chivo', 'Crónica de la dictadura de Rafael Leónidas Trujillo en la República Dominicana.', 512,
 '978-0307474742', 17.50, 42, 6),
('Conversación en La Catedral', 'Un retrato crudo de la corrupción política y la frustración social.', 608,
 '978-0307474759', 19.95, 15, 6),
('Pantaleón y las visitadoras', 'Sátira sobre la burocracia del ejército peruano y su servicio especial.', 320,
 '978-0307474766', 14.90, 26, 6),

-- Publisher 7
('La casa de los espíritus', 'La saga familiar de cuatro generaciones en un país latinoamericano anónimo.', 496,
 '978-1400034680', 16.00, 38, 7),
('De amor y de sombra', 'Una conmovedora historia de amor en medio de una dictadura militar.', 320, '978-1400034697',
 14.50, 20, 7),
('Eva Luna', 'Relato de una huérfana que encuentra su destino a través de contar historias.', 304, '978-1400034703',
 14.00, 25, 7),
('El plan infinito', 'Novela que narra la vida de un hombre blanco en un barrio hispano de California.', 384,
 '978-1400034710', 15.20, 14, 7),

-- Publisher 8
('La sombra del viento', 'Un misterio literario ambientado en la Barcelona de la posguerra.', 576, '978-0307472595',
 19.95, 65, 8),
('El juego del ángel', 'Una oscura intriga sobre la creación literaria y pactos faústicos.', 672, '978-0307390295',
 19.95, 48, 8),
('El prisionero del cielo', 'El regreso al Cementerio de los Libros Olvidados junto a Daniel Sempere.', 384,
 '978-0307951557', 18.50, 50, 8),
('El laberinto de los espíritus', 'El desenlace de la célebre tetralogía de misterio en Barcelona.', 928,
 '978-8408163381', 23.90, 55, 8),

-- Publisher 9
('El laberinto de la soledad', 'Un ensayo fundamental sobre la identidad y la psicología del mexicano.', 352,
 '978-9681653019', 14.99, 30, 9),
('El arco y la lira', 'Un profundo estudio poético sobre los elementos del poema.', 314, '978-9681603502', 15.50, 12,
 9),
('Las peras del olmo', 'Colección de ensayos literarios sobre arte y poesía de la juventud del autor.', 220,
 '978-9681605209', 11.00, 15, 9),
('Sor Juana Inés de la Cruz o las trampas de la fe',
 'Estudio biográfico e histórico sobre la gran décima musa mexicana.', 670, '978-9681612115', 24.00, 10, 9),

-- Publisher 10
('2666', 'Obra póstuma monumental que gira en torno a crímenes en una ciudad fronteriza.', 1128, '978-8433973436',
 26.00, 22, 10),
('Los detectives salvajes', 'La búsqueda de dos poetas tras el rastro de una misteriosa escritora.', 616,
 '978-8433973443', 19.90, 34, 10),
('Estrella distante', 'Una inquietante historia sobre el mal, el arte y la dictadura chilena.', 160, '978-8433966742',
 12.00, 18, 10),
('Amuleto', 'Un monólogo delirante que rescata la memoria de la resistencia estudiantil.', 152, '978-8433966759', 11.50,
 15, 10),

-- Publisher 11
('Orgullo y prejuicio', 'La tensa y divertida relación entre Elizabeth Bennet y el Sr. Darcy.', 448, '978-8491051305',
 11.95, 80, 11),
('Sentido y sensibilidad', 'Las vicisitudes amorosas y económicas de las hermanas Dashwood.', 384, '978-8491051312',
 11.50, 45, 11),
('Persuasión', 'La historia de una segunda oportunidad amorosa tras años de maduración.', 320, '978-8491051329', 10.95,
 30, 11),
('Emma', 'Las andanzas de una joven rica y perspicaz que juega a ser casamentera.', 496, '978-8491051336', 12.50, 35,
 11),

-- Publisher 12
('Crimen y castigo', 'El tormento psicológico del estudiante Raskólnikov tras cometer un asesinato.', 672,
 '978-8420684338', 14.95, 70, 12),
('Los hermanos Karamázov', 'Un complejo drama familiar que profundiza en Dios, la libertad y la moral.', 1008,
 '978-8420684345', 19.95, 40, 12),
('El idiota', 'El retrato de un hombre bondadoso atrapado en una sociedad corrompida.', 784, '978-8420684352', 16.50,
 28, 12),
('El jugador', 'Una novela corta nacida de la propia adicción del autor a la ruleta.', 224, '978-8420684369', 9.95, 50,
 12),

-- Publisher 13
('1984', 'La distopía definitiva sobre el control totalitario y el Gran Hermano.', 328, '978-8466331821', 10.95, 110,
 13),
('Rebelión en la granja', 'Una fábula satírica sobre los peligros y la traición de las revoluciones.', 144,
 '978-8466331838', 9.95, 130, 13),
('Homenaje a Cataluña', 'El relato testimonial del autor durante su participación en la Guerra Civil Española.', 288,
 '978-8466331845', 12.00, 25, 13),
('Sin blanca en París y Londres', 'Crónica descarnada de los años de pobreza extrema del autor.', 256, '978-8466331852',
 11.50, 20, 13),

-- Publisher 14
('Un mundo feliz',
 'Una escalofriante visión de una sociedad futura dominada por la tecnología y el placer obligatorio.', 256,
 '978-8408065616', 12.95, 85, 14),
('Las puertas de la percepción', 'Un ensayo sobre las experiencias alucinógenas y la mente humana.', 144,
 '978-8408065623', 9.95, 40, 14),
('Contrapunto', 'Novela ambiciosa que retrata la vida intelectual de los años veinte.', 608, '978-8408065630', 18.00,
 15, 14),
('Isla', 'La última novela del autor, utopía contrapuesta a su famosa obra distópica.', 432, '978-8408065647', 15.00,
 18, 14),

-- Publisher 15
('Fahrenheit 451', 'La historia de un bombero encargado de quemar los libros prohibidos por el Estado.', 192,
 '978-8490321478', 11.95, 95, 15),
('Crónicas marcianas', 'La colonización de Marte por parte de una humanidad en crisis en la Tierra.', 288,
 '978-8490321485', 12.95, 60, 15),
('El hombre ilustrado', 'Dieciocho relatos de ciencia ficción unidos por los tatuajes de un hombre.', 256,
 '978-8490321492', 12.50, 30, 15),
('El vino del estío', 'Evocación poética de la infancia y los recuerdos de un verano inolvidable.', 240,
 '978-8490321508', 12.00, 22, 15),

-- Publisher 16
('El guardián entre el centeno', 'La icónica rebelión adolescente de Holden Caulfield en Nueva York.', 272,
 '978-8420651262', 12.00, 75, 16),
('Nueve cuentos', 'Recopilación de relatos breves que consagró al autor como un maestro del género.', 240,
 '978-8420651279', 11.50, 30, 16),
('Franny y Zooey', 'Dos relatos entrelazados que exploran la crisis existencial de una familia de prodigios.', 176,
 '978-8420651286', 10.95, 25, 16),
('Levantad, carpinteros, la viga del tejado', 'Profundización en la saga familiar de los Glass.', 160, '978-8420651293',
 10.50, 20, 16),

-- Publisher 17
('El gran Gatsby', 'La decadencia del sueño americano a través del misterioso Jay Gatsby.', 224, '978-8433920157',
 13.00, 65, 17),
('A este lado del paraíso', 'La vida universitaria y los desengaños de la juventud de entreguerras.', 320,
 '978-8433920164', 14.50, 20, 17),
('Suave es la noche', 'La trágica historia de un psiquiatra adinerado y su inestable esposa.', 416, '978-8433920171',
 16.00, 25, 17),
('Hermosos y malditos', 'Retrato íntimo e incisivo de la opulencia de la aristocracia neoyorquina.', 384,
 '978-8433920188', 15.00, 18, 17),

-- Publisher 18
('El viejo y el mar', 'La heroica lucha de un anciano pescador cubano contra un gran pez.', 128, '978-8426418241',
 11.00, 90, 18),
('Por quién doblan las campanas', 'Una intensa historia de amor y deber durante la Guerra Civil Española.', 544,
 '978-8426418258', 18.00, 45, 18),
('Fiesta', 'Las vivencias de un grupo de expatriados norteamericanos en los Sanfermines.', 288, '978-8426418265', 13.50,
 30, 18),
('Adiós a las armas', 'Un romance trágico entre un conductor de ambulancias y una enfermera en la Gran Guerra.', 352,
 '978-8426418272', 14.95, 38, 18),

-- Publisher 19
('Al faro', 'Una meditación profunda sobre el tiempo, la pérdida y las relaciones familiares.', 240, '978-8420655185',
 12.50, 40, 19),
('La señora Dalloway', 'Un día en la vida de una mujer de la alta sociedad londinense de entreguerras.', 224,
 '978-8420655192', 11.95, 55, 19),
('Las olas', 'La obra más experimental y poética de la autora que sigue a seis amigos.', 256, '978-8420655208', 13.00,
 25, 19),
('Orlando', 'Una biografía satírica que viaja a través de los siglos y cambia de género biológico.', 320,
 '978-8420655215', 14.00, 32, 19),

-- Publisher 20
('La metamorfosis', 'El despertar de Gregorio Samsa transformado en un monstruoso insecto.', 96, '978-8420651361', 8.95,
 140, 20),
('El proceso', 'El absurdo calvario judicial de Josef K., arrestado sin saber el motivo.', 288, '978-8420651378', 12.00,
 60, 20),
('El castillo', 'Los intentos estériles de un agrimensor por acceder a las autoridades locales.', 384, '978-8420651385',
 13.50, 35, 20),
('Carta al padre', 'El descarnado análisis de la compleja y traumática relación familiar de Kafka.', 80,
 '978-8420651392', 7.95, 80, 20),

-- Publisher 21
('Ulises', 'El monumental recorrido de Leopold Bloom por las calles de Dublín en un solo día.', 912, '978-8439735410',
 25.00, 30, 21),
('Dublineses', 'Colección de quince relatos que capturan la parálisis espiritual de la ciudad.', 256, '978-8439735427',
 12.50, 45, 21),
('Retrato del artista adolescente',
 'Novela autobiográfica sobre el despertar artístico y religioso de Stephen Dedalus.', 288, '978-8439735434', 13.00, 35,
 21),
('Finnegans Wake', 'La última y más compleja obra experimental en la carrera del autor.', 640, '978-8439735441', 28.00,
 10, 21),

-- Publisher 22
('En busca del tiempo perdido 1',
 'Por el camino de Swann, el inicio de una introspección inigualable sobre la memoria.', 480, '978-8420684444', 15.00,
 25, 22),
('En busca del tiempo perdido 2', 'A la sombra de las muchachas en flor, la adolescencia y el amor.', 560,
 '978-8420684451', 16.00, 20, 22),
('En busca del tiempo perdido 3', 'El mundo de Guermantes, análisis de la alta aristocracia parisina.', 620,
 '978-8420684468', 16.50, 15, 22),
('En busca del tiempo perdido 4', 'Sodoma y Gomorra, una mirada valiente a las pasiones ocultas.', 540,
 '978-8420684475', 16.00, 15, 22),

-- Publisher 23
('El extranjero', 'La apatía e indiferencia de Meursault ante las convenciones de la sociedad.', 128, '978-8420651408',
 11.00, 95, 23),
('La peste', 'La crónica del confinamiento de una ciudad ante una plaga devastadora.', 352, '978-8420651415', 14.50, 75,
 23),
('El mito de Sísifo', 'Un ensayo fundamental sobre el absurdo de la existencia y el suicidio.', 160, '978-8420651422',
 12.00, 40, 23),
('El hombre rebelde', 'Estudio filosófico sobre las revoluciones y el inconformismo humano.', 416, '978-8420651439',
 16.00, 30, 23),

-- Publisher 24
('El principito', 'Una hermosa fábula infantil sobre el sentido de la vida, el amor y la amistad.', 96,
 '978-8449332180', 9.95, 200, 24),
('Vuelo de noche', 'La tensa épica de los pioneros de la aviación comercial en Sudamérica.', 144, '978-8449332197',
 10.50, 40, 24),
('Tierra de hombres', 'Reflexiones humanistas nacidas de los accidentes aéreos del autor.', 192, '978-8449332203',
 12.00, 35, 24),
('Piloto de guerra', 'Memorias del autor durante la traumática invasión de Francia en 1940.', 176, '978-8449332210',
 11.50, 18, 24),

-- Publisher 25
('Ensayo sobre la ceguera', 'Una epidemia de ceguera blanca revela el lado más salvaje de la humanidad.', 384,
 '978-8420448145', 17.95, 65, 25),
('El evangelio según Jesucristo', 'Una relectura humana, irónica y desgarradora de los textos bíblicos.', 448,
 '978-8420448152', 18.50, 38, 25),
('Las intermitencias de la muerte', '¿Qué ocurre en un país donde de repente nadie vuelve a morir?', 240,
 '978-8420448169', 14.95, 45, 25),
('Memorial del convento', 'Una historia de amor mágica en el contexto de la Inquisición portuguesa.', 416,
 '978-8420448176', 16.90, 22, 25),

-- Publisher 26
('Moby Dick', 'La obsesiva y trágica persecución del capitán Ahab contra la ballena blanca.', 736, '978-8491052012',
 15.95, 40, 26),
('Bartleby el escribano', 'La desconcertante resistencia pasiva de un empleado con su célebre frase.', 96,
 '978-8491052029', 8.50, 50, 26),
('Benito Cereno', 'Una tensa e inquietante rebelión de esclavos a bordo de un barco español.', 160, '978-8491052036',
 10.00, 18, 26),
('Billy Budd marinero', 'Obra póstuma sobre la inocencia truncada y las leyes de la guerra.', 144, '978-8491052043',
 9.50, 15, 26),

-- Publisher 27
('Hojas de hierba', 'La gran epopeya poética que celebra la democracia, la naturaleza y la vida.', 544,
 '978-8420651446', 16.00, 30, 27),
('Perspectivas democráticas', 'Un ensayo crítico sobre el futuro social y político de Estados Unidos.', 120,
 '978-8420651453', 9.95, 12, 27),
('Canto a mí mismo', 'El célebre e individualista poema que forma el núcleo de su obra mayor.', 96, '978-8420651460',
 8.00, 25, 27),
('Días ejemplares', 'Textos en prosa sobre la Guerra de Secesión y paseos naturalistas del autor.', 280,
 '978-8420651477', 13.00, 10, 27),

-- Publisher 28
('Poeta en Nueva York', 'El desgarrador grito de Federico García Lorca contra la deshumanización de la metrópoli.', 144,
 '978-8423352210', 12.00, 55, 28),
('Romancero gitano', 'La cumbre de la poesía que funde la tradición popular y las vanguardias.', 112, '978-8423352227',
 10.00, 70, 28),
('Bodas de sangre', 'Tragedia teatral en verso sobre la pasión proscrita, el honor y la fatalidad.', 128,
 '978-8423352234', 9.95, 60, 28),
('La casa de Bernarda Alba', 'El drama opresivo de las mujeres en los pueblos de la España profunda.', 120,
 '978-8423352241', 9.95, 85, 28),

-- Publisher 29
('Azul', 'El hito fundacional del Modernismo literario hispanoamericano en prosa y verso.', 160, '978-8437606354',
 11.50, 28, 29),
('Cantos de vida y esperanza', 'La cumbre poética del autor, más madura, política y reflexiva.', 144, '978-8437608105',
 10.95, 22, 29),
('Prosas profanas', 'Música, exotismo y erotismo elevado en la poesía modernista.', 152, '978-8437612300', 11.00, 18,
 29),
('El canto errante', 'Obra tardía que demuestra la universalidad lírica del genio nicaragüense.', 136, '978-8437615004',
 10.50, 10, 29),

-- Publisher 30
('Las flores del mal', 'La obra cumbre del simbolismo que explora el dolor, el tedio y la belleza del mal.', 288,
 '978-8420651484', 12.50, 45, 30),
('El Spleen de París', 'Pequeños poemas en prosa que retratan la melancolía de la gran ciudad moderna.', 160,
 '978-8420651491', 11.00, 30, 30),
('Los paraísos artificiales', 'Un estudio filosófico sobre los efectos del hachís, el opio y el vino.', 192,
 '978-8420651507', 11.95, 20, 30),
('Crítica de arte', 'Brillantes ensayos estéticos donde define el concepto de la modernidad.', 240, '978-8420651514',
 13.00, 15, 30),

-- Publisher 31
('El retrato de Dorian Gray',
 'Un pacto diabólico permite a un joven mantener la eterna juventud mientras su retrato envejece.', 288,
 '978-8467046489', 11.95, 75, 31),
('La importancia de llamarse Ernesto', 'Una comedia teatral brillante que satiriza las costumbres victorianas.', 128,
 '978-8467046496', 9.95, 45, 31),
('De profundis', 'La desgarradora carta escrita desde prisión dirigida a su amante Lord Alfred Douglas.', 160,
 '978-8467046502', 10.50, 32, 31),
('El fantasma de Canterville', 'Divertido relato de una familia americana que no teme a los fantasmas británicos.', 96,
 '978-8467046519', 8.95, 60, 31),

-- Publisher 32
('Alicia en el país de las maravillas',
 'Un viaje surrealista lleno de lógica absurda, naipes vivientes y un gato sonriente.', 160, '978-8420651521', 10.00,
 80, 32),
('A través del espejo y lo que Alicia encontró allí',
 'La continuación donde el mundo se rige por las estrictas reglas del ajedrez.', 192, '978-8420651538', 10.95, 45, 32),
('La caza del Snark', 'Poema clásico del sinsentido que narra la expedición de una extraña tripulación.', 96,
 '978-8420651545', 8.50, 15, 32),
('El juego de la lógica', 'Tratado divertido del autor que mezcla problemas matemáticos y paradojas.', 144,
 '978-8420651552', 11.00, 12, 32),

-- Publisher 33
('Drácula', 'La obra maestra del terror gótico que consagró el mito universal del vampiro.', 544, '978-8467035414',
 14.95, 65, 33),
('La joya de las siete estrellas', 'Novela de terror e intriga que gira en torno a la maldición de una momia egipcia.',
 256, '978-8467035421', 12.00, 20, 33),
('La madriguera del Gusano Blanco',
 'Fantasía macabra basada en antiguas leyendas británicas de monstruos subterráneos.', 192, '978-8467035438', 11.50, 15,
 33),
('El invitado de Drácula', 'Colección póstuma de relatos de terror que incluye el capítulo eliminado de su gran obra.',
 160, '978-8467035445', 10.50, 25, 33),

-- Publisher 34
('Frankenstein', 'El doctor Víctor Frankenstein desafía los límites de la ciencia creando vida de la muerte.', 256,
 '978-8420651569', 11.00, 85, 34),
('El último hombre', 'Novela apocalíptica pionera en la ciencia ficción que narra el fin de la humanidad.', 480,
 '978-8420651576', 15.50, 18, 34),
('Lodore', 'Drama social y romántico que aborda la autonomía de la mujer en el siglo XIX.', 384, '978-8420651583',
 14.00, 10, 34),
('Mathilda', 'Novela corta de tintes autobiográficos que explora pasiones trágicas y prohibidas.', 128,
 '978-8420651590', 9.95, 14, 34),

-- Publisher 35
('El extraño caso del doctor Jekyll y el señor Hyde',
 'El desdoblamiento psicológico de la personalidad llevado a un extremo terrorífico.', 112, '978-8420651606', 9.05, 90,
 35),
('La isla del tesoro', 'La inolvidable aventura del joven Jim Hawkins y el pirata Long John Silver.', 288,
 '978-8420651613', 11.95, 110, 35),
('Secuestrado', 'Aventuras e intrigas políticas en las Tierras Altas de Escocia.', 256, '978-8420651620', 11.50, 30,
 35),
('El señor de Ballantrae', 'El oscuro y trágico enfrentamiento cainita entre dos hermanos nobles escoceses.', 272,
 '978-8420651637', 12.00, 22, 35),

-- Publisher 36
('La máquina del tiempo', 'El viajero del tiempo descubre el lejano y decadente futuro de los Eloi y Morlocks.', 144,
 '978-8420651644', 9.95, 75, 36),
('La guerra de los mundos', 'La aterradora e implacable invasión de la Tierra por parte de trípodes marcianos.', 256,
 '978-8420651651', 11.95, 80, 36),
('El hombre invisible', 'Las consecuencias morales y delictivas de un científico que logra la invisibilidad.', 224,
 '978-8420651668', 10.95, 55, 36),
('La isla del doctor Moreau', 'Un náufrago descubre horribles experimentos de vivisección animal y humana.', 192,
 '978-8420651675', 10.50, 40, 36),

-- Publisher 37
('Estudio en escarlata', 'La primera aparición del célebre detective Sherlock Holmes y su colega Watson.', 160,
 '978-8420651682', 10.00, 95, 37),
('El signo de los cuatro', 'Una compleja intriga ligada a un tesoro robado en la India colonial.', 176,
 '978-8420651699', 10.50, 60, 37),
('El sabueso de los Baskerville', 'Holmes investiga una maldición familiar en los neblinosos páramos de Devon.', 256,
 '978-8420651705', 11.95, 85, 37),
('El valle del terror', 'Un misterioso asesinato conectado de forma brillante con sociedades secretas americanas.', 224,
 '978-8420651712', 11.00, 45, 37),

-- Publisher 38
('Narraciones extraordinarias', 'Recopilación de los cuentos de terror, misterio y deducción gótica más célebres.', 432,
 '978-8420651729', 14.50, 65, 38),
('Las aventuras de Arthur Gordon Pym',
 'La única y delirante novela larga del autor, un viaje náutico maldito hacia el Polo Sur.', 240, '978-8420651736',
 12.00, 25, 38),
('El cuervo y otros poemas', 'Selección lírica del autor marcada por la melancolía y la perfección métrica.', 128,
 '978-8420651743', 9.95, 40, 38),
('Eureka', 'Un ambicioso ensayo cosmológico sobre la creación y el destino del universo.', 160, '978-8420651750', 11.00,
 15, 38),

-- Publisher 39
('El señor de los anillos: La comunidad del anillo',
 'El inicio del peligroso viaje de Frodo Bolsón para destruir el Anillo Único.', 496, '978-8445073728', 21.95, 120, 39),
('El señor de los anillos: Las dos torres', 'La desmembración de la Compañía y el asedio de las fuerzas oscuras.', 416,
 '978-8445073735', 21.95, 115, 39),
('El señor de los anillos: El retorno del rey',
 'La batalla final frente a Mordor y la coronación del legítimo rey de los hombres.', 528, '978-8445073742', 22.95, 130,
 39),
('El hobbit', 'Las divertidas y azarosas peripecias de Bilbo Bolsón junto al mago Gandalf.', 312, '978-8445073803',
 15.00, 150, 39),

-- Publisher 40
('Las crónicas de Narnia: El león, la bruja y el armario',
 'Cuatro hermanos descubren un mundo invernal mágico oculto tras un armario.', 240, '978-8408062639', 13.95, 90, 40),
('Las crónicas de Narnia: El príncipe Caspian',
 'Los niños regresan a Narnia para ayudar al legítimo heredero al trono.', 256, '978-8408062646', 13.95, 55, 40),
('Las crónicas de Narnia: La travesía del Viajero del Alba',
 'Un viaje marítimo hacia los confines del mundo lleno de islas misteriosas.', 288, '978-8408062653', 13.95, 48, 40),
('El problema del dolor', 'Ensayo teológico y filosófico que aborda la existencia del sufrimiento humano.', 192,
 '978-8417123905', 12.50, 20, 40),

-- Publisher 41
('La divina comedia', 'El viaje alegórico del poeta a través del Infierno, el Purgatorio y el Paraíso.', 736,
 '978-8420651767', 18.00, 40, 41),
('Vida nueva', 'Obra que canta el amor platónico y espiritual hacia su amada Beatrice.', 144, '978-8420651774', 10.00,
 18, 41),
('De la monarquía', 'Tratado político clave sobre la separación de poderes de la Iglesia y el Estado.', 192,
 '978-8420651781', 12.00, 10, 41),
('El convite', 'Exposición en prosa de la sabiduría medieval a través de canciones filosóficas.', 320, '978-8420651798',
 14.50, 12, 41),

-- Publisher 42
('Cancionero', 'La cumbre de la lírica amorosa renacentista dedicada a su musa Laura.', 416, '978-8437608204', 15.00,
 20, 42),
('África', 'Poema épico en latín clásico que narra las hazañas del general romano Escipión.', 288, '978-8437609201',
 14.00, 8, 42),
('Triunfos', 'Poema alegórico que repasa las superaciones del amor, la muerte y el tiempo.', 176, '978-8437610108',
 11.50, 14, 42),
('Mi secreto', 'Diálogo íntimo y doloroso del autor con San Agustín sobre sus crisis espirituales.', 192,
 '978-8437611006', 12.00, 15, 42),

-- Publisher 43
('El decamerón', 'Cien cuentos narrados por jóvenes refugiados de la peste negra en Florencia.', 864, '978-8420651804',
 19.95, 35, 43),
('Elegía de doña Fiammeta', 'Una de las primeras novelas psicológicas de la literatura europea moderna.', 224,
 '978-8420651811', 11.50, 12, 43),
('El corbacho', 'Una violenta sátira moral y literaria contra las flaquezas de la sociedad.', 192, '978-8420651828',
 11.00, 10, 43),
('Filóstrato', 'Poema narrativo que recrea el trágico amor troyano de Troilo y Crésida.', 240, '978-8420651835', 12.50,
 8, 43),

-- Publisher 44
('Así habló Zaratustra', 'El filósofo proclama la muerte de Dios y el advenimiento del Superhombre.', 448,
 '978-8420634128', 13.50, 85, 44),
('Más allá del bien y del mal', 'Una dura y mordaz crítica a la moral tradicional occidental.', 288, '978-8420634135',
 12.00, 60, 44),
('La genealogía de la moral', 'Ensayo que rastrea el origen psicológico de los valores cristianos.', 224,
 '978-8420634142', 11.50, 50, 44),
('El crepúsculo de los ídolos', 'Obra tardía que arremete ingeniosamente contra los grandes dogmas de la filosofía.',
 160, '978-8420634159', 10.50, 38, 44),

-- Publisher 45
('Crítica de la razón pura', 'La monumental investigación de Immanuel Kant sobre los límites del conocimiento humano.',
 848, '978-8437604664', 24.00, 25, 45),
('Crítica de la razón práctica', 'Desarrollo de su célebre sistema moral basado en el imperativo categórico.', 224,
 '978-8437605104', 13.50, 20, 45),
('Crítica del juicio', 'Estudio estético y teleológico sobre la belleza, el arte y la naturaleza.', 432,
 '978-8437606002', 17.00, 18, 45),
('Fundamentación de la metafísica de las costumbres',
 'Breve tratado clave que asienta las bases éticas del deber humano.', 160, '978-8437607009', 11.00, 30, 45),

-- Publisher 46
('Discurso del método', 'La célebre obra de René Descartes que establece la duda metódica y el racionalismo.', 160,
 '978-8420651842', 9.95, 65, 46),
('Meditaciones metafísicas', 'Demostraciones racionales de la existencia de Dios y la inmortalidad del alma.', 192,
 '978-8420651859', 11.00, 40, 46),
('Las pasiones del alma', 'Último libro publicado del autor sobre la psicología de las emociones humanas.', 224,
 '978-8420651866', 12.00, 15, 46),
('Reglas para la dirección de la mente', 'Guía fundamental e inacabada para el correcto pensamiento científico.', 144,
 '978-8420651873', 10.50, 18, 46),

-- Publisher 47
('El contrato social', 'Jean-Jacques Rousseau plantea las bases de la democracia moderna y la soberanía popular.', 192,
 '978-8420651880', 10.50, 55, 47),
('Emilio, o De la educación', 'Tratado pedagógico revolucionario sobre la bondad natural del niño.', 672,
 '978-8420651897', 16.50, 24, 47),
('Las devaneos del paseante solitario',
 'Obra autobiográfica póstuma llena de meditaciones líricas sobre la naturaleza.', 176, '978-8420651903', 11.00, 15,
 47),
('Discurso sobre el origen de la desigualdad',
 'Ensayo que analiza la propiedad privada como origen de los males sociales.', 160, '978-8420651910', 10.00, 35, 47),

-- Publisher 48
('Leviatán',
 'Thomas Hobbes teoriza sobre el Estado absoluto absoluto necesario para evitar la guerra de todos contra todos.', 640,
 '978-8420651927', 17.00, 25, 48),
('De Cive', 'Estudio sobre los fundamentos del ciudadano, la libertad y el orden político.', 320, '978-8420651934',
 14.00, 12, 48),
('Elementos de derecho natural y político', 'Primer gran tratado jurídico y político elaborado por el autor.', 256,
 '978-8420651941', 13.00, 10, 48),
('Behemoth', 'Análisis histórico de las guerras civiles inglesas desde su perspectiva filosófica.', 288,
 '978-8420651958', 13.50, 8, 48),

-- Publisher 49
('Dos tratados sobre el gobierno civil',
 'John Locke sienta las bases del liberalismo político y los derechos naturales.', 384, '978-8420651965', 14.95, 38,
 49),
('Ensayo sobre el entendimiento humano', 'Obra cumbre del empirismo que niega las ideas innatas de la mente.', 704,
 '978-8420651972', 19.95, 15, 49),
('Carta sobre la tolerancia', 'Un alegato fundamental en favor de la libertad religiosa y de conciencia.', 128,
 '978-8420651989', 9.50, 45, 49),
('Algunos pensamientos sobre la educación',
 'Propuestas prácticas empiristas para la formación del carácter de los jóvenes.', 272, '978-8420651996', 12.50, 14,
 49),

-- Publisher 50
('El capital (Vol. 1)',
 'El profundo análisis crítico de la economía política y el sistema de producción capitalista escrito por Karl Marx.',
 960, '978-9681600204', 25.00, 40, 50),
('Manifiesto del Partido Comunista',
 'El céleera folleto político redactado junto a Friedrich Engels que movilizó la historia.', 96, '978-8494805615', 7.95,
 150, 50),
('El dieciocho Brumario de Luis Bonaparte',
 'Brillante análisis histórico de un golpe de Estado en la Francia del siglo XIX.', 160, '978-8494805622', 11.00, 22,
 50),
('Manuscritos económicos y filosóficos', 'Textos tempranos clave que abordan el concepto de la alienación humana.', 224,
 '978-8494805639', 12.50, 30, 50);

-- insert en image

INSERT INTO image (id_book, url_image)
VALUES
-- Publisher 1 (Books 1-4) - Azul Coral
(1, 'https://placehold.co/400x600/34495e/ffffff?text=Cien+anos+de+soledad'),
(2, 'https://placehold.co/400x600/34495e/ffffff?text=El+amor+en+los+tiempos+del+colera'),
(3, 'https://placehold.co/400x600/34495e/ffffff?text=Cronica+de+una+muerte+anunciada'),
(4, 'https://placehold.co/400x600/34495e/ffffff?text=Del+amor+y+otros+demonios'),

-- Publisher 2 (Books 5-8) - Verde Esmeralda Suave
(5, 'https://placehold.co/400x600/16a085/ffffff?text=Don+Quijote+de+la+Mancha'),
(6, 'https://placehold.co/400x600/16a085/ffffff?text=La+galatea'),
(7, 'https://placehold.co/400x600/16a085/ffffff?text=Novelas+ejemplares'),
(8, 'https://placehold.co/400x600/16a085/ffffff?text=Los+trabajos+de+Persiles+y+Sigismunda'),

-- Publisher 3 (Books 9-12) - Rojo Terracota
(9, 'https://placehold.co/400x600/c0392b/ffffff?text=Ficciones'),
(10, 'https://placehold.co/400x600/c0392b/ffffff?text=El+Aleph'),
(11, 'https://placehold.co/400x600/c0392b/ffffff?text=El+libro+de+arena'),
(12, 'https://placehold.co/400x600/c0392b/ffffff?text=Inquisiciones'),

-- Publisher 4 (Books 13-16) - Morado Elegante
(13, 'https://placehold.co/400x600/8e44ad/ffffff?text=Pedro+Paramo'),
(14, 'https://placehold.co/400x600/8e44ad/ffffff?text=El+llano+en+llamas'),
(15, 'https://placehold.co/400x600/8e44ad/ffffff?text=El+gallo+de+oro'),
(16, 'https://placehold.co/400x600/8e44ad/ffffff?text=Cartas+a+Clara'),

-- Publisher 5 (Books 17-20) - Ocre / Mostaza Oscuro
(17, 'https://placehold.co/400x600/d35400/ffffff?text=Rayuela'),
(18, 'https://placehold.co/400x600/d35400/ffffff?text=Bestiario'),
(19, 'https://placehold.co/400x600/d35400/ffffff?text=Final+del+juego'),
(20, 'https://placehold.co/400x600/d35400/ffffff?text=Las+armas+secretas'),

-- Publisher 6 (Books 21-24) - Azul Midnight
(21, 'https://placehold.co/400x600/2c3e50/ffffff?text=La+ciudad+y+los+perros'),
(22, 'https://placehold.co/400x600/2c3e50/ffffff?text=La+fiesta+del+Chivo'),
(23, 'https://placehold.co/400x600/2c3e50/ffffff?text=Conversacion+en+La+Catedral'),
(24, 'https://placehold.co/400x600/2c3e50/ffffff?text=Pantaleon+y+las+visitadoras'),

-- Publisher 7 (Books 25-28) - Gris Azulado
(25, 'https://placehold.co/400x600/7f8c8d/ffffff?text=La+casa+de+los+espiritus'),
(26, 'https://placehold.co/400x600/7f8c8d/ffffff?text=De+amor+y+de+sombra'),
(27, 'https://placehold.co/400x600/7f8c8d/ffffff?text=Eva+Luna'),
(28, 'https://placehold.co/400x600/7f8c8d/ffffff?text=El+plan+infinito'),

-- Publisher 8 (Books 29-32) - Borgoña / Vino
(29, 'https://placehold.co/400x600/6b1d2f/ffffff?text=La+sombra+del+viento'),
(30, 'https://placehold.co/400x600/6b1d2f/ffffff?text=El+juego+del+angel'),
(31, 'https://placehold.co/400x600/6b1d2f/ffffff?text=El+misterio+de+la+cripta+embrujada'),
(32, 'https://placehold.co/400x600/6b1d2f/ffffff?text=El+laberinto+de+los+espiritus'),

-- Publisher 9 (Books 33-36) - Verde Oliva
(33, 'https://placehold.co/400x600/4a5d4e/ffffff?text=El+laberinto+de+la+soledad'),
(34, 'https://placehold.co/400x600/4a5d4e/ffffff?text=El+arco+y+la+lira'),
(35, 'https://placehold.co/400x600/4a5d4e/ffffff?text=Las+peras+del+olmo'),
(36, 'https://placehold.co/400x600/4a5d4e/ffffff?text=Sor+Juana+Ines+de+la+Cruz'),

-- Publisher 10 (Books 37-40) - Café Chocolate
(37, 'https://placehold.co/400x600/5c4033/ffffff?text=2666'),
(38, 'https://placehold.co/400x600/5c4033/ffffff?text=Los+detectives+salvajes'),
(39, 'https://placehold.co/400x600/5c4033/ffffff?text=Estrella+distante'),
(40, 'https://placehold.co/400x600/5c4033/ffffff?text=Amuleto'),

-- Publisher 11 (Books 41-44) - Azul Acero
(41, 'https://placehold.co/400x600/4682b4/ffffff?text=Orgullo+y+prejuicio'),
(42, 'https://placehold.co/400x600/4682b4/ffffff?text=Sentido+y+sensibilidad'),
(43, 'https://placehold.co/400x600/4682b4/ffffff?text=Persuasion'),
(44, 'https://placehold.co/400x600/4682b4/ffffff?text=Emma'),

-- Publisher 12 (Books 45-48) - Violeta Oscuro
(125, 'https://placehold.co/400x600/4b0082/ffffff?text=Alicia+en+el+pais+de+las+maravillas'),
(45, 'https://placehold.co/400x600/4b0082/ffffff?text=Crimen+y+castigo'),
(46, 'https://placehold.co/400x600/4b0082/ffffff?text=Los+hermanos+Karamazov'),
(47, 'https://placehold.co/400x600/4b0082/ffffff?text=El+idiota'),
(48, 'https://placehold.co/400x600/4b0082/ffffff?text=El+jugador'),

-- Publisher 13 (Books 49-52) - Teja Mate
(49, 'https://placehold.co/400x600/b22222/ffffff?text=1984'),
(50, 'https://placehold.co/400x600/b22222/ffffff?text=Rebelion+en+la+granja'),
(51, 'https://placehold.co/400x600/b22222/ffffff?text=Homenaje+a+Cataluna'),
(52, 'https://placehold.co/400x600/b22222/ffffff?text=Sin+blanca+en+Paris+y+Londres'),

-- Publisher 14 (Books 53-56) - Verde Bosque
(53, 'https://placehold.co/400x600/2e8b57/ffffff?text=Un+mundo+feliz'),
(54, 'https://placehold.co/400x600/2e8b57/ffffff?text=Las+puertas+de+la+percepcion'),
(55, 'https://placehold.co/400x600/2e8b57/ffffff?text=Contrapunto'),
(56, 'https://placehold.co/400x600/2e8b57/ffffff?text=Isla'),

-- Publisher 15 (Books 57-60) - Ciruela Oscuro
(57, 'https://placehold.co/400x600/483d8b/ffffff?text=Fahrenheit+451'),
(58, 'https://placehold.co/400x600/483d8b/ffffff?text=Cronicas+marcianas'),
(59, 'https://placehold.co/400x600/483d8b/ffffff?text=El+hombre+ilustrado'),
(60, 'https://placehold.co/400x600/483d8b/ffffff?text=El+vino+del+estio'),

-- Publisher 16 (Books 61-64) - Azul Prusia
(61, 'https://placehold.co/400x600/1c3144/ffffff?text=El+guardian+entre+el+centeno'),
(62, 'https://placehold.co/400x600/1c3144/ffffff?text=Nueve+cuentos'),
(63, 'https://placehold.co/400x600/1c3144/ffffff?text=Franny+y+Zooey'),
(64, 'https://placehold.co/400x600/1c3144/ffffff?text=Levantad+carpinteros+la+viga'),

-- Publisher 17 (Books 65-68) - Salvia Desaturado
(65, 'https://placehold.co/400x600/a0522d/ffffff?text=El+gran+Gatsby'),
(66, 'https://placehold.co/400x600/a0522d/ffffff?text=A+este+lado+del+paraiso'),
(67, 'https://placehold.co/400x600/a0522d/ffffff?text=Suave+es+la+noche'),
(68, 'https://placehold.co/400x600/a0522d/ffffff?text=Hermosos+y+malditos'),

-- Publisher 18 (Books 69-72) - Denim Oscuro
(69, 'https://placehold.co/400x600/2b4c7e/ffffff?text=El+viejo+y+el+mar'),
(70, 'https://placehold.co/400x600/2b4c7e/ffffff?text=Por+quien+doblan+las+campanas'),
(71, 'https://placehold.co/400x600/2b4c7e/ffffff?text=Fiesta'),
(72, 'https://placehold.co/400x600/2b4c7e/ffffff?text=Adios+a+las+armas'),

-- Publisher 19 (Books 73-76) - Berenjena
(73, 'https://placehold.co/400x600/4a154b/ffffff?text=Al+faro'),
(74, 'https://placehold.co/400x600/4a154b/ffffff?text=La+senora+Dalloway'),
(75, 'https://placehold.co/400x600/4a154b/ffffff?text=Las+olas'),
(76, 'https://placehold.co/400x600/4a154b/ffffff?text=Orlando'),

-- Publisher 20 (Books 77-80) - Carbón Intenso
(77, 'https://placehold.co/400x600/232b2b/ffffff?text=La+metamorfosis'),
(78, 'https://placehold.co/400x600/232b2b/ffffff?text=El+proceso'),
(79, 'https://placehold.co/400x600/232b2b/ffffff?text=El+castillo'),
(80, 'https://placehold.co/400x600/232b2b/ffffff?text=Carta+al+padre'),

-- Repetimos ciclo de paleta elegante para mantener consistencia visual limpia

-- Publisher 21 (Books 81-84) - Azul Coral
(81, 'https://placehold.co/400x600/34495e/ffffff?text=Ulises'),
(82, 'https://placehold.co/400x600/34495e/ffffff?text=Dublineses'),
(83, 'https://placehold.co/400x600/34495e/ffffff?text=Retrato+del+artista+adolescente'),
(84, 'https://placehold.co/400x600/34495e/ffffff?text=Finnegans+Wake'),

-- Publisher 22 (Books 85-88) - Verde Esmeralda Suave
(85, 'https://placehold.co/400x600/16a085/ffffff?text=En+busca+del+tiempo+perdido+1'),
(86, 'https://placehold.co/400x600/16a085/ffffff?text=En+busca+del+tiempo+perdido+2'),
(87, 'https://placehold.co/400x600/16a085/ffffff?text=En+busca+del+tiempo+perdido+3'),
(88, 'https://placehold.co/400x600/16a085/ffffff?text=En+busca+del+tiempo+perdido+4'),

-- Publisher 23 (Books 89-92) - Rojo Terracota
(89, 'https://placehold.co/400x600/c0392b/ffffff?text=El+extranjero'),
(90, 'https://placehold.co/400x600/c0392b/ffffff?text=La+peste'),
(91, 'https://placehold.co/400x600/c0392b/ffffff?text=El+mito+de+Sisifo'),
(92, 'https://placehold.co/400x600/c0392b/ffffff?text=El+hombre+rebelde'),

-- Publisher 24 (Books 93-96) - Morado Elegante
(93, 'https://placehold.co/400x600/8e44ad/ffffff?text=El+principito'),
(94, 'https://placehold.co/400x600/8e44ad/ffffff?text=Vuelo+de+noche'),
(95, 'https://placehold.co/400x600/8e44ad/ffffff?text=Tierra+de+hombres'),
(96, 'https://placehold.co/400x600/8e44ad/ffffff?text=Piloto+de+guerra'),

-- Publisher 25 (Books 97-100) - Ocre / Mostaza Oscuro
(97, 'https://placehold.co/400x600/d35400/ffffff?text=Ensayo+sobre+la+ceguera'),
(98, 'https://placehold.co/400x600/d35400/ffffff?text=El+evangelio+segun+Jesucristo'),
(99, 'https://placehold.co/400x600/d35400/ffffff?text=Las+intermitencias+de+la+muerte'),
(100, 'https://placehold.co/400x600/d35400/ffffff?text=Memorial+del+convento'),

-- Publisher 26 (Books 101-104) - Azul Midnight
(101, 'https://placehold.co/400x600/2c3e50/ffffff?text=Moby+Dick'),
(102, 'https://placehold.co/400x600/2c3e50/ffffff?text=Bartleby+el+escribano'),
(103, 'https://placehold.co/400x600/2c3e50/ffffff?text=Benito+Cereno'),
(104, 'https://placehold.co/400x600/2c3e50/ffffff?text=Billy+Budd+marinero'),

-- Publisher 27 (Books 105-108) - Gris Azulado
(105, 'https://placehold.co/400x600/7f8c8d/ffffff?text=Hojas+de+hierba'),
(106, 'https://placehold.co/400x600/7f8c8d/ffffff?text=Perspectivas+democraticas'),
(107, 'https://placehold.co/400x600/7f8c8d/ffffff?text=Canto+a+mi+mismo'),
(108, 'https://placehold.co/400x600/7f8c8d/ffffff?text=Dias+ejemplares'),

-- Publisher 28 (Books 109-112) - Borgoña / Vino
(109, 'https://placehold.co/400x600/6b1d2f/ffffff?text=Poeta+en+Nueva+York'),
(110, 'https://placehold.co/400x600/6b1d2f/ffffff?text=Romancero+gitano'),
(111, 'https://placehold.co/400x600/6b1d2f/ffffff?text=Bodas+de+sangre'),
(112, 'https://placehold.co/400x600/6b1d2f/ffffff?text=La+casa+de+Bernarda+Alba'),

-- Publisher 29 (Books 113-116) - Verde Oliva
(113, 'https://placehold.co/400x600/4a5d4e/ffffff?text=Azul'),
(114, 'https://placehold.co/400x600/4a5d4e/ffffff?text=Cantos+de+vida+y+esperanza'),
(115, 'https://placehold.co/400x600/4a5d4e/ffffff?text=Prosas+profanas'),
(116, 'https://placehold.co/400x600/4a5d4e/ffffff?text=El+canto+errante'),

-- Publisher 30 (Books 117-120) - Café Chocolate
(117, 'https://placehold.co/400x600/5c4033/ffffff?text=Las+flores+del+mal'),
(118, 'https://placehold.co/400x600/5c4033/ffffff?text=El+Spleen+de+Paris'),
(119, 'https://placehold.co/400x600/5c4033/ffffff?text=Los+paraisos+artificiales'),
(120, 'https://placehold.co/400x600/5c4033/ffffff?text=Critica+de+arte'),

-- Publisher 31 (Books 121-124) - Azul Acero
(121, 'https://placehold.co/400x600/4682b4/ffffff?text=El+retrato+de+Dorian+Gray'),
(122, 'https://placehold.co/400x600/4682b4/ffffff?text=La+importancia+de+llamarse+Ernesto'),
(123, 'https://placehold.co/400x600/4682b4/ffffff?text=De+profundis'),
(124, 'https://placehold.co/400x600/4682b4/ffffff?text=El+fantasma+de+Canterville'),

-- Publisher 32 (Books 125-128) - Violeta Oscuro
(125, 'https://placehold.co/400x600/4b0082/ffffff?text=Alicia+en+el+pais+de+las+maravillas'),
(126, 'https://placehold.co/400x600/4b0082/ffffff?text=A+traves+del+espejo'),
(127, 'https://placehold.co/400x600/4b0082/ffffff?text=La+caza+del+Snark'),
(128, 'https://placehold.co/400x600/4b0082/ffffff?text=El+juego+de+la+logica'),

-- Publisher 33 (Books 129-132) - Teja Mate
(129, 'https://placehold.co/400x600/b22222/ffffff?text=Dracula'),
(130, 'https://placehold.co/400x600/b22222/ffffff?text=La+joya+de+las+siete+estrellas'),
(131, 'https://placehold.co/400x600/b22222/ffffff?text=La+madriguera+del+Gusano+Blanco'),
(132, 'https://placehold.co/400x600/b22222/ffffff?text=El+invitado+de+Dracula'),

-- Publisher 34 (Books 133-136) - Verde Bosque
(133, 'https://placehold.co/400x600/2e8b57/ffffff?text=Frankenstein'),
(134, 'https://placehold.co/400x600/2e8b57/ffffff?text=El+ultimo+hombre'),
(135, 'https://placehold.co/400x600/2e8b57/ffffff?text=Lodore'),
(136, 'https://placehold.co/400x600/2e8b57/ffffff?text=Mathilda'),

-- Publisher 35 (Books 137-140) - Ciruela Oscuro
(137, 'https://placehold.co/400x600/483d8b/ffffff?text=El+extrano+caso+del+dr+Jekyll'),
(138, 'https://placehold.co/400x600/483d8b/ffffff?text=La+isla+del+tesoro'),
(139, 'https://placehold.co/400x600/483d8b/ffffff?text=Secuestrado'),
(140, 'https://placehold.co/400x600/483d8b/ffffff?text=El+senor+de+Ballantrae'),

-- Publisher 36 (Books 141-144) - Azul Prusia
(141, 'https://placehold.co/400x600/1c3144/ffffff?text=La+maquina+del+tiempo'),
(142, 'https://placehold.co/400x600/1c3144/ffffff?text=La+guerra+de+los+mundos'),
(143, 'https://placehold.co/400x600/1c3144/ffffff?text=El+hombre+invisible'),
(144, 'https://placehold.co/400x600/1c3144/ffffff?text=La+isla+del+doctor+Moreau'),

-- Publisher 37 (Books 145-148) - Salvia Desaturado
(145, 'https://placehold.co/400x600/a0522d/ffffff?text=Estudio+en+escarlata'),
(146, 'https://placehold.co/400x600/a0522d/ffffff?text=El+signo+de+los+cuatro'),
(147, 'https://placehold.co/400x600/a0522d/ffffff?text=El+sabueso+de+los+Baskerville'),
(148, 'https://placehold.co/400x600/a0522d/ffffff?text=El+valle+del+terror'),

-- Publisher 38 (Books 149-152) - Denim Oscuro
(149, 'https://placehold.co/400x600/2b4c7e/ffffff?text=Narraciones+extraordinarias'),
(150, 'https://placehold.co/400x600/2b4c7e/ffffff?text=Las+aventuras+de+Arthur+Gordon+Pym'),
(151, 'https://placehold.co/400x600/2b4c7e/ffffff?text=El+cuervo+y+otros+poemas'),
(152, 'https://placehold.co/400x600/2b4c7e/ffffff?text=Eureka'),

-- Publisher 39 (Books 153-156) - Berenjena
(153, 'https://placehold.co/400x600/4a154b/ffffff?text=El+senor+de+los+anillos+1'),
(154, 'https://placehold.co/400x600/4a154b/ffffff?text=El+senor+de+los+anillos+2'),
(155, 'https://placehold.co/400x600/4a154b/ffffff?text=El+senor+de+los+anillos+3'),
(156, 'https://placehold.co/400x600/4a154b/ffffff?text=El+hobbit'),

-- Publisher 40 (Books 157-160) - Carbón Intenso
(157, 'https://placehold.co/400x600/232b2b/ffffff?text=Las+cronicas+de+Narnia+1'),
(158, 'https://placehold.co/400x600/232b2b/ffffff?text=Las+cronicas+de+Narnia+2'),
(159, 'https://placehold.co/400x600/232b2b/ffffff?text=Las+cronicas+de+Narnia+3'),
(160, 'https://placehold.co/400x600/232b2b/ffffff?text=El+problema+del+dolor'),

-- Publisher 41 (Books 161-164) - Azul Coral
(161, 'https://placehold.co/400x600/34495e/ffffff?text=La+divina+comedia'),
(162, 'https://placehold.co/400x600/34495e/ffffff?text=Vida+nueva'),
(163, 'https://placehold.co/400x600/34495e/ffffff?text=De+la+monarquia'),
(164, 'https://placehold.co/400x600/34495e/ffffff?text=El+convite'),

-- Publisher 42 (Books 165-168) - Verde Esmeralda Suave
(165, 'https://placehold.co/400x600/16a085/ffffff?text=Cancionero'),
(166, 'https://placehold.co/400x600/16a085/ffffff?text=Africa'),
(167, 'https://placehold.co/400x600/16a085/ffffff?text=Triunfos'),
(168, 'https://placehold.co/400x600/16a085/ffffff?text=Mi+secreto'),

-- Publisher 43 (Books 169-172) - Rojo Terracota
(169, 'https://placehold.co/400x600/c0392b/ffffff?text=El+decameron'),
(170, 'https://placehold.co/400x600/c0392b/ffffff?text=Elegia+de+dona+Fiammeta'),
(171, 'https://placehold.co/400x600/c0392b/ffffff?text=El+corbacho'),
(172, 'https://placehold.co/400x600/c0392b/ffffff?text=Filostrato'),

-- Publisher 44 (Books 173-176) - Morado Elegante
(173, 'https://placehold.co/400x600/8e44ad/ffffff?text=Asi+hablo+Zaratustra'),
(174, 'https://placehold.co/400x600/8e44ad/ffffff?text=Mas+alla+del+bien+y+del+mal'),
(175, 'https://placehold.co/400x600/8e44ad/ffffff?text=La+genealogia+de+la+moral'),
(176, 'https://placehold.co/400x600/8e44ad/ffffff?text=El+crepusculo+de+los+idolos'),

-- Publisher 45 (Books 177-180) - Ocre / Mostaza Oscuro
(177, 'https://placehold.co/400x600/d35400/ffffff?text=Critica+de+la+razon+pura'),
(178, 'https://placehold.co/400x600/d35400/ffffff?text=Critica+de+la+razon+practica'),
(179, 'https://placehold.co/400x600/d35400/ffffff?text=Critica+del+juicio'),
(180, 'https://placehold.co/400x600/d35400/ffffff?text=Fundamentacion+de+la+metafisica'),

-- Publisher 46 (Books 181-184) - Azul Midnight
(181, 'https://placehold.co/400x600/2c3e50/ffffff?text=Discurso+del+metodo'),
(182, 'https://placehold.co/400x600/2c3e50/ffffff?text=Meditaciones+metafisicas'),
(183, 'https://placehold.co/400x600/2c3e50/ffffff?text=Las+pasiones+del+alma'),
(184, 'https://placehold.co/400x600/2c3e50/ffffff?text=Reglas+para+la+direccion+de+la+mente'),

-- Publisher 47 (Books 185-188) - Gris Azulado
(185, 'https://placehold.co/400x600/7f8c8d/ffffff?text=El+contrato+social'),
(186, 'https://placehold.co/400x600/7f8c8d/ffffff?text=Emilio+o+De+la+educacion'),
(187, 'https://placehold.co/400x600/7f8c8d/ffffff?text=Las+devaneos+del+paseante+solitario'),
(188, 'https://placehold.co/400x600/7f8c8d/ffffff?text=Origen+de+la+desigualdad'),

-- Publisher 48 (Books 189-192) - Borgoña / Vino
(189, 'https://placehold.co/400x600/6b1d2f/ffffff?text=Leviatan'),
(190, 'https://placehold.co/400x600/6b1d2f/ffffff?text=De+Cive'),
(191, 'https://placehold.co/400x600/6b1d2f/ffffff?text=Elementos+de+derecho+natural'),
(192, 'https://placehold.co/400x600/6b1d2f/ffffff?text=Behemoth'),

-- Publisher 49 (Books 193-196) - Verde Oliva
(193, 'https://placehold.co/400x600/4a5d4e/ffffff?text=Dos+tratados+sobre+el+gobierno+civil'),
(194, 'https://placehold.co/400x600/4a5d4e/ffffff?text=Ensayo+sobre+el+entendimiento+humano'),
(195, 'https://placehold.co/400x600/4a5d4e/ffffff?text=Carta+sobre+la+tolerancia'),
(196, 'https://placehold.co/400x600/4a5d4e/ffffff?text=Pensamientos+sobre+la+educacion'),

-- Publisher 50 (Books 197-200) - Café Chocolate
(197, 'https://placehold.co/400x600/5c4033/ffffff?text=El+capital+Vol+1'),
(198, 'https://placehold.co/400x600/5c4033/ffffff?text=Manifiesto+del+Partido+Comunista'),
(199, 'https://placehold.co/400x600/5c4033/ffffff?text=El+dieciocho+Brumario'),
(200, 'https://placehold.co/400x600/5c4033/ffffff?text=Manuscritos+economicos+y+filosoficos');

-- insert en la tabla de authores
INSERT INTO author (name)
VALUES ('Gabriel García Márquez'),   -- Libros 1-4
       ('Miguel de Cervantes'),      -- Libros 5-8
       ('Jorge Luis Borges'),        -- Libros 9-12
       ('Juan Rulfo'),               -- Libros 13-16
       ('Julio Cortázar'),           -- Libros 17-20
       ('Mario Vargas Llosa'),       -- Libros 21-24
       ('Isabel Allende'),           -- Libros 25-28
       ('Carlos Ruiz Zafón'),        -- Libros 29-32
       ('Octavio Paz'),              -- Libros 33-36
       ('Roberto Bolaño'),           -- Libros 37-40
       ('Jane Austen'),              -- Libros 41-44
       ('Fiódor Dostoyevski'),       -- Libros 45-48
       ('George Orwell'),            -- Libros 49-52
       ('Aldous Huxley'),            -- Libros 53-56
       ('Ray Bradbury'),             -- Libros 57-60
       ('J.D. Salinger'),            -- Libros 61-64
       ('F. Scott Fitzgerald'),      -- Libros 65-68
       ('Ernest Hemingway'),         -- Libros 69-72
       ('Virginia Woolf'),           -- Libros 73-76
       ('Franz Kafka'),              -- Libros 77-80
       ('James Joyce'),              -- Libros 81-84
       ('Marcel Proust'),            -- Libros 85-88
       ('Albert Camus'),             -- Libros 89-92
       ('Antoine de Saint-Exupéry'), -- Libros 93-96
       ('José Saramago'),            -- Libros 97-100
       ('Herman Melville'),          -- Libros 101-104
       ('Walt Whitman'),             -- Libros 105-108
       ('Federico García Lorca'),    -- Libros 109-112
       ('Rubén Darío'),              -- Libros 113-116
       ('Charles Baudelaire'),       -- Libros 117-120
       ('Oscar Wilde'),              -- Libros 121-124
       ('Lewis Carroll'),            -- Libros 125-128
       ('Bram Stoker'),              -- Libros 129-132
       ('Mary Shelley'),             -- Libros 133-136
       ('Robert Louis Stevenson'),   -- Libros 137-140
       ('H.G. Wells'),               -- Libros 141-144
       ('Arthur Conan Doyle'),       -- Libros 145-148
       ('Edgar Allan Poe'),          -- Libros 149-152
       ('J.R.R. Tolkien'),           -- Libros 153-156
       ('C.S. Lewis'),               -- Libros 157-160
       ('Dante Alighieri'),          -- Libros 161-164
       ('Francesco Petrarca'),       -- Libros 165-168
       ('Giovanni Boccaccio'),       -- Libros 169-172
       ('Friedrich Nietzsche'),      -- Libros 173-176
       ('Immanuel Kant'),            -- Libros 177-180
       ('René Descartes'),           -- Libros 181-184
       ('Jean-Jacques Rousseau'),    -- Libros 185-188
       ('Thomas Hobbes'),            -- Libros 189-192
       ('John Locke'),               -- Libros 193-196
       ('Karl Marx');
-- Libros 197-200

-- insert en la tabla book_author
INSERT INTO book_author (id_book, id_author)
VALUES
-- Gabriel García Márquez (Author 1)
(1, 1),
(2, 1),
(3, 1),
(4, 1),

-- Miguel de Cervantes (Author 2)
(5, 2),
(6, 2),
(7, 2),
(8, 2),

-- Jorge Luis Borges (Author 3)
(9, 3),
(10, 3),
(11, 3),
(12, 3),

-- Juan Rulfo (Author 4)
(13, 4),
(14, 4),
(15, 4),
(16, 4),

-- Julio Cortázar (Author 5)
(17, 5),
(18, 5),
(19, 5),
(20, 5),

-- Mario Vargas Llosa (Author 6)
(21, 6),
(22, 6),
(23, 6),
(24, 6),

-- Isabel Allende (Author 7)
(25, 7),
(26, 7),
(27, 7),
(28, 7),

-- Carlos Ruiz Zafón (Author 8)
(29, 8),
(30, 8),
(31, 8),
(32, 8),

-- Octavio Paz (Author 9)
(33, 9),
(34, 9),
(35, 9),
(36, 9),

-- Roberto Bolaño (Author 10)
(37, 10),
(38, 10),
(39, 10),
(40, 10),

-- Jane Austen (Author 11)
(41, 11),
(42, 11),
(43, 11),
(44, 11),

-- Fiódor Dostoyevski (Author 12)
(45, 12),
(46, 12),
(47, 12),
(48, 12),

-- George Orwell (Author 13)
(49, 13),
(50, 13),
(51, 13),
(52, 13),

-- Aldous Huxley (Author 14)
(53, 14),
(54, 14),
(55, 14),
(56, 14),

-- Ray Bradbury (Author 15)
(57, 15),
(58, 15),
(59, 15),
(60, 15),

-- J.D. Salinger (Author 16)
(61, 16),
(62, 16),
(63, 16),
(64, 16),

-- F. Scott Fitzgerald (Author 17)
(65, 17),
(66, 17),
(67, 17),
(68, 17),

-- Ernest Hemingway (Author 18)
(69, 18),
(70, 18),
(71, 18),
(72, 18),

-- Virginia Woolf (Author 19)
(73, 19),
(74, 19),
(75, 19),
(76, 19),

-- Franz Kafka (Author 20)
(77, 20),
(78, 20),
(79, 20),
(80, 20),

-- James Joyce (Author 21)
(81, 21),
(82, 21),
(83, 21),
(84, 21),

-- Marcel Proust (Author 22)
(85, 22),
(86, 22),
(87, 22),
(88, 22),

-- Albert Camus (Author 23)
(89, 23),
(90, 23),
(91, 23),
(92, 23),

-- Antoine de Saint-Exupéry (Author 24)
(93, 24),
(94, 24),
(95, 24),
(96, 24),

-- José Saramago (Author 25)
(97, 25),
(98, 25),
(99, 25),
(100, 25),

-- Herman Melville (Author 26)
(101, 26),
(102, 26),
(103, 26),
(104, 26),

-- Walt Whitman (Author 27)
(105, 27),
(106, 27),
(107, 27),
(108, 27),

-- Federico García Lorca (Author 28)
(109, 28),
(110, 28),
(111, 28),
(112, 28),

-- Rubén Darío (Author 29)
(113, 29),
(114, 29),
(115, 29),
(116, 29),

-- Charles Baudelaire (Author 30)
(117, 30),
(118, 30),
(119, 30),
(120, 30),

-- Oscar Wilde (Author 31)
(121, 31),
(122, 31),
(123, 31),
(124, 31),

-- Lewis Carroll (Author 32)
(125, 32),
(126, 32),
(127, 32),
(128, 32),

-- Bram Stoker (Author 33)
(129, 33),
(130, 33),
(131, 33),
(132, 33),

-- Mary Shelley (Author 34)
(133, 34),
(134, 34),
(135, 34),
(136, 34),

-- Robert Louis Stevenson (Author 35)
(137, 35),
(138, 35),
(139, 35),
(140, 35),

-- H.G. Wells (Author 36)
(141, 36),
(142, 36),
(143, 36),
(144, 36),

-- Arthur Conan Doyle (Author 37)
(145, 37),
(146, 37),
(147, 37),
(148, 37),

-- Edgar Allan Poe (Author 38)
(149, 38),
(150, 38),
(151, 38),
(152, 38),

-- J.R.R. Tolkien (Author 39)
(153, 39),
(154, 39),
(155, 39),
(156, 39),

-- C.S. Lewis (Author 40)
(157, 40),
(158, 40),
(159, 40),
(160, 40),

-- Dante Alighieri (Author 41)
(161, 41),
(162, 41),
(163, 41),
(164, 41),

-- Francesco Petrarca (Author 42)
(165, 42),
(166, 42),
(167, 42),
(168, 42),

-- Giovanni Boccaccio (Author 43)
(169, 43),
(170, 43),
(171, 43),
(172, 43),

-- Friedrich Nietzsche (Author 44)
(173, 44),
(174, 44),
(175, 44),
(176, 44),

-- Immanuel Kant (Author 45)
(177, 45),
(178, 45),
(179, 45),
(180, 45),

-- René Descartes (Author 46)
(181, 46),
(182, 46),
(183, 46),
(184, 46),

-- Jean-Jacques Rousseau (Author 47)
(185, 47),
(186, 47),
(187, 47),
(188, 47),

-- Thomas Hobbes (Author 48)
(189, 48),
(190, 48),
(191, 48),
(192, 48),

-- John Locke (Author 49)
(193, 49),
(194, 49),
(195, 49),
(196, 49),

-- Karl Marx (Author 50)
(197, 50),
(198, 50),
(199, 50),
(200, 50);

-- insert en la tabla category
INSERT INTO category (name)
VALUES ('Novela Contemporánea'),
       ('Literatura Clásica'),
       ('Realismo Mágico'),
       ('Ficción Histórica'),
       ('Ciencia Ficción'),
       ('Fantasía Épica'),
       ('Terror Gótico'),
       ('Misterio y Policiaco'),
       ('Filosofía Occidental'),
       ('Poesía Moderna'),
       ('Ensayos Literarios'),
       ('Teatro y Drama'),
       ('Literatura Infantil y Juvenil'),
       ('Sociología y Política'),
       ('Biografía y Autobiografía'),
       ('Crónica y Testimonio'),
       ('Cuento y Relato Corto'),
       ('Economía Política'),
       ('Epopeya y Mitología'),
       ('Renacimiento y Humanismo'),
       ('Existencialismo'),
       ('Distopía'),
       ('Sátira y Comedia'),
       ('Pedagogía y Educación'),
       ('Teología y Religión'),
       ('Epistolar'),
       ('Literatura Vanguardista'),
       ('Estética y Crítica de Arte'),
       ('Aventuras Marítimas'),
       ('Metafísica y Epistemología');

-- insert en la tabla book_category
INSERT INTO book_category (id_book, id_category)
VALUES
-- Publisher 1 (Gabriel García Márquez) -> Realismo Mágico (3) / Novela Contemporánea (1)
(1, 3),
(2, 3),
(3, 1),
(4, 3),

-- Publisher 2 (Miguel de Cervantes) -> Literatura Clásica (2)
(5, 2),
(6, 2),
(7, 2),
(8, 2),

-- Publisher 3 (Jorge Luis Borges) -> Cuento y Relato Corto (17) / Ensayos Literarios (11)
(9, 17),
(10, 17),
(11, 17),
(12, 11),

-- Publisher 4 (Juan Rulfo) -> Realismo Mágico (3) / Cuento y Relato Corto (17)
(13, 3),
(14, 17),
(15, 3),
(16, 26),

-- Publisher 5 (Julio Cortázar) -> Novela Contemporánea (1) / Cuento y Relato Corto (17)
(17, 1),
(18, 17),
(19, 17),
(20, 17),

-- Publisher 6 (Mario Vargas Llosa) -> Novela Contemporánea (1) / Sátira y Comedia (23)
(21, 1),
(22, 1),
(23, 1),
(24, 23),

-- Publisher 7 (Isabel Allende) -> Novela Contemporánea (1) / Ficción Histórica (4)
(25, 1),
(26, 4),
(27, 1),
(28, 1),

-- Publisher 8 (Carlos Ruiz Zafón) -> Misterio y Policiaco (8)
(29, 8),
(30, 8),
(31, 8),
(32, 8),

-- Publisher 9 (Octavio Paz) -> Ensayos Literarios (11) / Biografía y Autobiografía (15)
(33, 11),
(34, 11),
(35, 11),
(36, 15),

-- Publisher 10 (Roberto Bolaño) -> Novela Contemporánea (1)
(37, 1),
(38, 1),
(39, 1),
(40, 1),

-- Publisher 11 (Jane Austen) -> Literatura Clásica (2)
(41, 2),
(42, 2),
(43, 2),
(44, 2),

-- Publisher 12 (Fiódor Dostoyevski) -> Literatura Clásica (2)
(45, 2),
(46, 2),
(47, 2),
(48, 2),

-- Publisher 13 (George Orwell) -> Distopía (22) / Crónica y Testimonio (16)
(49, 22),
(50, 23),
(51, 16),
(52, 16),

-- Publisher 14 (Aldous Huxley) -> Distopía (22) / Ensayos Literarios (11)
(53, 22),
(54, 11),
(55, 11),
(56, 22),

-- Publisher 15 (Ray Bradbury) -> Ciencia Ficción (5) / Cuento y Relato Corto (17)
(57, 5),
(58, 5),
(59, 17),
(60, 5),

-- Publisher 16 (J.D. Salinger) -> Novela Contemporánea (1) / Cuento y Relato Corto (17)
(61, 1),
(62, 17),
(63, 17),
(64, 17),

-- Publisher 17 (F. Scott Fitzgerald) -> Literatura Clásica (2)
(65, 2),
(66, 2),
(67, 2),
(68, 2),

-- Publisher 18 (Ernest Hemingway) -> Literatura Clásica (2) / Novela Contemporánea (1)
(69, 2),
(70, 1),
(71, 1),
(72, 1),

-- Publisher 19 (Virginia Woolf) -> Literatura Vanguardista (27) / Literatura Clásica (2)
(73, 27),
(74, 27),
(75, 27),
(76, 27),

-- Publisher 20 (Franz Kafka) -> Literatura Clásica (2) / Epistolar (26)
(77, 2),
(78, 2),
(79, 2),
(80, 26),

-- Publisher 21 (James Joyce) -> Literatura Vanguardista (27) / Cuento y Relato Corto (17)
(81, 27),
(82, 17),
(83, 27),
(84, 27),

-- Publisher 22 (Marcel Proust) -> Literatura Clásica (2)
(85, 2),
(86, 2),
(87, 2),
(88, 2),

-- Publisher 23 (Albert Camus) -> Existencialismo (21) / Ensayos Literarios (11)
(89, 21),
(90, 21),
(91, 11),
(92, 11),

-- Publisher 24 (Antoine de Saint-Exupéry) -> Literatura Infantil y Juvenil (13) / Crónica y Testimonio (16)
(93, 13),
(94, 16),
(95, 16),
(96, 16),

-- Publisher 25 (José Saramago) -> Novela Contemporánea (1)
(97, 1),
(98, 1),
(99, 1),
(100, 1),

-- Publisher 26 (Herman Melville) -> Aventuras Marítimas (29) / Cuento y Relato Corto (17)
(101, 29),
(102, 17),
(103, 29),
(104, 29),

-- Publisher 27 (Walt Whitman) -> Poesía Moderna (10) / Ensayos Literarios (11)
(105, 10),
(106, 11),
(107, 10),
(108, 11),

-- Publisher 28 (Federico García Lorca) -> Poesía Moderna (10) / Teatro y Drama (12)
(109, 10),
(110, 10),
(111, 12),
(112, 12),

-- Publisher 29 (Rubén Darío) -> Poesía Moderna (10)
(113, 10),
(114, 10),
(115, 10),
(116, 10),

-- Publisher 30 (Charles Baudelaire) -> Poesía Moderna (10) / Estética y Crítica de Arte (28)
(117, 10),
(118, 10),
(119, 10),
(120, 28),

-- Publisher 31 (Oscar Wilde) -> Literatura Clásica (2) / Teatro y Drama (12)
(121, 2),
(122, 12),
(123, 26),
(124, 17),

-- Publisher 32 (Lewis Carroll) -> Literatura Infantil y Juvenil (13) / Filosofía Occidental (9)
(125, 13),
(126, 13),
(127, 10),
(128, 9),

-- Publisher 33 (Bram Stoker) -> Terror Gótico (7)
(129, 7),
(130, 7),
(131, 7),
(132, 17),

-- Publisher 34 (Mary Shelley) -> Terror Gótico (7) / Ciencia Ficción (5)
(133, 7),
(134, 22),
(135, 12),
(136, 17),

-- Publisher 35 (Robert Louis Stevenson) -> Terror Gótico (7) / Aventuras Marítimas (29)
(137, 7),
(138, 29),
(139, 29),
(140, 2),

-- Publisher 36 (H.G. Wells) -> Ciencia Ficción (5)
(141, 5),
(142, 5),
(143, 5),
(144, 5),

-- Publisher 37 (Arthur Conan Doyle) -> Misterio y Policiaco (8)
(145, 8),
(146, 8),
(147, 8),
(148, 8),

-- Publisher 38 (Edgar Allan Poe) -> Terror Gótico (7) / Cuento y Relato Corto (17)
(149, 17),
(150, 29),
(151, 10),
(152, 30),

-- Publisher 39 (J.R.R. Tolkien) -> Fantasía Épica (6)
(153, 6),
(154, 6),
(155, 6),
(156, 6),

-- Publisher 40 (C.S. Lewis) -> Fantasía Épica (6) / Teología y Religión (25)
(157, 6),
(158, 6),
(159, 6),
(160, 25),

-- Publisher 41 (Dante Alighieri) -> Literatura Clásica (2) / Epopeya y Mitología (19)
(161, 19),
(162, 10),
(163, 14),
(164, 9),

-- Publisher 42 (Francesco Petrarca) -> Renacimiento y Humanismo (20) / Poesía Moderna (10)
(165, 10),
(166, 19),
(167, 10),
(168, 15),

-- Publisher 43 (Giovanni Boccaccio) -> Renacimiento y Humanismo (20) / Cuento y Relato Corto (17)
(169, 17),
(170, 2),
(171, 23),
(172, 10),

-- Publisher 44 (Friedrich Nietzsche) -> Filosofía Occidental (9) / Existencialismo (21)
(173, 9),
(174, 9),
(175, 9),
(176, 9),

-- Publisher 45 (Immanuel Kant) -> Filosofía Occidental (9) / Metafísica y Epistemología (30)
(177, 30),
(178, 9),
(179, 28),
(180, 9),

-- Publisher 46 (René Descartes) -> Filosofía Occidental (9) / Metafísica y Epistemología (30)
(181, 30),
(182, 30),
(183, 9),
(184, 30),

-- Publisher 47 (Jean-Jacques Rousseau) -> Filosofía Occidental (9) / Pedagogía y Educación (24)
(185, 14),
(186, 24),
(187, 15),
(188, 14),

-- Publisher 48 (Thomas Hobbes) -> Filosofía Occidental (9) / Sociología y Política (14)
(189, 14),
(190, 14),
(191, 14),
(192, 4),

-- Publisher 49 (John Locke) -> Filosofía Occidental (9) / Sociología y Política (14)
(193, 14),
(194, 30),
(195, 25),
(196, 24),

-- Publisher 50 (Karl Marx) -> Economía Política (18) / Sociología y Política (14)
(197, 18),
(198, 14),
(199, 14),
(200, 9);
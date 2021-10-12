# Primero iniciamos con la creacion de la base de datos, en este caso la base de dato se llama "Proyecto_amass"
create database Proyecto_amass;

# Luego seleccionamos la base de datos con el comando use para poder trabajar la base de datos 
use Proyecto_amass;

# Empezamos a crear las tablas de la base de datos para poder ingresar los datos pedidos 
create table estudiante
( id_estudiante int UNSIGNED not null,
Nombre_estudiante varchar(50),
Rut_estudiante int UNSIGNED not null,
Curso_estudiante varchar(45),
Telefono int UNSIGNED not null,
primary key (id_estudiante));

#tabla docente
create table docente
(id_docente int UNSIGNED not null,
Nombre_docente varchar (50),
Rut_docente int UNSIGNED not null,
Telefono int UNSIGNED not null,
primary key (id_docente));

#tabla encargado 
create table encargado
(id_encargado int UNSIGNED not null,
Nombre_encargado varchar (50),
Rut_encargado int UNSIGNED not null,
Telefono int UNSIGNED not null,
primary key (id_encargado));

#tabla libros
create table libros
(id_libro int UNSIGNED not null,
Nombre_libro varchar(45)not null,
Nombre_editorial varchar(45)not null,
Autores varchar(45)not null,
Estado_libro varchar(45)not null,
Cantidad_libros int UNSIGNED not null,
primary key (id_libro));


#tabla prestamos_estudiantes
create table prestamos_estudiante
(id_prestamo_Estudiante int UNSIGNED not null,
id_estudiante int UNSIGNED not null,
id_libro int UNSIGNED not null,
id_encargado int UNSIGNED not null,
fecha_prestamo date  not null, 
fecha_devolucion date not null,
primary key (id_prestamo_estudiante),
foreign key (id_estudiante) references estudiante (id_estudiante),
foreign key (id_libro) references libros (id_libro),
foreign key (id_encargado) references encargado (id_encargado));


#tabla prestamos_docentes
create table prestamos_docentes
(id_prestamo_docentes int UNSIGNED not null,
id_libro int UNSIGNED not null,
id_docente int UNSIGNED not null ,
id_encargado int UNSIGNED not null,
fecha_prestamo date not null, 
fecha_devolucion date not null,
primary key (id_prestamo_docentes),
foreign key (id_libro) references libros (id_libro),
foreign key (id_docente) references docente (id_docente),
foreign key (id_encargado) references encargado (id_encargado));


#Creamos con el comando insert datos para insertarlos en cada tabla correspondiente altere
#  insert estudiente
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (1,'Martina Araya',212298492, 986498453,"7mo a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (2,'José González',205400074, 979827331,"7mo a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (3,'Victor Rodríguez',208352563, 913279873,"7mo a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (4,'Carlos Vega',1405891238, 946353245,"7mo a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (5,'Jorge Fuenzalida',171556996, 953634243,"7mo a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (6,'Sebastian Estay',165544299, 951108621,"7mo b");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (7,'Hector Fernández',120529200, 908621115,"7mo b");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (8,'Luis López',107546482, 911284672,"7mo b");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (9,'Milena Lucero',135230383, 984671212,"7mo b");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (10,'Felipe Quiroga',208560859, 953798128,"6to a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (11,'Sergio Reyes',222278354, 998123785,"6to a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (12,'María Vera',239471900, 957568332,"6to a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (13,'Camila Martínez',142684506, 968337552,"6to a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (14,'Carolina Pérez',194640803, 967035196,"6to a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (15,'Javiera Ruiz',247604243, 919350567,"6to b");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (16,'Ana Silva',211656785, 938017922,"6to b");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (17,'Manuela Romero',159969320, 917928032,"6to b");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (18,'Constanza Sánchez',136217569, 932108401,"6to b");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (19,'Valentina Diaz',101868362, 908041213,"6to b");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (20,'Martin Benítez',171443458, 973088850,"5to a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (21,'Andy Ramírez',113333715, 985880379,"5to a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (22,'Miguel Gómez',190728242, 946187484,"5to a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (23,'Vicente Flores',145331420, 948786105,"5to a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (24,'Diego Cordero',216077571, 925322206,"5to a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (25,'Catalina Lazcano',68892597, 922023265,"1ro a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (26,'Jeremy Cruz',214888882, 959647228,"1ro a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (27,'Alejandro Hernandez',239198848, 947229586,"1ro a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (28,'Josefa Herrera',141891588, 916434272,"1ro a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (29,'Jeimy Saa',233901938, 927346412,"1ro a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (30,'Pia Mendoza',200988221, 925967193,"1ro b");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (31,'Jesus Barraza',90392190, 972454776,"1ro b");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (32,'Juan Pablo Ibaceta',228575550, 977542448,"1ro b");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (33,'Raul Muñoz',194109946, 928201643,"1ro b");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (34,'Daniela Carvallo',219687222, 964012869,"1ro b");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (35,'Consuelo Ureta',59291750, 994078831,"2do a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (36,'Ignacia Jimenez',106975078, 983874903,"2do a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (37,'Cristián Figueroa',107433686, 993377307,"2do a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (38,'Antonio Lizana',235733102, 977303397,"2do a");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (39,'Paula Tapia',126004958, 913577984,"2do b");
insert into Estudiante(id_estudiante,Nombre_estudiante,Rut_estudiante,Telefono,Curso_estudiante) values (40,'Dominique Creixell',236347583, 951689211,"2do b");


#  insert docente 
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (1,'Juan Rojas',182298409, 967924288);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (2,'Jeniffer Liras',216070631, 976008160);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (3,'Bastian Estay',126862792, 948140965);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (4,'Dhilan muñoz',94741297, 929476260);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (5,'Joel Rojas',221117603, 996594194);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (6,'Maria vera',157829807, 900095909);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (7,'Patricia Reyes',71547442, 996449496);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (8,'Francisco Estay',73720168, 912981640);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (9,'Jeorge Vega',124161738, 953786941);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (10,'Matias Rojas',111444242, 998090605);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (11,'Matias Rojas',174834957, 931644894);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (12,'Matias Rojas',171850665, 946397620);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (13,'Matias Rojas',248232794, 926832707);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (14,'Matias Rojas',117167828, 987210385);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (15,'Matias Rojas',206513691, 974349988);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (16,'Matias Rojas',260596853, 940722406);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (17,'Matias Rojas',147173644, 976434166);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (18,'Matias Rojas',224813554, 904781116);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (19,'Matias Rojas',361361563, 953920594);
insert into docente(id_docente,Nombre_docente,Rut_docente,Telefono) values (20,'Matias Rojas',149318356, 972780450);

#  insert encargado 
insert into encargado(id_encargado,Nombre_encargado,Rut_encargado,Telefono) values (1,'Francisca Rojas',10839801-9, 918442216);
insert into encargado(id_encargado,Nombre_encargado,Rut_encargado,Telefono) values (2,'Luis Orrego',8438686-3, 967684178);

#  insert libros 
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (1,"Sinsajo","RBA Libros", "Suzanne Collins", "Ocupado", 1);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (2,"Insurgente","Versatil", "Patricia Briggs", "Ocupado", 2);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (3,"Viaje al corazón del hambre","Ebooks de Vanguardia", "Xavier Aldekoa", "Ocupado", 5);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (4,"Obsidian","Plataforma", "Jennifer L. Armentrout","Ocupado", 3 );
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (5,"Onyx","Plataforma", "Jennifer L. Armentrout", "Ocupado", 4);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (6,"Cuentos de la Alhambra","Espasa Libros", "Washington Irving", "Ocupado", 2);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (7,"Yo, Robot","Edhasa", "Isaac Asimov","Ocupado", 1 );
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (8,"El asesinato de Roger Ackroyd","RBA Libros", "Agatha Christie", "Ocupado", 6);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (9,"La leyenda de Sleepy Hollow","Editorial Alba", "Washington Irving", "Ocupado", 3);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (10,"Un cadáver en la biblioteca","RBA Libros", "Agatha Christie","Ocupado", 5);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (11,"Fuan no Tane Plus","Revista Weekly Shōnen Champion", "Masaaki Nakayama", "Ocupado", 2);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (12,"Fuan no Tane","Revista Champion Red", "Masaaki Nakayama", "Ocupado", 4);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (13,"El tren de la 4:50","RBA Libros", "Agatha Christie","Libre", 3);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (14,"Asesinato en el Orient Express","RBA Libros", "Agatha Christie","Libre", 4);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (15,"Diez negritos","RBA Libros", "Agatha Christie","Libre", 5);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (16,"Harry Potter y el cáliz de fuego","Salamandra", "Rowling, J. K.","Libre", 3);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (17,"Harry Potter y el misterio del príncipe","Salamandra", "Rowling, J. K.", "Libre", 2);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (18,"Un elefante ocupa mucho espacio","Alfaguara Infantil", "Elsa Bornemann", "Ocupado", 4);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (19,"Historia oculta de los Papas","Akásico Libros ", "Javier García Blanco ", "Libre", 4);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (20,"La orquídea azul","Amarante", " Carmen Sanz Prieto", "Libre", 3);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (21," Josefina Martos Peregrín","Amarante", "Masaaki Nakayama", "Ocupado", 5);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (22,"Las polillas y la luz","Amarente", "Manuel Molinero", "Libre", 1);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (23,"El silencio de una artista ","Amarante", "Javier Laso", "Libre", 2);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (24,"Un intelectual en su memoria","Amarante", "César de la Lama", "Libre", 3);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (25,"El agente extranjero","Amarante", "Amado Gómez Ugarte", "Libre", 4);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (26,"El liderazgo tahúr","Amarante", "Luis Manuel La Haba Panadero", "Libre", 5);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (27,"El pescador de cangrejos","Amarante", "Manuel Alcalde Herrera", "Ocupado", 6);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (28,"Manuel Alcalde Herrera","Amarante", "Laura Martínez Gimeno", "Ocupado", 6);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (29,"Negra Sombra","Amarante", "Alberto Louzán", "Libre", 1);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (30,"La Guerra de Dolores Beltrán","Amarante", "Lorenzo Amable de Mendoza", "Libre", 4);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (31,"Cien años de soledad","Argubal", "Gabriel García Márquez","Ocupado", 5);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (32,"Nada ","Argubal", "Carmen Laforet" ,"Libre", 2);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (33,"Crónicas marcianas ","Argubal", "Ray Bradbury", "Libre", 3);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (34,"El laberinto español","Argubal", "Gerarld Brenan", "Libre", 1);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (35,"Bajo la red","Argubal", "Iris Murdoch","Libre", 3);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (36,"Las voces","Argubal", "Muriel Spark","Libre", 4);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (37,"Todos quieren a Daisy Jones","Argubal", "Taylor Jenkins Reid", "Libre", 5);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (38,"El tambor de hojalata","Argubal", "Günter Grass", "Libre", 6);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (39,"Verano ","Argubal", "Ali Smith", "Libre", 7);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (40,"Una libertad luminosa","Argubal", "T.C Boyle", "Ocupado", 4);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (41,"La amiga estupenda","Edisur", "Elena Ferrante", "Ocupado", 3);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (42,"El señor de las moscas","Edisur", "William Golding", "Ocupado", 2);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (43,"El infinito en un junco","Edisur", "Irene Vallejo", "Libre", 5);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (44,"Una guía sobre el arte de perderse","Edisur", "Rebecca Solnit", "Ocupado", 5);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (45,"Dinero","Edisur", "Martin Amis","Libre", 6);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (46,"Vida y destino","Edisur", "Vasili Grossman", "Libre", 6);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (47,"Una habitación propia","Edisur", "Virginia Woolf", "Ocupado", 4);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (48,"El ferrocarril subterráneo","Edisur", "Colson Whitehead", "Libre", 3);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (49,"Manual para mujeres de la limpieza","Edisur", "Lucia Berlin", "Libre", 2);
insert into libros(Id_libro,Nombre_libro,nombre_editorial,Autores,estado_libro,Cantidad_libros) values (50,"Derecho natural","Edisur", "Ignacio Martínez", "Libre", 4);

# insert prestamos_estudiantes
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("1","1","1","1","2021/09/30","2021/10/05"); 
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("2","3","2","2","2021/09/25","2021/10/01");
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("3","4","4","2","2021/09/28","2021/10/03");
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("4","6","6","1","2021/09/29","2021/10/04");
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("5","8","7","1","2021/09/20","2021/09/30");
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("6","9","8","2","2021/10/04","2021/10/10");
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("7","10","11","1","2021/10/02","2021/10/08");
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("8","13","18","1","2021/10/01","2021/10/06");
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("9","15","21","2","2021/10/03","2021/10/09");
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("10","17","27","1","2021/10/04","2021/10/10");
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("11","19","28","2","2021/10/02","2021/10/08");
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("12","20","31","2","2021/10/01","2021/10/09");
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("13","22","40","2","2021/10/02","2021/10/08");
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("14","23","41","1","2021/10/04","2021/10/09");
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("15","27","42","2","2021/10/05","2021/10/10");
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("16","30","44","2","2021/10/04","2021/10/08");
insert into prestamos_estudiante(id_prestamo_estudiante,id_estudiante,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("17","31","47","1","2021/10/03","2021/10/09");

# insert prestamos_docentes
insert into prestamos_docentes(id_prestamo_docentes,id_docente,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("1","2","3","1","2021/09/03","2021/10/03");
insert into prestamos_docentes(id_prestamo_docentes,id_docente,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("2","5","5","2","2021/09/03","2021/10/03");
insert into prestamos_docentes(id_prestamo_docentes,id_docente,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("3","6","9","2","2021/09/03","2021/10/03");
insert into prestamos_docentes(id_prestamo_docentes,id_docente,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("4","7","10","1","2021/10/03","2021/10/03");
insert into prestamos_docentes(id_prestamo_docentes,id_docente,id_libro,id_encargado,fecha_prestamo,fecha_devolucion) values ("5","8","12","1","2021/10/03","2021/10/03");

#///// CONSULTAS 

# e) con el comando select nos permite ver el stock de la biblioteca asi mostrando los autores y editorial 
select * from libros;

# f) con el comando update nos permite modificar datos dentro de una tabla, el cual en este caso es la fecha de entrega de un libro en la tabla prestamos_estudiantes 
update prestamos_estudiante set fecha_devolucion  = '2021/11/10' where fecha_devolucion = '2021/10/05';
SELECT * from prestamos_estudiante;

# g) con este select podemos ver el stock de libros y ver cuales estan ocupados o libres
select id_libro,nombre_libro,cantidad_libros,estado_libro from libros;

# h) con el comando uptdate modficaremos el estado del libro para saber si esta ocupado o libre 
update libros set estado_libro = "Ocupado" where id_libro = 1;
select * from libros;

# i) En este selec podemos ver solamente los libros ocupados con sus correspondiente stock y nombre
select id_libro,nombre_libro,cantidad_libros,estado_libro  from libros where estado_libro = "Ocupado"
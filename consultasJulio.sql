INSERT INTO organizer(name, created_by)
    VALUES ('Instituto Tecnologico', 1);
INSERT INTO organizer(name, created_by)
    VALUES ('Universidad Tecnologica', 1);
INSERT INTO organizer(name, created_by)
    VALUES ('Preparatoria Federal', 1);
INSERT INTO organizer(name, created_by)
    VALUES ('MIT', 1);
INSERT INTO organizer(name, created_by)
    VALUES ('UGM', 1);
INSERT INTO organizer(name, created_by)
    VALUES ('Universidad Popular',1);
INSERT INTO organizer(name, created_by)
    VALUES ('BUAP', 1);
INSERT INTO organizer(name, created_by)
    VALUES ('UVP', 1);
INSERT INTO organizer(name, created_by)
    VALUES ('UNAM', 1);
INSERT INTO organizer(name, created_by)
    VALUES ('Universidad de Tecamachalco', 1);
INSERT INTO organizer(name, created_by)
    VALUES ('UAG', 1);
INSERT INTO organizer(name, created_by)
    VALUES ('Instituto Nacional de Enfermeria', 1);
INSERT INTO organizer(name, created_by)
    VALUES ('Instituto Plitecnico Nacional', 1);
INSERT INTO organizer(name, created_by)
    VALUES ('Universidad de Oaxaca', 1);
INSERT INTO organizer(name, created_by)
    VALUES ('Normal Superior', 1);

//Stats

INSERT INTO status_assistance(name)
    VALUES ('ASISTENCIA');
 INSERT INTO status_assistance(name)
    VALUES ('INASISTENCIA');
INSERT INTO status_assistance(name)
    VALUES ('PERMISO');


//USERS

INSERT INTO user_uc (user_name, password, created_by)
    VALUES ('Julio Lopez', "passwd", 1);
INSERT INTO user_uc (user_name, password, created_by)
    VALUES ('Carla Esparragoza', "date3date", 1);
INSERT INTO user_uc (user_name, password, created_by)
    VALUES ('Jorge Rodriguez', "AtThisTime", 1);
INSERT INTO user_uc (user_name, password, created_by)
    VALUES ('Ana Perez', "#saved#", 1);
INSERT INTO user_uc (user_name, password, created_by)
    VALUES ('Sofia Sanchez', "Negative2323", 1);


//JOINS
/*
1. Identificar las tablas
    organizer (O) 
    event_uc (E)
2. Identificar los campos de cada tabla
    name (O)
    name, observations (E)
3. Identificar la relacion
    organizer_id
4. Construir JOIN
*/

SELECT O.name AS Organizador, E.name AS Evento, E.observations AS Detalles
    FROM organizer O 
    INNER JOIN event_uc E
    ON O.organizer_id = E.organizer_id;

/*EVENTO Y QUÉ USUARIO LO CREÓ
1. Identificar las tablas
    event_uc (E)
    user_uc (U)
2. Identificar los campos de cada tabla
    name (E)
    name (U)
3. Identificar la relacion
    user_id
4. Construir JOIN
*/

SELECT E.name AS Evento, U.user_name AS USUARIO
    FROM event_uc E
    INNER JOIN user_uc U
    ON E.created_by = U.user_id;

//EVENTO, QUIÉN ORGANIZA Y QUIÉN LO CREÓ

SELECT O.name AS Organizador, E.name AS Evento, E.observations AS Detalles, U.user_name AS Usuario
    FROM organizer O 
    INNER JOIN event_uc E
    ON O.organizer_id = E.organizer_id
    INNER JOIN user_uc U
    ON  E.created_by = U.user_id
    WHERE U.user_id = 1;

/* INVITADOS 1 2 3 taller SAP (2)*/

INSERT INTO guest_event (guest_id, event_uc_id, created_by)
    VALUES (1, 2, 1);
INSERT INTO guest_event (guest_id, event_uc_id, created_by)
    VALUES (2, 2, 1);
INSERT INTO guest_event (guest_id, event_uc_id, created_by)
    VALUES (3, 2, 1);
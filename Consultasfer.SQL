INSERT INTO guest(name,last_name,created_by)
    VALUES ('Alejandra','Hernandez',1);
INSERT INTO guest(name,last_name,created_by)
    VALUES ('Eduardo','Uc',1);
INSERT INTO guest(name,last_name,created_by)
    VALUES ('Fabiola','Suarez Tec',1);
INSERT INTO guest(name,last_name,created_by)
    VALUES ('Martin','Cruz',1);
 INSERT INTO guest(name,last_name,created_by)
    VALUES ('Julio','Cordoba',1);
INSERT INTO guest(name,last_name,created_by)
    VALUES ('Alberto','May',1);
INSERT INTO guest(name,last_name,created_by)
    VALUES ('Jhoni','Tec',1);
INSERT INTO guest(name,last_name,created_by)
    VALUES ('Jose','Cruz',1);
INSERT INTO guest(name,last_name,created_by)
    VALUES ('Maria','Torres',1);
INSERT INTO guest(name,last_name,created_by)
    VALUES ('Yareli','Sanchez',1);
INSERT INTO guest(name,last_name,created_by)
    VALUES ('Isabel','Uc',1);
INSERT INTO guest(name,last_name,created_by)
    VALUES ('Luis','Martinez',1);
INSERT INTO guest(name,last_name,created_by)
    VALUES ('Juan','Perez',1);
INSERT INTO guest(name,last_name,created_by)
    VALUES ('Natali','Hernandez',1);
INSERT INTO guest(name,last_name,created_by)
    VALUES ('Abril','Romero',1);


Agregar Eventos

INSERT INTO event_uc(name,organizer_id,observations,created_by)
    VALUES ('Taller SQL',1,'Taller para aprender SQL',1);
INSERT INTO event_uc(name,organizer_id,observations,created_by)
    VALUES ('Taller SAP',2,'Taller para aprender SAP',2);
INSERT INTO event_uc(name,organizer_id,observations,created_by)
    VALUES ('Taller QNAmAKER',3,'Taller para aprender QNAMaker',3);
INSERT INTO event_uc(name,organizer_id,observations,created_by)
    VALUES ('Taller Macrosoft',4,'Taller para aprender Macrosoft',4);
INSERT INTO event_uc(name,organizer_id,observations,created_by)
    VALUES ('Taller Xamp',5,'Taller para aprender Xamp',5);
INSERT INTO event_uc(name,organizer_id,observations,created_by)
    VALUES ('Taller Oracle',6,'Taller para aprender Oracle',6);
INSERT INTO event_uc(name,organizer_id,observations,created_by)
    VALUES ('Taller Visual Studio',7,'Taller para aprender Visual',1);
INSERT INTO event_uc(name,organizer_id,observations,created_by)
    VALUES ('Taller Github',8,'Taller para aprender Github',2);

1. identificar las tablas
Organizer O
Event_uc  E

2. Identificar los campos de cada tabla.

Organizer Name
Event_uc Name,observations

3. Identificar la realción
Relacion organizer_id

4. 

SELECT O.name AS Organizador,E.name AS Evento,E.observations AS Detalles 
    FROM Organizer O 
    INNER JOIN event_uc E 
    ON O.organizer_id = E.organizer_id

Event_uc E
User_uc  U

User_uc Name
Event_uc Name

SELECT E.name AS Evento,U.user_name AS Creador
    FROM Event_uc E 
    INNER JOIN User_uc u
    ON E.created_by = U.created_by


SELECT O.name AS Organizador,E.name AS Evento,E.observations 
    AS Detalles, U.user_name AS CREADOR
    FROM Organizer O 
    INNER JOIN event_uc E 
    ON O.organizer_id = E.organizer_id 
    INNER JOIN User_uc u
    ON E.created_by = U.user_id  
    WHERE u.user_id = 1


guest 456


INSERT INTO guest_event(guest_id,event_uc_id,created_by)
    VALUES (4,3,2);
INSERT INTO guest_event(guest_id,event_uc_id,created_by)
    VALUES (5,3,3);
INSERT INTO guest_event(guest_id,event_uc_id,created_by)
    VALUES (6,3,4);

/* JOIN alumnos de SQL*/

SELECT G.name AS Nombre, G.last_name AS Apellido, E.name AS Taller
    FROM guest G 
    INNER JOIN guest_event GE 
    ON G.guest_id = GE.guest_id 
    INNER JOIN event_uc E
    ON GE.event_uc_id = E.event_uc_id
    WHERE E.name = 'Taller SAP';
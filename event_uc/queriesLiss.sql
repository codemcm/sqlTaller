insert into guest (name,last_name,created_by)values ('Jose','Sanchez Romero',1);
insert into guest (name,last_name,created_by)values ('Maria','Rosales Martinez',1);
insert into guest (name,last_name,created_by)values ('Juan','Cuenca Lopez',1);
insert into guest (name,last_name,created_by)values ('Pedro','Cruz Arellano',1);
insert into guest (name,last_name,created_by)values ('Javier','Ramirez Dolores',1);
insert into guest (name,last_name,created_by)values ('Damian','Olmos Cuevas',1);
insert into guest (name,last_name,created_by)values ('Hector Damian','Romero Balderas',1);
insert into guest (name,last_name,created_by)values ('Nallely','Ruiz Montes',1);
insert into guest (name,last_name,created_by)values ('Laura','Higuera Romero',1);
insert into guest (name,last_name,created_by)values ('Sandra Rosa','Jimenez Ortiz',1);
insert into guest (name,last_name,created_by)values ('Jazmin','Valerio Romero',1);
insert into guest (name,last_name,created_by)values ('Mario','Baez Diaz',1);
insert into guest (name,last_name,created_by)values ('Fernanda','Castillo Olmos',1);
insert into guest (name,last_name,created_by)values ('Karla','Pineda Lopez',1);
insert into guest (name,last_name,created_by)values ('Lorena','Balderas Carrera',1);


insert into event_uc (name,organizer_id,created_by,edited_by)values('Taller de SQL Server',1,1,1);

select* from guest_event;

insert into guest_event(guest_id,event_uc_id,created_by)value(1,1,1);
insert into guest_event(guest_id,event_uc_id,created_by)value(2,1,1);
insert into guest_event(guest_id,event_uc_id,created_by)value(3,1,1);
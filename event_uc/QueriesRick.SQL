/*10 Dies Organizadore organizer  name, created_by,*/

INSERT INTO organizer(name, created_by)VALUES
('UC',1),
('ITT',1),
('Buap',1),
('Upaed',1),
('Unam',1),
('CCB',1),
('ITM',1),
('MCT',1),
('DC',1),
('UCC',1),
('FDC',1),
('ASKU',1),
('IAD',1),
('JKF',1),
('RTF',1),
('REF',1),
('ADF',1),
('CBS',1),
('Wer',1),
('GOD',1),
('HGF',1),
('Quee',1);

INSERT INTO event_uc
(name, organizer_id, created_by, edited_by)VALUES 
('Taller Android',1,1,1),
('Taller IOS',1,1,1);

7, 8, 9
10taller Join
INSERT INTO guest_event(guest_id, event_uc_id, created_by )VALUES
(7,10,1),
(8,10,1),
(9,10,1);
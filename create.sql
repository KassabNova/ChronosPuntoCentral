create table apartments (id integer not null, floor varchar(255), room_number varchar(255), primary key (id));
create table apartments_user (apartments_id integer not null, user_id uuid not null);
create table guests (id uuid not null, first_name varchar(255), last_name varchar(255), reservation_id uuid, primary key (id));
create table reservations (id uuid not null, aprox_arrival_date timestamp(6), check_in timestamp(6), check_out timestamp(6), end_date timestamp(6), start_date timestamp(6), apartment_id integer, primary key (id));
create table users (id uuid not null, first_name varchar(255), is_admin boolean, last_name varchar(255), primary key (id));
create sequence apartments_seq start with 1 increment by 50;
alter table if exists apartments_user add constraint FKdc6d90314bnnffskwl8ecesc8 foreign key (user_id) references users;
alter table if exists apartments_user add constraint FK1u3883dp1pn2pd9x7ga4wvevd foreign key (apartments_id) references apartments;
alter table if exists guests add constraint FKhoafmnpk6hn0xnvl9i1fathbw foreign key (reservation_id) references reservations;
alter table if exists reservations add constraint FK5pmsno2scpphjhsams2olip6 foreign key (apartment_id) references apartments;

INSERT INTO users VALUES (gen_random_uuid(), 'Carlos', true,'Kassab');
INSERT INTO users VALUES (gen_random_uuid(), 'Victor', true,'Garcia');
INSERT INTO users VALUES (gen_random_uuid(), 'Moises', true,'Barba');

INSERT INTO apartments VALUES (1, '7', '715');
INSERT INTO apartments VALUES (2, 'PB', '001');
INSERT INTO apartments VALUES (3, '1', '118');
INSERT INTO apartments_user (apartments_id, user_id)
VALUES (1, (SELECT  id FROM users WHERE first_name = 'Carlos'));
INSERT INTO apartments_user (apartments_id, user_id)
VALUES (2, (SELECT  id FROM users WHERE first_name = 'Victor'));
INSERT INTO apartments_user (apartments_id, user_id)
VALUES (3, (SELECT  id FROM users WHERE first_name = 'Moises'));

insert into reservations (id, aprox_arrival_date, check_in, check_out, end_date, start_date, apartment_id)
values ('921b08f2-8627-11ee-b9d1-0242ac120002', now(), now(), now(), now(), now(), 1);
insert into reservations (id, aprox_arrival_date, check_in, check_out, end_date, start_date, apartment_id)
values ('a9f73f40-8627-11ee-b9d1-0242ac120002', now(), now(), now(), now(), now(), 1);
insert into reservations (id, aprox_arrival_date, check_in, check_out, end_date, start_date, apartment_id)
values ('921b0c26-8627-11ee-b9d1-0242ac120002', now(), now(), now(), now(), now(), 2);
insert into reservations (id, aprox_arrival_date, check_in, check_out, end_date, start_date, apartment_id)
values ('921b0d52-8627-11ee-b9d1-0242ac120002', now(), now(), now(), now(), now(), 3);
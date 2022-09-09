-- create table users_tbl(
--     id primary key ,
--     full_name varchar(255) not null ,
--     email varchar (100) not null,
--     password varchar (255) not null,
--     is_admin  varchar (255) not null
--
-- )
create table users_tbl
(
	id integer serial not null,
	full_name varchar not null,
	user_name varchar not null,
	password varchar(255) not null,
	is_admin BOOL
);

create unique index users_tbl_email_uindex
	on users_tbl (user_name);

create unique index users_tbl_id_uindex
	on users_tbl (id);

create unique index users_tbl_password_uindex
	on users_tbl (password);

alter table users_tbl
	add constraint users_tbl_pk
		primary key (id);







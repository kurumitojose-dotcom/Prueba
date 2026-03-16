--base de datos de login

create database users;
create table users.login(
    id int primary key auto_increment,
    username varchar(80) not null,
    password varchar(255) not null
);

importar datos a la tabla login
insert into users.login (username, password) values (username, password);

if not exists (select * from users.login where username = 'admin') then
    insert into users.login (username, password) values ('admin', 'admin');
end if;

if username = 'admin' and password = 'admin' then
    -- El usuario es admin, permitir acceso
else
    -- El usuario no es admin, denegar acceso
end if;
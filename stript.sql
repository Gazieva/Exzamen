create database users;

use users;

create table role(
id_role int primary key not null,
name_role varchar(50) not null
);

create table user(
id_user int primary key not null,
name_iser varchar(100) not null,
role_id int,
foreign key (role_id) references role(id_role)
);

INSERT INTO `users`.`role` (`id_role`, `name_role`) VALUES ('1', 'Администратор');
INSERT INTO `users`.`role` (`id_role`, `name_role`) VALUES ('2', 'Гость');

INSERT INTO `users`.`user` (`id_user`, `name_iser`, `role_id`) VALUES ('1', 'Григорьев Виктор', '1');
INSERT INTO `users`.`user` (`id_user`, `name_iser`, `role_id`) VALUES ('2', 'Ахматов Игорь', '2');
INSERT INTO `users`.`user` (`id_user`, `name_iser`, `role_id`) VALUES ('3', 'Лермонтов Иван', '1');

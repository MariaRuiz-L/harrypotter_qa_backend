-- SCRIPT DE BASE DE DATOS:HARRY POTTER DEMO (QA & BACKEND)

create DATABASE IF NOT EXISTS HARRYPOTTER_DB;
use HARRYPOTTER_DB;

DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS houses;

CREATE TABLE houses(
    id int auto_increment primary key,
    name varchar(50) not null
);

CREATE TABLE characters (
    id int auto_increment primary key,
    name varchar(50) not null,
    image varchar(255),
    nationality varchar(100),
    blood varchar(50),
    wiki varchar(255),
    id_houses int,
    foreign key (id_houses) references houses(id) on delete set null
);

insert into houses (name)
values('Gryffindor'),
      ('Slytherin'),
      ('Ravenclaw'),
      ('Hufflepuff');

insert into characters (name, image, nationality, blood, wiki,id_houses)
values ('1980s Hogwarts Gobstones Tournament champion', 'https://example.com/img1.jpg', 'British or Irish', 'Pure-blood or half-blood', 'https://harrypotter.fandom.com/wiki/Champion', 4),
('Severus Snape','https://example.com/severus.jpg', 'English','Half-blood', 'https://harrypotter.fandom.com/wiki/Severus_Snape',2 ),
('Alastor Moody','https://example.com/alastor.jpg','British or Irish','Pure-blood','https://harrypotter.fandom.com/wiki/Alastor_Moody',null),
('Harry James Potter', 'https://example.com/harry.jpg', 'English', 'Half-blood', 'https://harrypotter.fandom.com/wiki/Harry_Potter', 1),
('Hermione Jean Granger', 'https://example.com/hermione.jpg', 'English', 'Muggle-born', 'https://harrypotter.fandom.com/wiki/Hermione_Granger', 1);


-- CONSULTAS

select
    c.name as name,
    c.image as image,
    c.nationality as nationality,
    c.blood as blood,
    h.name as houses,
    c.wiki as wiki
from characters c left join houses h on c.id_houses = h.id;

select
    c.name as name,
    c.nationality as nationality,
    c.blood as blood,
    h.name as houses
from characters c inner join houses h on c.id_houses = h.id
where h.name = 'Hufflepuff';







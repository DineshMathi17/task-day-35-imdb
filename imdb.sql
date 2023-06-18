create database imdb;

use imdb;

-- genre
create table genre(
id int auto_increment,
movie_genre varchar(255),
primary key(id)
);

insert into genre( movie_genre)value(' Adventure');
insert into genre( movie_genre)value('Comedy');
insert into genre( movie_genre)value('Drama');  

select * from genre;


-- movies
create table movies(
id int auto_increment,
movie_id int,
movie_name varchar(255),
movie_year int,
movie_rating int,,
primary key(id),
);

insert into movies(movie_id,movie_name,movie_year,movie_rating)
value('1','Pa Paandi','2017','7.4'),
('1','Kantara','2022','8.3'),
('2','Mersal','2017','7.5'),
('2','Asuran','2019','8.4'),
('3',' Vishwaroopam','2019','8.4')

select * from movies;


-- images
create table images(
id int auto_increment,
image_id int,
image longblob,
primary key(id)
)

 select @@GLOBAL.secure_file_priv;

insert into images(image_id,image)
values(1,load_file('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Pa Paandi.jpg')),
(2,load_file('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Kantara.jpg')),
(3,load_file('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Mersal.jpg')),
(4,load_file('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Asuran.jpg')),
(5,load_file('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Vishwaroopam.jpg'))

 select * from images;


-- user_review
create table user_review(
id int auto_increment,
user_id int,
user_reviews varchar(9000),
primary key(id),

);

insert into user_review(user_id,user_reviews)
values('1','He is a former stunt master, but has decided to take up this job just so he doesnt cause problems for his workaholic son, Raghavan (Prasanna)  '),
('1','There is a scene in the first half of Pa Pandi (aka Power Paandi) when Rajkiran, who plays the titular character, Power Pandian, lands up for a shoot. He is a former stunt master.'),
('2','When folk tales are represented on screen, rooted in realism, it ends up being an experience in itself. Kantara is one such film that sucks you in right from the get-go and makes you guess what‘s next. '),
('2','Rishab Shetty brings an original tale rooted in Indian culture and mythology that surely ranks among the best efforts by an Indian filmmaker in recent times.'),
('3','Excellent story with a strong message against present state of affairs in medical field. S.J.Suryah character has been created to perfection especially those dialogues of him keeps on rounding our ears.'),
('3',' Vijays recent films a mixed bag, with a lot of good ones and a lot of extremely bad ones, but Mersal might stand out from this crowd as being almost entirely different from what he usually plays.'),
('4','An absolute sheer brilliance from director vetrimaaran. What an outstanding story telling and screenplay. Dhanush national award confirm for his acting. No words to describe his performance. '),
('4','Based on the best-selling novel Vekkai by Poomani, this film is easily one of the best works of Vetrimaaran. All the performances, including those by Dhanush and Manju Warrier, are top-notch.'),
('5','Brilliant film-making. If you are new to Indian films, start with this or if you want to show your non-Indian friend an Indian film, select this action-thriller classic. It takes some time to suck you in but once the ride kick starts you hardly get time to think about anything else.')

select * from user_review;


-- skills

create table skills(
id int auto_increment,
skill_id int,
actor_name varchar(255),
actor_age int,
actor_skills varchar(255),
primary key(id)
);

insert into skills(skill_id,actor_name,actor_age,actor_skills)
value('1','Dhanush','39','Director,Actor'),
('2','Rishab Shetty','39','Director,Actor'),
('3','vijay','49','Actor,singer'),
('4','Dhanush','39','Director,singer'),
('5','Kamal Haasan','68','Director,Actor')

 select * from skills;


-- roles

create table roles(
id int auto_increment,
role_id int,
movie_role_one varchar(255),
movie_role_two varchar(255),
primary key(id),
);


insert into roles(role_id,movie_role_one,movie_role_two)
values('1','Paandi','fight stunt master'),
('2','Kaadubettu Shiva',' Panjurli'),
('3','maaran','vetri'),
('4','Sivasamy','Murugan'),
('5','Wisam Ahmad Kashmiri','Vishwanathan')


select * from roles;


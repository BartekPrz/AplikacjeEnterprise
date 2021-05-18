drop table if EXISTS MOVIE;

create table MOVIE
(id       numeric(12) primary key,
 title    varchar(400) not null,
 category varchar(50),
 year     char(4),
 cast     varchar(4000),
 director varchar(4000),
 story    varchar(4000),
 price    numeric(5,2),
 check (category in ('DRAMA','COMEDY','FAMILY','ACTION','SCI-FI', 'CLASSICS')));

insert into MOVIE(id, title, category, year, cast, director, story, price) values(21,'Full Metal Jacket','ACTION','1987','Matthew Modine, Vincent D''Onofrio, et al.','Stanley Kubrick','Bardzo ciekawy film. Jak wszystkie inne...',45);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(22,'American Pie 2','COMEDY','2001','Jason Biggs, Seann William Scott, et al.','James B. Rogers (II)','Bardzo ciekawy film. Jak wszystkie inne...',55);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(23,'Lost Highway','DRAMA','1997','Bill Pullman, Patricia Arquette, et al.','David Lynch','Bardzo ciekawy film. Jak wszystkie inne...',65);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(24,'The Naked Gun','COMEDY','1988','Leslie Nielsen, Priscilla Presley, et al.','David Zucker','Bardzo ciekawy film. Jak wszystkie inne...',50);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(25,'The Naked Gun 2 1/2 - The Smell of Fear','COMEDY','1991','Leslie Nielsen, Priscilla Presley, et al.','David Zucker','Bardzo ciekawy film. Jak wszystkie inne...',65);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(6,'Armageddon','SCI-FI','1998','Bruce Willis, Billy Bob Thornton, et al.','Michael Bay','Bardzo ciekawy film. Jak wszystkie inne...',40);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(7,'Reservoir Dogs ','ACTION','1992','Harvey Keitel, Tim Roth, et al.','Quentin Tarantino','Bardzo ciekawy film. Jak wszystkie inne...',40);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(8,'Con Air','ACTION','1997','Nicolas Cage, John Cusack, et al.','Simon West','Bardzo ciekawy film. Jak wszystkie inne...',65);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(9,'Cube','SCI-FI','1998','Nicole de Boer, Nicky Guadagni, et al.','Vincenzo Natali','Bardzo ciekawy film. Jak wszystkie inne...',40);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(16,'What Women Want','COMEDY','2000','Mel Gibson, Helen Hunt, et al.','Nancy Meyers','Bardzo ciekawy film. Jak wszystkie inne...',50);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(17,'The Family Man','FAMILY','2000','Nicolas Cage, T�a Leoni, et al.','Brett Ratner','Bardzo ciekawy film. Jak wszystkie inne...',50);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(18,'Titanic','DRAMA','1997','Leonardo DiCaprio, Kate Winslet, et al.','James Cameron','Bardzo ciekawy film. Jak wszystkie inne...',65);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(19,'Dances with Wolves','DRAMA','1990','Kevin Costner, Mary McDonnell, et al.','Kevin Costner','Bardzo ciekawy film. Jak wszystkie inne...',60);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(20,'Platoon','ACTION','1996','Tom Berenger, Willem Dafoe, et al.','Oliver Stone','Bardzo ciekawy film. Jak wszystkie inne...',60);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(10,'Desperado','ACTION','1995','Antonio Banderas, Salma Hayek, et al.','Robert Rodriguez','Bardzo ciekawy film. Jak wszystkie inne...',55);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(11,'Mallrats','COMEDY','1995','Jeremy London, Jason Lee, et al.','Scott Mosier, Kevin Smith','Bardzo ciekawy film. Jak wszystkie inne...',55);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(12,'South Park: Bigger, Longer and Uncut ','COMEDY','1999','Starring: Trey Parker, Matt Stone, et al.','Trey Parker','Bardzo ciekawy film. Jak wszystkie inne...',45);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(13,'Clerks','COMEDY','1994','Brian O''Halloran, Jeff Anderson, et al.','Kevin Smith','Bardzo ciekawy film. Jak wszystkie inne...',50);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(14,'Chasing Amy','COMEDY','1997','Ben Affleck, Joey Lauren Adams, et al.','Kevin Smith','Bardzo ciekawy film. Jak wszystkie inne...',65);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(15,'Pearl Harbor','ACTION','2001','Ben Affleck, Kate Beckinsale, et al.','Michael Bay','Bardzo ciekawy film. Jak wszystkie inne...',55);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(1,'m_cast Away','FAMILY','2000','Tom Hanks, Helen Hunt, et al.','Robert Zemeckis','Bardzo ciekawy film. Jak wszystkie inne...',50);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(2,'Dogma','COMEDY','1999','Ben Affleck, Matt Damon, et al.','Scott Mosier, Kevin Smith','Bardzo ciekawy film. Jak wszystkie inne...',45);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(3,'Pokemon the First Movie: Mewtwo Strikes Back','FAMILY','1999','','Michael Haigney, Kunihiko Yuyama','Bardzo ciekawy film. Jak wszystkie inne...',45);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(4,'Pokemon - The Movie 2000','FAMILY','1999','Starring: Veronica Taylor, et al.','Michael Haigney','Bardzo ciekawy film. Jak wszystkie inne...',45);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(5,'American Psycho','DRAMA','2000','Christian Bale, et al.','Mary Harron','Bardzo ciekawy film. Jak wszystkie inne...',50);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(56,'Stuart Little','FAMILY','1999','Michael J. Fox, Geena Davis, et al.','Rob Minkoff','Bardzo ciekawy film. Jak wszystkie inne...',45);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(57,'Star Wars - Episode I, The Phantom Menace ','SCI-FI','1999','Liam Neeson, Ewan McGregor, et al.','George Lucas','Bardzo ciekawy film. Jak wszystkie inne...',45);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(58,'Star Wars - Episode IV, A New Hope ','SCI-FI','1977','Mark Hamill, Harrison Ford, et al.','George Lucas','Bardzo ciekawy film. Jak wszystkie inne...',55);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(59,'Star Wars - Episode V, The Empire Strikes Back (Special Edition) ','SCI-FI','1980','Mark Hamill, Harrison Ford, et al.','Irvin Kershner','Bardzo ciekawy film. Jak wszystkie inne...',40);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(60,'Star Wars - Episode VI, Return of the Jedi (Special Edition) ','SCI-FI','1983','Mark Hamill, Harrison Ford, et al.','Richard Marquand','Bardzo ciekawy film. Jak wszystkie inne...',55);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(61,'Aces Go Places 5 ','COMEDY','1989','Sam Hui, et al..','Chia-Liang Liu','Bardzo ciekawy film. Jak wszystkie inne...',55);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(62,'Gone In 60 Seconds ','ACTION','2000','Nicolas Cage, Angelina Jolie, et al.','Dominic Sena','Bardzo ciekawy film. Jak wszystkie inne...',50);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(63,'American Gigolo ','DRAMA','1980','Richard Gere, Lauren Hutton, et al.','Paul Schrader','Bardzo ciekawy film. Jak wszystkie inne...',40);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(64,'Deuce Bigalow: Male Gigolo','COMEDY','1999','Rob Schneider, William Forsythe, et al.','Mike Mitchell (VI)','Bardzo ciekawy film. Jak wszystkie inne...',45);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(65,'Where Eagles Dare','CLASSICS','1969','Richard Burton, Clint Eastwood, et al.','Brian G. Hutton','Bardzo ciekawy film. Jak wszystkie inne...',45);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(66,'The Great Escape','CLASSICS','1963','Steve McQueen, James Garner, et al.','John Sturges','Bardzo ciekawy film. Jak wszystkie inne...',45);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(26,'The Naked Gun 33 1/3 - The Final Insult  ','COMEDY','1994','Leslie Nielsen, Priscilla Presley, et al.','Peter Segal','Bardzo ciekawy film. Jak wszystkie inne...',50);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(27,'Commando','ACTION','1985','Arnold Schwarzenegger, Rae Dawn Chong, et al.','Mark L. Lester','Bardzo ciekawy film. Jak wszystkie inne...',65);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(28,'The Running Man','ACTION','1987','Arnold Schwarzenegger, Maria Conchita Alonso, et al.','Paul Michael Glaser','Bardzo ciekawy film. Jak wszystkie inne...',45);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(29,'Total Recall','SCI-FI','1990','Arnold Schwarzenegger, Sharon Stone, et al.','Paul Verhoeven','Bardzo ciekawy film. Jak wszystkie inne...',60);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(30,'The Terminator','SCI-FI','1984','Arnold Schwarzenegger, Michael Biehn, et al.','James Cameron','Bardzo ciekawy film. Jak wszystkie inne...',60);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(31,'Terminator 2: Judgment Day ','SCI-FI','1991','Arnold Schwarzenegger, Linda Hamilton, et al.','James Cameron','Bardzo ciekawy film. Jak wszystkie inne...',65);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(32,'Casablanca','CLASSICS','1943','Humphrey Bogart, Ingrid Bergman, et al.','Michael Curtiz','Bardzo ciekawy film. Jak wszystkie inne...',65);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(33,'The Maltese Falcon','CLASSICS','1941','Humphrey Bogart, Mary Astor, et al.','John Huston','Bardzo ciekawy film. Jak wszystkie inne...',55);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(34,'1941','COMEDY','1971','Dan Aykroyd, John Belushi, et al.','Steven Spielberg','Bardzo ciekawy film. Jak wszystkie inne...',55);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(35,'Tora Tora Tora','DRAMA','1970','Martin Balsam, S� Yamamura, et al.','Richard Fleischer, Toshio Masuda','Bardzo ciekawy film. Jak wszystkie inne...',50);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(36,'E.T. The Extra-Terrestrial','SCI-FI','1982','Henry Thomas, Peter Coyote, et al.','Steven Spielberg','Bardzo ciekawy film. Jak wszystkie inne...',50);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(37,'The Mask','COMEDY','1994','Jim Carrey, Cameron Diaz, et al.','Chuck Russell','Bardzo ciekawy film. Jak wszystkie inne...',50);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(38,'Raiders of the Lost Ark','ACTION','1981','Harrison Ford, Karen Allen, et al.','Steven Spielberg','Bardzo ciekawy film. Jak wszystkie inne...',45);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(39,'Indiana Jones and the Temple of Doom ','ACTION','1984','Harrison Ford, Kate Capshaw, et al.','Steven Spielberg','Bardzo ciekawy film. Jak wszystkie inne...',60);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(40,'Indiana Jones and the Last Crusade ','ACTION','1989','Harrison Ford, Sean Connery, et al.','Steven Spielberg','Bardzo ciekawy film. Jak wszystkie inne...',55);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(41,'Gladiator','ACTION','2000','Russell Crowe, Joaquin Phoenix, et al.','Ridley Scott','Bardzo ciekawy film. Jak wszystkie inne...',50);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(42,'American Beauty','DRAMA','1999','Kevin Spacey, Annette Bening, et al.','Sam Mendes','Bardzo ciekawy film. Jak wszystkie inne...',45);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(43,'Quo Vadis? ','CLASSICS','1951','Robert Taylor, Deborah Kerr, et al.','Mervyn LeRoy','Bardzo ciekawy film. Jak wszystkie inne...',45);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(44,'Predator','SCI-FI','1987','Arnold Schwarzenegger, Carl Weathers, et al.','John McTiernan','Bardzo ciekawy film. Jak wszystkie inne...',45);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(45,'Wild Orchid','DRAMA','1990','Mickey Rourke, Jacqueline Bisset, et al.','Zalman King','Bardzo ciekawy film. Jak wszystkie inne...',60);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(46,'Pulp Fiction','COMEDY','1994','John Travolta, Samuel L. Jackson, et al.','Quentin Tarantino','Bardzo ciekawy film. Jak wszystkie inne...',50);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(47,'Who Framed Roger Rabbit ','COMEDY','1988','Bob Hoskins, et al.','Robert Zemeckis','Bardzo ciekawy film. Jak wszystkie inne...',50);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(48,'Air Force One ','ACTION','1997','Harrison Ford, Gary Oldman, et al.','Wolfgang Petersen','Bardzo ciekawy film. Jak wszystkie inne...',65);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(49,'Murder on the Orient Express','CLASSICS','1974','Albert Finney, Lauren Bacall, et al.','Sidney Lumet','Bardzo ciekawy film. Jak wszystkie inne...',40);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(50,'Mad Max','SCI-FI','1980','Mel Gibson, et al.','George Miller (II)','Bardzo ciekawy film. Jak wszystkie inne...',40);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(51,'Traffic','ACTION','2000','Benicio Del Toro, Michael Douglas, et al.','Steven Soderbergh','Bardzo ciekawy film. Jak wszystkie inne...',50);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(52,'Nurse Betty','COMEDY','2000','Morgan Freeman, Ren�e Zellweger, et al.','Neil LaBute','Bardzo ciekawy film. Jak wszystkie inne...',50);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(53,'Bridget Jones''s Diary ','FAMILY','2001','Ren�e Zellweger, Colin Firth, et al.','Sharon Maguire','Bardzo ciekawy film. Jak wszystkie inne...',55);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(54,'Chocolat','FAMILY','2001','Juliette Binoche, Judi Dench, et al.','Lasse Hallstr�m','Bardzo ciekawy film. Jak wszystkie inne...',55);
insert into MOVIE(id, title, category, year, cast, director, story, price) values(55,'Beavis and Butt-Head Do America','COMEDY','1996','Mike Judge, et al.','Yvette Kaplan, Mike Judge','Bardzo ciekawy film. Jak wszystkie inne...',60);
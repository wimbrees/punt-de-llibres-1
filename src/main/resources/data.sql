CREATE EXTENSION IF NOT EXISTS pgcrypto;

TRUNCATE TABLE genres RESTART IDENTITY CASCADE;
TRUNCATE TABLE languages RESTART IDENTITY CASCADE;
TRUNCATE TABLE publishers RESTART IDENTITY CASCADE;
TRUNCATE TABLE themes RESTART IDENTITY CASCADE;
TRUNCATE TABLE books RESTART IDENTITY CASCADE;
TRUNCATE TABLE users RESTART IDENTITY CASCADE;
TRUNCATE TABLE authors RESTART IDENTITY CASCADE;

INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (1, 'Jaume_A', crypt(crypt('12345678', gen_salt('bf')), gen_salt('bf')), 'Jaume', 'Alepuz Bria', '08004', NULL, 'jaualbr@yahoo.es', '2020-01-01 10:00:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (2, 'PepElLector', crypt('12345678', gen_salt('bf')), 'Josep', 'Garcia', '08024', NULL, 'test@test.com', '2020-02-02 12:05:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (3, 'Llibrefila83', crypt('12345678', gen_salt('bf')), 'Montse', 'Martinez Rovira', '08004', NULL, 'mmrov@test.cat', '2020-03-02 20:15:30', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (4, 'maria_ga', crypt('12345678', gen_salt('bf')), 'Maria', 'Garcia Alvarez', '08001', NULL, 'mariaga@test.cat', '2020-03-03 12:00:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (5, 'montse_mt', crypt('12345678', gen_salt('bf')), 'Montserrat', 'Martinez Torres', '08001', NULL, 'montsemt@test.cat', '2020-03-04 12:00:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (6, 'jordi_ln', crypt('12345678', gen_salt('bf')), 'Jordi', 'Lopez Navarro', '08002', NULL, 'jordiln@test.cat', '2020-03-05 12:00:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (7, 'manel_sn', crypt('12345678', gen_salt('bf')), 'Manel', 'Sanchez Romero', '08002', NULL, 'manelsr@test.cat', '2020-03-06 12:00:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (8, 'david_rd', crypt('12345678', gen_salt('bf')), 'David', 'Rodriguez Diaz', '08003', NULL, 'davidrd@test.cat', '2020-03-07 12:00:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (9, 'joan_fm', crypt('12345678', gen_salt('bf')), 'Joan', 'Fernandez Muñoz', '08003', NULL, 'joanfm@test.cat', '2020-03-08 12:00:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (10, 'carme_ph', crypt('12345678', gen_salt('bf')), 'Carme', 'Perez Hernandez', '08002', NULL, 'carmeph@test.cat', '2020-03-09 12:00:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (11, 'marc_gm', crypt('12345678', gen_salt('bf')), 'Marc', 'Gonzalez Moreno', '08003', NULL, 'marcgm@test.cat', '2020-03-10 12:00:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (12, 'Jenny_G', crypt('12345678', gen_salt('bf')), 'Jennifer', 'Gonzalez Pulido', '08830', NULL, 'jegonzuilezpu@gmail.com', '2020-04-09 12:00:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (13, 'Lissa', crypt('12345678', gen_salt('bf')), 'Lissa', 'Gonzalez Alvarez', '08830', NULL, 'lissachan@test.cat', '2020-03-10 12:10:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (14, 'GrumpyIvan', crypt('12345678', gen_salt('bf')), 'Ivan', 'Alvarez', '08830', NULL, 'ivanal@test.cat', '2020-03-10 12:20:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (15, 'SergiConsolas', crypt('12345678', gen_salt('bf')), 'Sergi', 'Llopart Sans', '08830', NULL, 'sergit@est.cat', '2020-03-10 12:30:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (16, 'Jotapé', crypt('12345678', gen_salt('bf')), 'Juan Pedro', 'Aguacil', '08830', NULL, 'jp@test.cat', '2020-03-10 12:35:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (17, 'Big_Mom', crypt('12345678', gen_salt('bf')), 'Noelia', 'Serrano', '08840', NULL, 'noelia@test.cat', '2020-03-10 12:40:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (18, 'Jenny_Oneil', crypt('12345678', gen_salt('bf')), 'Jennyfer', 'Garrido', '08830', NULL, 'jenny@test.cat', '2020-03-10 12:45:00', NULL, 0);
INSERT INTO users (id, username, password, name, last_name, location, geo_location, email, created_date, profile, rating) VALUES (19, 'JordiMatik', crypt('12345678', gen_salt('bf')), 'Jordi', 'Montserrat', '08830', NULL, 'jordi@test.cat', '2020-03-10 12:45:00', NULL, 0);


INSERT INTO authors (name) VALUES ('Frank Herbert');
INSERT INTO authors (name) VALUES ('Joseph Campbell');
INSERT INTO authors (name) VALUES ('Dashiell Hammet');
INSERT INTO authors (name) VALUES ('Patricia Highsmith');
INSERT INTO authors (name) VALUES ('Richard Ford');
INSERT INTO authors (name) VALUES ('Eduardo Mendoza');
INSERT INTO authors (name) VALUES ('Matilde Asensi');
INSERT INTO authors (name) VALUES ('Enric V. Alepuz Llopis');
INSERT INTO authors (name) VALUES ('William Shakespeare');
INSERT INTO authors (name) VALUES ('Michel de Montaigne');
INSERT INTO authors (name) VALUES ('Stendhal');
INSERT INTO authors (name) VALUES ('Quentin Alt 236 Boëton');
INSERT INTO authors (name) VALUES ('Fyodor Dostoevsky');
INSERT INTO authors (name) VALUES ('James Price & Zy Nicholson');
INSERT INTO authors (name) VALUES ('Kentaro Miura');
INSERT INTO authors (name) VALUES ('Plató');
INSERT INTO authors (name) VALUES ('Stephen King');


INSERT INTO genres (name) VALUES ('Novel·la');
INSERT INTO genres (name) VALUES ('Assaig');
INSERT INTO genres (name) VALUES ('Poesia');
INSERT INTO genres (name) VALUES ('Teatre');
INSERT INTO genres (name) VALUES ('Manga');
INSERT INTO genres (name) VALUES ('Guia');
INSERT INTO genres (name) VALUES ('Diàleg');



INSERT INTO languages (name) VALUES ('Català');
INSERT INTO languages (name) VALUES ('Castellà');
INSERT INTO languages (name) VALUES ('Anglès');
INSERT INTO languages (name) VALUES ('Francès');


INSERT INTO publishers (name) VALUES ('Anagrama');
INSERT INTO publishers (name) VALUES ('Edicions 62');
INSERT INTO publishers (name) VALUES ('Fondo de Cultura Económica');
INSERT INTO publishers (name) VALUES ('Hodder');
INSERT INTO publishers (name) VALUES ('Planeta');
INSERT INTO publishers (name) VALUES ('Círculo de lectores');
INSERT INTO publishers (name) VALUES ('Alféizar');
INSERT INTO publishers (name) VALUES ('Cambridge University Press');
INSERT INTO publishers (name) VALUES ('Oxford University Press');
INSERT INTO publishers (name) VALUES ('Cátedra Letras Universales');
INSERT INTO publishers (name) VALUES ('Folio Classique');
INSERT INTO publishers (name) VALUES ('Alianza Editorial');
INSERT INTO publishers (name) VALUES ('Vintage Classics');
INSERT INTO publishers (name) VALUES ('Third Éditions');
INSERT INTO publishers (name) VALUES ('Panini Manga');
INSERT INTO publishers (name) VALUES ('Piggyback');
INSERT INTO publishers (name) VALUES ('Plaza Janés');


INSERT INTO themes (name) VALUES ('Ciència-ficció');
INSERT INTO themes (name) VALUES ('Antropologia');
INSERT INTO themes (name) VALUES ('Novel·la negra');
INSERT INTO themes (name) VALUES ('Suspens');
INSERT INTO themes (name) VALUES ('Realisme social');
INSERT INTO themes (name) VALUES ('Guerra civil i postguerra');
INSERT INTO themes (name) VALUES ('Aventures');
INSERT INTO themes (name) VALUES ('Tragèdia');
INSERT INTO themes (name) VALUES ('Novela psicològica');
INSERT INTO themes (name) VALUES ('Novela de terror');
INSERT INTO themes (name) VALUES ('Discurs filosòfic');
INSERT INTO themes (name) VALUES ('Manga seinen');
INSERT INTO themes (name) VALUES ('Guia de videojoc');


INSERT INTO book_statuses (name) VALUES ('disponible');
INSERT INTO book_statuses (name) VALUES ('no disponible');
INSERT INTO book_statuses (name) VALUES ('reservat');


INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('84-339-2055-3', 'Mar de fondo', 4, 1, 1, 4, 2, '1ª Edició', '2020-03-10 12:00:00', 'Coberta desencolada', 1, 1);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('84-339-3022-2', 'El juego del escodite', 4, 1, 1, 1, 2, '3ª Edicio', '2020-03-11 12:00:00', 'Fulles envellides', 1, 1);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('84-297-1701-3', 'La clau de vidre', 3, 2, 1, 3, 1, '1ª Edició', '2020-03-12 12:00:00', 'Bon estat', 1, 2);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('978-607-16-2013-2', 'El héroe de las mil caras', 2, 3, 2, 2, 2, '2ª edició - 2ª reimpressió', '2020-03-13 12:00:00', 'Bon estat', 1, 3);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('978 0 340 96019 69', 'Dune', 1, 4, 1, 1, 3, '50th anniversary edition', '2020-03-13 14:00:00', 'Capa plàstica de la coberta deteriorada', 1, 2);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('978-84-339-7938-4', 'Francamente, Frank', 5, 1, 1, 5, 2, '1ª Edició', '2020-03-14 08:00:00', 'Bon estat', 1, 6);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('978-84-08-09725-9', 'Riña de gatos', 6, 5, 1, 6, 2, '1ª Edició', '2020-03-14 10:00:00', 'Petita ruptura en la sobrecoberta', 1, 5);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('978-84-672-2978-3', 'Tierra Firme', 7, 6, 1, 7, 2, '1ª Edició', '2020-03-14 14:00:00', 'Molt bon estat', 1, 5);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('13:978-84-948248-9-0', 'Yo pongo el muerto', 8, 7, 1, 6, 2, '1ª Edició', '2020-03-14 16:00:00', 'Molt bon estat. Amb dedicatòria personal', 1, 7);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('13:978-84-947805-3-0', 'Huidos', 8, 7, 1, 6, 2, '1ª Edició', '2020-03-15 08:00:00', 'Molt bon estat. Amb dedicatòria personal', 1, 9);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('978-0-521-61263-0', 'The Tragedy Of King Lear', 9, 8, 4, 8, 3, 'Edició de 2012', '2020-04-10 08:00:00', 'Amb subratllats i anotacions a llapis', 1, 12);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('978-0-19-953581-1', 'Hamlet', 9, 9, 4, 8, 3, 'Edició de 2008', '2020-04-10 08:50:00', 'Amb subratllats i anotacions a llapis', 1, 12);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('978-2-07-041239-6', 'Le Rouge et le Noir', 11, 11, 4, 9, 4, 'Edició de 2000', '2020-04-10 10:00:00', 'Pàgines envellides', 1, 17);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('84-206-3662-2', 'El banquete', 16, 12, 7, 11, 2, 'Setena reimpressió de 2005', '2020-04-11 12:44:00', 'Amb subratllats i anotacions a llapis', 1, 19);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('84-376-0539-3', 'Ensayos I', 10, 10, 2, 11, 2, 'Setena edició', '2020-04-12 13:59:00', 'En molt bon estat', 1, 13);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('978-84-01-33710-9', 'Duma Key', 17, 17, 1, 10, 2, 'Primera edició', '2020-04-12 18:00:00', 'Edició tapa dura ben conservada', 1, 18);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('978-0-521-61263-0', 'Crime and Punishment', 13, 13, 1, 9, 4, 'Translation by Pevear and Volokhonsky', '2020-04-13 23:59:00', 'Com nou', 1, 13);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('978-2-37784-106-6', 'À l''encre des Tènebres', 12, 14, 2, 1, 4, 'Primera edició', '2020-04-14 08:00:00', 'Edició tapa dura com nova', 1, 14);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('978-1-906064-83-9', 'Dragon Age II, la guía completa oficial', 14, 16, 6, 13, 2, '1ª Edició', '2020-04-14 18:30:00', 'Edició tapa tova en molt bon estat', 1, 15);
INSERT INTO books (isbn, title, author_id, publisher_id, genre_id, theme_id, language_id, edition, created_date, preservation, book_status_id, user_id) VALUES ('978-84-9167-015-5', 'Maximum Berserk 15', 15, 1, 5, 12, 2, '1ª Edició', '2020-04-16 08:30:00', 'Només llegit una vegada', 1, 16);
INSERT INTO authors
VALUES (1,'Noize MC');

INSERT INTO authors
VALUES (2,'Монеточка');

INSERT INTO authors
VALUES (3,'OG Buda');

INSERT INTO authors
VALUES (4,'Toxis');

INSERT INTO authors
VALUES (5, 'Леонид Агутин');

INSERT INTO authors
VALUES (6, 'Василий');


INSERT INTO Genres
VALUES (1, 'хип-хоп');

INSERT INTO Genres
VALUES (2, 'рок');

INSERT INTO Genres
VALUES (3, 'поп');

INSERT INTO Genres
VALUES (4, 'шансон');

INSERT INTO Genres
VALUES (5, 'реп');



INSERT INTO albums
VALUES (1, 'Изнутри', 2024);

INSERT INTO albums
VALUES (2, 'Не все дома', 2025);

INSERT INTO albums
VALUES (3, 'The Best', 2016);

INSERT INTO albums
VALUES (4, 'Красота', 2019);

INSERT INTO albums
VALUES (5, 'Деревня', 2019);



INSERT INTO tracks 
VALUES (1, 'BANDZ', '2 minutes 28 seconds', 1);

INSERT INTO tracks 
VALUES (2, 'В УНИСОН', '2 minutes 33 seconds', 1);

INSERT INTO tracks 
VALUES (3, 'Обломки чувств', '3 minutes 30 seconds', 2);

INSERT INTO tracks
VALUES (4, 'Светлая полоса', '3 minutes 51 seconds', 2);

INSERT INTO tracks 
VALUES (5, 'На сиреневой луне', '4 minutes 3 seconds', 3);

INSERT INTO tracks 
VALUES (6, 'Остров', '3 minutes 51 seconds', 3);

INSERT INTO tracks 
VALUES (7, 'мой друг', '4 minutes 19 seconds', 3);

INSERT INTO tracks 
VALUES (8, 'природа', '5 minutes 19 seconds', 4);

INSERT INTO tracks 
VALUES (9, 'my romance', '2 minutes 19 seconds', 4);


INSERT INTO collections
VALUES (1, 'Топ-3', 2024);

INSERT INTO collections 
VALUES (2, 'Меломан', 2025);

INSERT INTO collections 
VALUES (3, 'Хиты 2016', 2016);

INSERT INTO collections
VALUES (4, 'Новинки', 2025);

INSERT INTO collections
VALUES (5, 'Дискотека', 2019);


INSERT INTO genresauthors
VALUES (1, 3);

INSERT INTO genresauthors
VALUES (1, 4);

INSERT INTO genresauthors
VALUES (2, 1);

INSERT INTO genresauthors
VALUES (2, 2);

INSERT INTO genresauthors
VALUES (2, 5);

INSERT INTO genresauthors
VALUES (3, 2);

INSERT INTO genresauthors
VALUES (3, 5);

INSERT INTO genresauthors
VALUES (4, 5);

INSERT INTO genresauthors
VALUES (5, 1);

INSERT INTO genresauthors
VALUES (5, 3);

INSERT INTO genresauthors
VALUES (5, 4);

INSERT INTO genresauthors
VALUES (5, 6);


INSERT INTO albumsauthors 
VALUES (1, 3);

INSERT INTO albumsauthors 
VALUES (1, 4);

INSERT INTO albumsauthors 
VALUES (2, 1);

INSERT INTO albumsauthors 
VALUES (2, 2);

INSERT INTO albumsauthors 
VALUES (3, 5);

INSERT INTO albumsauthors 
VALUES (4, 1);

INSERT INTO albumsauthors 
VALUES (5, 6);


INSERT INTO collectionstracks  
VALUES (1, 1);

INSERT INTO collectionstracks  
VALUES (1, 2);

INSERT INTO collectionstracks  
VALUES (1, 5);

INSERT INTO collectionstracks  
VALUES (2, 2);

INSERT INTO collectionstracks  
VALUES (2, 5);

INSERT INTO collectionstracks  
VALUES (3, 5);

INSERT INTO collectionstracks  
VALUES (3, 6);

INSERT INTO collectionstracks  
VALUES (4, 1);

INSERT INTO collectionstracks  
VALUES (4, 2);

INSERT INTO collectionstracks  
VALUES (5, 6);

INSERT INTO collectionstracks  
VALUES (5, 7);

INSERT INTO collectionstracks  
VALUES (5, 9);

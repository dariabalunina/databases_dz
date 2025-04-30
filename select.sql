SELECT name, duration FROM Tracks t
WHERE duration = (SELECT MAX(duration) FROM Tracks);

SELECT name FROM Tracks t
WHERE duration >= '3 minutes 30 seconds';

SELECT name FROM collections c 
WHERE year BETWEEN 2018 AND 2020;

SELECT name FROM authors a 
WHERE name NOT LIKE '% %';

SELECT name FROM tracks t 
WHERE name LIKE '%мой%' OR name LIKE '%my%';

-- задание 3
-- количество исполнителей в каждом жанре

SELECT genre_id, COUNT(author_id) FROM genresauthors ga 
GROUP BY genre_id
ORDER BY genre_id;

-- количество треков, вошедших в альбомы 2019-2020

SELECT count(*) FROM tracks t 
JOIN albums a ON t.id_album = a.id
WHERE a."year" BETWEEN 2019 AND 2020;

-- средняя продолжительность треков по каждому альбому

SELECT id_album, AVG(duration) FROM tracks t 
GROUP BY id_album 
ORDER BY id_album ;

-- все исполнители, которые не выпустили альбомы в 2020 году

SELECT author_id FROM albumsauthors aa 
JOIN albums a ON a.id = aa.album_id
WHERE a."year" != 2020
GROUP BY aa.author_id 
ORDER BY aa.author_id;

-- названия сборников, в которых присутствует конкретный исполнитель (Noize MC)

SELECT c.name FROM collections c 
JOIN collectionstracks ct ON c.id = ct.collection_id
JOIN tracks t ON t.id = ct.track_id 
JOIN albums a ON a.id = t.id_album
JOIN albumsauthors a2 ON a.id = a2.author_id
JOIN authors a3 ON a3.id = a2.author_id
WHERE a3.name = 'Noize MC'
GROUP BY c.id
ORDER BY c.id ;

-- задание 4
-- названия альбомов, в которых присутствуют исполнители более чем 1 жанра

SELECT DISTINCT a.name FROM albums a 
JOIN albumsauthors a2 ON a.id = a2.album_id
JOIN genresauthors ga ON a2.author_id = ga.author_id
GROUP BY a.name, ga.author_id
HAVING COUNT(*) > 1;

-- наименование треков, которые не входят в сборники

select t.name from tracks t
left join collectionstracks c on t.id = c.track_id
where c.track_id is null;

-- исполнитель или исполнители, написавшие самый короткий по продолдительности трек

select distinct a.name from authors a 
join albumsauthors a2 on a2.author_id = a.id
join albums a3 on a2.album_id = a3.id
join tracks t on t.id_album = a3.id
group by a.name, t.duration
having t.duration = (SELECT MIN(t.duration) FROM tracks t );




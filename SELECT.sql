--название и год выхода альбомов, вышедших в 2018 году
SELECT album_title, year_release
FROM albums
WHERE year_release = 2018;


--название и продолжительность самого длительного трека
SELECT track_title, duretion
FROM tracks
WHERE duretion = (SELECT max(duretion) FROM tracks);
--или так:
SELECT track_title, duretion
FROM tracks
ORDER BY duretion DESC
LIMIT 1


--название треков, продолжительность которых не менее 3,5 минуты
SELECT track_title
FROM tracks
WHERE duretion > '00:03:30'


--названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT collection_title
FROM collection
WHERE year_release BETWEEN 2018 AND 2020


--исполнители, чье имя состоит из 1 слова
SELECT performer_name
FROM performer
WHERE performer_name NOT LIKE '% %'


--название треков, которые содержат слово "мой"/"my"
SELECT track_title
FROM tracks
WHERE track_title LIKE '%My%' OR track_title LIKE '%мой%' OR track_title LIKE '%Мой%' OR track_title LIKE '%my%';
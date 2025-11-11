--Задание 2--
--1. Название и продолжительность самого длительного трека--
SELECT name, duration FROM tracks
WHERE duration = (SELECT max(duration) FROM tracks);

--2.Название треков, продолжительность которых не менее 3,5 минут (≥ 3 мин 30 сек = '00:03:30')
SELECT name FROM tracks
WHERE duration >= '00:03:30';

-- 3. Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name FROM collections
WHERE year_of_realese BETWEEN '2018-01-01' AND '2020-01-01';

-- 4. Исполнители, чьё имя состоит из одного слова
SELECT name_artist FROM artists
WHERE name_artist NOT LIKE '% %'
	AND name_artist IS NOT NULL
	AND name_artist !='';

--5. Название треков, которые содержат слово «мой» или «my»
SELECT name FROM tracks
WHERE name ~* '\mмой\M' OR name ~* '\mmy\M';

--Задание 3--

-- 1. Количество исполнителей в каждом жанре
SELECT 
    g.name AS genre,
    COUNT(ag.artist_id) AS artist_count
FROM Musical_genres g
LEFT JOIN Artists_gangres ag ON g.id = ag.genre_id
GROUP BY g.id, g.name
ORDER BY artist_count DESC;

-- 2. Количество треков, вошедших в альбомы 2019–2020 годов
SELECT 
    COUNT(t.id) AS track_count
FROM Tracks t
JOIN Albums a ON t.album_id = a.id
WHERE EXTRACT(YEAR FROM a.year_of_release) IN (2019, 2020);

-- 3. Средняя продолжительность треков по каждому альбому
SELECT 
    a.name AS album,
    ROUND(AVG(EXTRACT(EPOCH FROM t.duration)) / 60, 2) AS avg_duration_minutes
FROM Albums a
JOIN Tracks t ON a.id = t.album_id
GROUP BY a.id, a.name
ORDER BY avg_duration_minutes DESC;

--4. Все исполнители, которые не выпустили альбомы в 2020 году
SELECT DISTINCT ar.name_artist
FROM Artists ar
WHERE ar.id NOT IN (
    SELECT DISTINCT aa.artist_id
    FROM Albums_artist aa
    JOIN Albums a ON aa.album_id = a.id
    WHERE EXTRACT(YEAR FROM a.year_of_release) = 2020
);
--5. Названия сборников, в которых присутствует конкретный исполнитель
SELECT DISTINCT c.name AS collection_name
FROM Collections c
JOIN Collections_tracks ct ON c.id = ct.collection_id
JOIN Tracks t ON ct.track_id = t.id
JOIN Albums a ON t.album_id = a.id
JOIN Albums_artist aa ON a.id = aa.album_id
JOIN Artists ar ON aa.artist_id = ar.id
WHERE ar.name_artist = 'Ария';
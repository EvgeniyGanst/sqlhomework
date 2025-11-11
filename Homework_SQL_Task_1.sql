INSERT INTO Musical_genres (name) VALUES
('Rock'), ('Pop'), ('Metal');

INSERT INTO Artists (name_artist) VALUES 
('Zemfira'),
('Queen'),
('Ария'),
('Dua Lipa');

INSERT INTO artists_gangres (artist_id, genre_id) VALUES
(1, 1), (1, 2),
(2, 1),
(3, 3),
(4, 2);

INSERT INTO albums (name, year_of_release) VALUES
('Zemfira', '1999-05-10'),
('A Night at the Opera', '1975-11-21'),
('Крещение огнём', '2003-02-28'),
('Future Nostalgia', '2020-03-27'),
('Fine Line', '2019-12-13');      

INSERT INTO albums_artist (artist_id, album_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(4, 5);

INSERT INTO Collections (name, year_of_realese) VALUES 
('Rock Classics', '2019-01-01'),
('Pop 2020 Hits', '2020-06-15'),
('Metal Masters', '2021-03-10');

INSERT INTO Tracks (name, duration, album_id) VALUES 
('Мой', '00:03:10', 1),
('My Love', '00:04:15', 1),
('Bohemian Rhapsody', '00:05:55', 2),
('Show Must Go On', '00:04:05', 2),
('Потеряй меня', '00:03:22', 3),
('Сказочная тайга', '00:05:21', 3),
('Don''t Start Now', '00:03:03', 4),
('Levitating', '00:03:23', 4),
('Watermelon Sugar', '00:02:54', 5),
('Adore You', '00:03:27', 5);


INSERT INTO Collections_tracks (track_id, collection_id) VALUES 
(3, 1),
(4, 1),
(5, 1), 
(6, 1),
(7, 2), 
(8, 2),
(5, 3),
(6, 3);

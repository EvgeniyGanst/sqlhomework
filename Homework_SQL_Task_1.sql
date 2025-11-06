
INSERT INTO Musical_genres
	VALUES(1, 'Rock');

INSERT INTO Musical_genres
	VALUES (2, 'Pop');

INSERT INTO Musical_genres
	VALUES (3, 'Hip-hop');

INSERT INTO artists
	VALUES (1, 'Ленинград');

INSERT INTO artists
	VALUES (2, 'Звери');

INSERT INTO artists 
	VALUES (3, 'Drake');

INSERT INTO artists
	VALUES (4, 'Ёлка');

INSERT INTO artists_gangres
	VALUES (2, 1);

INSERT INTO artists_gangres
	VALUES (1, 1);

INSERT INTO artists_gangres
	VALUES (3, 3);

INSERT INTO artists_gangres
	VALUES (4, 2);

INSERT INTO albums
	VALUES (1, 'Scorpion', '2018-05-22');

INSERT INTO albums
	VALUES (2, 'Точки расставлены', '2014-03-01');

INSERT INTO albums
	VALUES (3, 'Синяя Богиня', '2024-08-09');

INSERT INTO albums
	VALUES (4, 'Районы-Кварталы', '2004-02-13');

INSERT INTO albums_artist 
	VALUES (3, 1);

INSERT INTO albums_artist 
	VALUES (1, 3);

INSERT INTO albums_artist 
	VALUES (4, 2);

INSERT INTO albums_artist 
	VALUES (2, 4);

INSERT INTO collections 
	VALUES (1, '100 хитов русской поп музыки', '2025-10-01');

INSERT INTO collections 
	VALUES (2, '100 рок-хитов', '2025-05-05');

INSERT INTO collections 
	VALUES (3, 'Рэп и хип-хоп: лучшее', '2025-03-02');

INSERT INTO collections 
	VALUES (4, '100 хитов Рэп и хип-хоп', '2025-09-15');

INSERT INTO tracks 
	VALUES (1, 'Survival', '00:02:16', 1 );

INSERT INTO tracks 
	VALUES (2, 'Elevate', '00:03:05', 1 );

INSERT INTO tracks 
	VALUES (3, 'Прованс', '00:03:25', 2 );

INSERT INTO tracks 
	VALUES (4, 'Шоколадка', '00:03:32', 2 ); 

INSERT INTO tracks 
	VALUES (5, 'Районы-кварталы', '00:03:24', 4);

INSERT INTO tracks 
	VALUES (6, 'Дела', '00:03:15', 3);

INSERT INTO collections_tracks
	VALUES (1, 3);

INSERT INTO collections_tracks
	VALUES (1, 4);

INSERT INTO collections_tracks
	VALUES (2, 3);

INSERT INTO collections_tracks
	VALUES (3, 1);

INSERT INTO collections_tracks
	VALUES (4, 1);

INSERT INTO collections_tracks
	VALUES (5, 2);

INSERT INTO collections_tracks
	VALUES (6, 2);
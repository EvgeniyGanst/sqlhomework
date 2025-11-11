INSERT INTO Musical_genres VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop');

INSERT INTO artists VALUES
(1, 'Ленинград'),
(2, 'Звери'),
(3, 'Drake and Drake'),
(4, 'Ёлка Метёлка');

INSERT INTO artists_gangres VALUES
(2, 1), (1, 1), (3, 3), (4, 2);

INSERT INTO albums VALUES
(1, 'Scorpion', '2018-05-22'),
(2, 'Точки расставлены', '2014-03-01'),
(3, 'Синяя Богиня', '2024-08-09'),
(4, 'Районы-Кварталы', '2004-02-13');

INSERT INTO albums_artist VALUES
(3, 1), (1, 3), (4, 2), (2, 4);

INSERT INTO collections VALUES
(1, '100 хитов русской поп музыки', '2018-10-01'),
(2, '100 рок-хитов', '2019-05-05'),
(3, 'Рэп и хип-хоп: лучшее', '2020-03-02'),
(4, '100 хитов Рэп и хип-хоп', '2023-09-15');

INSERT INTO tracks VALUES 
(1, 'My Survival', '00:02:16', 1 ),
(2, 'Elevate', '00:03:05', 1 ),
(3, 'Мой Прованс', '00:03:25', 2 ),
(4, 'Шоколадка', '00:03:32', 2 ),
(5, 'Районы-кварталы', '00:03:24', 4),
(6, 'Дела', '00:03:15', 3);


INSERT INTO collections_tracks VALUES 
(1, 3), (1, 4), (2, 3), (3, 1), (4, 1), (5, 2), (6, 2);
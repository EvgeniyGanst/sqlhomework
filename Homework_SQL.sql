create table if not exists Musical_genres (
	id serial primary key,
	name varchar(60) not null
);

create table if not exists Artists (
	id serial primary key,
	name_artist varchar(60) not null 
);

create table if not exists Artists_gangres (
	artist_id integer references Artists(id),
	genre_id integer references Musical_genres(id),
	primary key (artist_id, genre_id)
);

create table if not exists Albums (
	id serial primary key,
	name varchar(60) not null,
	year_of_release date not null
);

create table if not exists Albums_artist (
	artist_id integer references Artists(id),
	album_id integer references  Albums(id) 
);

create table if not exists Tracks (
	id serial primary key,
	name varchar(60) not null,
	duration time not null,
	album_id integer not null references Albums(id)
);

create table if not exists Collections (
	id serial primary key,
	name varchar(60) not null,
	year_of_realese date not null
);

create table if not exists Collections_tracks (
    track_id integer not null references  Tracks(id),
    collection_id integer not null references Collections(id),
    PRIMARY KEY (track_id, collection_id)
);
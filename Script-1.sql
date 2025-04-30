create table if not exists Collections(
	id SERIAL primary key,
	name VARCHAR(40) not null,
	year numeric check (year > 0)
); 

create table if not exists Genres(
	id SERIAL primary key,
	name VARCHAR(40) not null
);

create table if not exists Authors(
	id SERIAL primary key,
	name VARCHAR(40) not null
); 

create table if not exists Albums(
	id SERIAL primary key,
	name VARCHAR(40) not null,
	year numeric check (year > 0)
); 

create table if not exists Tracks(
	id SERIAL primary key,
	name VARCHAR(40) not null,
	duration interval not null,
	id_album integer references Albums(id)
); 


create table if not exists GenresAuthors(
	genre_id integer references Genres(id),
	author_id integer references Authors(id)
);

create table if not exists AlbumsAuthors(
	album_id integer references Albums(id),
	author_id integer references Authors(id)
);

create table if not exists CollectionsTracks(
	collection_id integer references Collections(id),
	track_id integer references Tracks(id)
);



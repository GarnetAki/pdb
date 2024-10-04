create table shikimori.User(
	Id serial primary key unique,
	Login varchar(255) unique not null,
	Email varchar(255) unique not null,
	Avatar varchar(255),
	Birthday timestamp,
	ShowAge boolean not null,
	Password varchar(255) not null
);

create table shikimori.Title(
	Id serial primary key unique,
	Name varchar(255) not null,
	Poster varchar(255),
	Type varchar(255) not null,
	EpisodesCount int,
	EpisodesDuration varchar(255),
	Status varchar(255) not null,
	Rating varchar(255),
	LicensedBy varchar(255),
	ReleaseDate timestamp,
	Synopsis varchar(20000),
	Producer varchar(255)
);

create table shikimori.Genre(
	Id serial primary key unique,
	Name varchar(255) not null,
	IsTheme boolean not null
);

create table shikimori.Character(
	Id serial primary key unique,
	Name varchar(255) not null,
	Description varchar(2048),
	Avatar varchar(255)
);

create table shikimori.Staff(
	Id serial primary key unique,
	Name varchar(255) not null,
	Avatar varchar(255),
	Birthday timestamp,
	Director int,
	Storyboard int,
	EpisodeDirector int,
	AssistantDirector int,
	Screenplay int,
	Script int,
	SeriesComposition int,
	OriginalCreator int,
	Story int,
	ThemeSongLyrics int,
	Producer int,
	Seiyu int,
	KeyAnimation int,
	ThemeSongPerformance int
);
create table shikimori.Comment(
	Id serial primary key unique,
	UserId int not null references shikimori.User(id),
	ReplyToId int references shikimori.Comment(id),
	Text varchar(2048),
	IsOfftopic boolean not null,
	CreatedAt timestamp not null
);

create table shikimori.Review(
	Id serial primary key unique,
	UserId int not null references shikimori.User(id),
	TitleId int not null references shikimori.Title(id),
	Text varchar(2048),
	Polarity int not null
);

create table shikimori.List(
	UserId int not null references shikimori.User(id),
	TitleId int not null references shikimori.Title(id),
	ListName varchar(255),
	Score int,
	EpisodesComplete int,
	TimesComplete int,
	primary key(UserId, TitleId, ListName)
);
create table shikimori.ReviewComment(
	ReviewId int not null references shikimori.Review(id),
	CommentId int not null references shikimori.Comment(id),
	primary key(ReviewId, CommentId)
);

create table shikimori.TitleComment(
	TitleId int not null references shikimori.Title(id),
	CommentId int not null references shikimori.Comment(id),
	primary key(TitleId, CommentId)
);

create table shikimori.Friend(
	UserIdFirst int not null references shikimori.User(id),
	UserIdSecond int not null references shikimori.User(id),
	primary key(UserIdFirst, UserIdSecond)
);

create table shikimori.TitleDependency(
	TitleIdFirst int not null references shikimori.Title(id),
	TitleIdSecond int not null references shikimori.Title(id),
	primary key(TitleIdFirst, TitleIdSecond)
);

create table shikimori.CharacterTitle(
	CharacterId int not null references shikimori.Character(id),
	TitleId int not null references shikimori.Title(id),
	primary key(CharacterId, TitleId)
);

create table shikimori.SeiyuCharacter(
	StaffId int not null references shikimori.Staff(id),
	CharacterId int not null references shikimori.Character(id),
	primary key(StaffId, CharacterId)
);

create table shikimori.TitleStaff(
	TitleId int not null references shikimori.Title(id),
	StaffId int not null references shikimori.Staff(id),
	primary key(TitleId, StaffId)
);

create table shikimori.TitleGenre(
	TitleId int not null references shikimori.Title(id),
	GenreId int not null references shikimori.Genre(id),
	primary key(TitleId, GenreId)
);
create table member (
	m_id 	int auto_increment,
	e_mail 	varchar(255) not null,
	password varchar(255) not null,

	primary key(m_id),
	unique(e_mail)
);
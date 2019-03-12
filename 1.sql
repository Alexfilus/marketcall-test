create table contact_relations
(
  friend_1 int default 0 not null,
  friend_2 int default 0 not null,
  primary key (friend_1, friend_2),
  constraint contact_relations_contacts_ID_fk
    foreign key (friend_2) references contacts (ID)
      on delete cascade,
  constraint contact_relations_contacts_ID_fk_2
    foreign key (friend_1) references contacts (ID)
      on delete cascade
);

INSERT INTO test.contact_relations (friend_1, friend_2) VALUES (1, 2);
INSERT INTO test.contact_relations (friend_1, friend_2) VALUES (1, 3);
INSERT INTO test.contact_relations (friend_1, friend_2) VALUES (1, 4);
INSERT INTO test.contact_relations (friend_1, friend_2) VALUES (1, 5);
INSERT INTO test.contact_relations (friend_1, friend_2) VALUES (1, 6);
INSERT INTO test.contact_relations (friend_1, friend_2) VALUES (1, 7);
INSERT INTO test.contact_relations (friend_1, friend_2) VALUES (2, 1);
INSERT INTO test.contact_relations (friend_1, friend_2) VALUES (2, 3);
INSERT INTO test.contact_relations (friend_1, friend_2) VALUES (3, 1);
INSERT INTO test.contact_relations (friend_1, friend_2) VALUES (3, 2);
INSERT INTO test.contact_relations (friend_1, friend_2) VALUES (3, 4);
INSERT INTO test.contact_relations (friend_1, friend_2) VALUES (4, 1);
INSERT INTO test.contact_relations (friend_1, friend_2) VALUES (4, 3);
INSERT INTO test.contact_relations (friend_1, friend_2) VALUES (5, 1);
INSERT INTO test.contact_relations (friend_1, friend_2) VALUES (6, 1);
INSERT INTO test.contact_relations (friend_1, friend_2) VALUES (6, 7);
create table contacts
(
  ID   int auto_increment
    primary key,
  NAME varchar(40) null
);

INSERT INTO test.contacts (ID, NAME) VALUES (1, 'Alex');
INSERT INTO test.contacts (ID, NAME) VALUES (2, 'Jane');
INSERT INTO test.contacts (ID, NAME) VALUES (3, 'Kate');
INSERT INTO test.contacts (ID, NAME) VALUES (4, 'Bobby');
INSERT INTO test.contacts (ID, NAME) VALUES (5, 'Ed');
INSERT INTO test.contacts (ID, NAME) VALUES (6, 'Peter');
INSERT INTO test.contacts (ID, NAME) VALUES (7, 'Rob');
INSERT INTO test.contacts (ID, NAME) VALUES (8, 'Jim');
INSERT INTO test.contacts (ID, NAME) VALUES (9, 'Olly');
INSERT INTO test.contacts (ID, NAME) VALUES (10, 'Mark');
-- Data Engineering
-- drop tables if they exists

drop table if exists contacts cascade;
drop table if exists category cascade;
drop table if exists subcategory cascade;
drop table if exists campaign cascade;

-- create tables
CREATE TABLE category (
	category_id varchar NOT NULL,
	category varchar (100) NOT NULL,
	primary key (category_id)
);

CREATE TABLE subcategory (
	subcategory_id varchar NOT NULL,
	subcategory varchar (100) NOT NULL,
	primary key (subcategory_id)
);

CREATE TABLE contacts (
	contact_id int NOT NULL,
	first_name varchar (100) NOT NULL,
	last_name varchar (100) NOT NULL,
	email varchar (100) NOT NULL,
	primary key (contact_id)
);

CREATE TABLE campaign (
	cf_id int NOT NULL,
	contact_id int NOT NULL,
	company_name varchar (100) NOT NULL,
	description varchar (100) NOT NULL,
	goal double precision NOT NULL,
	pledged double precision NOT NULL,
	outcome varchar (250) NOT NULL,
	backers_count int NOT NULL,
	country varchar (100) NOT NULL,
	currency varchar (100) NOT NULL,
	launched_date date NOT NULL,
	end_date date NOT NULL,
	category_id varchar (100) NOT NULL,
	subcategory_id varchar (100) NOT NULL,
	primary key (cf_id),
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id)
);


-- check that db was created
select * from category;
select * from subcategory;
select * from contacts;
select * from campaign;
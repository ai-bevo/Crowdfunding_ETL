DROP TABLE category;
CREATE TABLE category(
	category_id VARCHAR NOT NULL PRIMARY KEY,
	category VARCHAR NOT NULL
);
SELECT * FROM category;

DROP TABLE subcategory;
CREATE TABLE subcategory(
	subcategory_id VARCHAR NOT NULL PRIMARY KEY,
	subcategory VARCHAR NOT NULL
);
SELECT * FROM subcategory;

DROP TABLE campaign;
CREATE TABLE campaign(
	cf_id INT NOT NULL PRIMARY KEY,
	contact_id VARCHAR NOT NULL,
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal VARCHAR NOT NULL,
	pledged VARCHAR NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count VARCHAR NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launch_date VARCHAR NOT NULL,
	end_date VARCHAR NOT NULL,
	category_id VARCHAR NOT NULL,
	subcategory_id VARCHAR NOT NULL,
	FOREIGN KEY () REFERENCES titles()
);
SELECT * FROM campaign;


DROP TABLE contacts;
CREATE TABLE contacts(
	contact_id INT NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name
	email
	PRIMARY KEY (, ),
	FOREIGN KEY () REFERENCES (),
	FOREIGN KEY () REFERENCES ()
);
SELECT * FROM contacts;


DROP TABLE category;
CREATE TABLE category(
	category_id VARCHAR NOT NULL PRIMARY KEY,
	category VARCHAR NOT NULL,
	FOREIGN KEY (category_id) REFERENCES campaign(category_id)
	
);
SELECT * FROM category;

DROP TABLE subcategory;
CREATE TABLE subcategory(
	subcategory_id VARCHAR NOT NULL PRIMARY KEY,
	subcategory VARCHAR NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES campaign(subcategory_id)
);
SELECT * FROM subcategory;

DROP TABLE campaign;
CREATE TABLE campaign(
	cf_id INT NOT NULL PRIMARY KEY,
	contact_id INT NOT NULL PRIMARY KEY,
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launch_date VARCHAR NOT NULL,
	end_date VARCHAR NOT NULL,
	category_id VARCHAR NOT NULL,
	subcategory_id VARCHAR NOT NULL
);
SELECT * FROM campaign;


DROP TABLE contacts;
CREATE TABLE contacts(
	contact_id INT NOT NULL PRIMARY KEY
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL
	FOREIGN KEY(contact_id) REFERENCES campaign(contact_id),
);
SELECT * FROM contacts;


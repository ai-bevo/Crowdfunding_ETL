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


DROP TABLE contacts;
CREATE TABLE contacts(
	contact_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL
);
SELECT * FROM contacts;

-- create campaign table last to establish foreign key connections
DROP TABLE campaign;
CREATE TABLE campaign(
	cf_id INT NOT NULL PRIMARY KEY,
	contact_id INT NOT NULL,
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal numeric NOT NULL,
	pledged numeric NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR NOT NULL,
	subcategory_id VARCHAR NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY(contact_id) REFERENCES contacts(contact_id)
);
SELECT * FROM campaign;
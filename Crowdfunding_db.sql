CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE category (
    category_id VARCHAR(255) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(255) PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);

CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    goal DECIMAL(12, 2) NOT NULL,
    pledged DECIMAL(12, 2),
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(50),
    currency VARCHAR(10),
    launched_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    category_id VARCHAR(255) NOT NULL,
    subcategory_id VARCHAR(255),
    CONSTRAINT fk_campaign_contact FOREIGN KEY (contact_id)
        REFERENCES contacts (contact_id),
    CONSTRAINT fk_campaign_category FOREIGN KEY (category_id)
        REFERENCES category (category_id),
    CONSTRAINT fk_campaign_subcategory FOREIGN KEY (subcategory_id)
        REFERENCES subcategory (subcategory_id)
);

SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;

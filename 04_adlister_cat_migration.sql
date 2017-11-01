USE adlister_db;

DROP TABLE IF EXISTS cats;

ALTER TABLE adlister_db.ads
    ADD cat_id INT NOT NULL;


CREATE TABLE cats (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id)
);

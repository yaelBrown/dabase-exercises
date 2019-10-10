USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id int UNSIGNED AUTO_INCREMENT NOT NULL,
    PRIMARY KEY(id),
    artist VARCHAR(50),
    name VARCHAR(50),
    release_date INT(4),
    sales FLOAT(5,2) UNSIGNED,
    genre VARCHAR(100)
);
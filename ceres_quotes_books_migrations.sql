USE ceres_db;

DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS quotes;
DROP TABLE IF EXISTS authors;

CREATE TABLE authors(
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        first_name VARCHAR(50),
                        last_name VARCHAR(50) NOT NULL,
                        PRIMARY KEY (id),
                        UNIQUE (first_name, last_name)
);

CREATE TABLE quotes(
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       author INT UNSIGNED,
                       content TEXT NOT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (author) REFERENCES authors(id)
);

CREATE TABLE books(
                      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                      title VARCHAR(250) NOT NULL,
                      author INT UNSIGNED,
                      genre VARCHAR(50),
                      description VARCHAR(250),
                      release_year INT(4),
                      PRIMARY KEY (id),
                      FOREIGN KEY (author) REFERENCES authors(id)
);
© 2019 GitHub, Inc.
DROP DATABASE IF EXISTS adlisterTest;
CREATE DATABASE adlisterTest;

USE adlisterTest;

-- Setup Tables
CREATE TABLE Users (
                       id int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                       email VARCHAR(100),
                       password VARCHAR(50)
);

CREATE TABLE Ads (
                     id int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                     author_id int UNSIGNED,
                     title VARCHAR(100),
                     description TEXT
);

CREATE TABLE Ads_Category (
                              ads_id int UNSIGNED NOT NULL,
                              cat_id int UNSIGNED NOT NULL
);

CREATE TABLE Category (
                          id int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(100),
                          description VARCHAR(255)
);
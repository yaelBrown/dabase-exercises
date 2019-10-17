DROP DATABASE IF EXISTS adlisterTest;
CREATE DATABASE adlisterTest;

USE adlisterTest;


-- Setup Tables
CREATE TABLE Users (
                       id int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                       email VARCHAR(100),
                       password VARCHAR(50)
);

CREATE TABLE User_Ads (
                          user_id int UNSIGNED NOT NULL,
                          ads_id int UNSIGNED NOT NULL,
                          UNIQUE (user_id, ads_id)
);

CREATE TABLE Ads (
                     id int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
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
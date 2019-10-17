INSERT INTO Category (name, description) VALUES ("For Sale", "Selling Awesome Items");
INSERT INTO Category (name, description) VALUES ("Trade", "Trading Awesome Items");

INSERT INTO Ads (title, description) VALUES ("Ford Focus", "It runs!");
INSERT INTO Ads (title, description) VALUES ("Ford Escape", "It runs sometimes!");
INSERT INTO Ads (title, description) VALUES ("Ford Fiat", "It runs!");

INSERT INTO Ads_Category (Ads_id, Cat_id) VALUES (1, 2);
INSERT INTO Ads_Category (Ads_id, Cat_id) VALUES (3, 2);

INSERT INTO User_Ads (User_id, Ads_id) VALUES (1, 3);

SELECT * FROM ads;
SELECT * FROM User_Ads;

INSERT INTO Users (email, password) VALUES ("demo@demo.com", "demoPw");
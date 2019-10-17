-- For a given ad, what is the email address of the user that created it?
SELECT email FROM Users
WHERE id IN (
    SELECT * FROM ads
    WHERE Ads.id = 1
);

-- For a given ad, what category, or categories, does it belong to?
SELECT Category.name FROM Category
                              JOIN Ads_Category ON Ads_Category.cat_id = Category.id
                              JOIN Ads ON Ads.id = Ads_Category.ads_id;


-- For a given category, show all the ads that are in that category.
SELECT title FROM ads WHERE id IN (
    SELECT ads_id FROM ads_category WHERE cat_id IN (
        SELECT id FROM Category
        WHERE name = "Trade"
    )
);

-- For a given user, show all the ads they have posted.
SELECT title FROM Ads WHERE id IN (
    SELECT ads_id FROM User_Ads WHERE user_id IN (
        SELECT id FROM Users WHERE email = "demo@demo.com"
    )
);
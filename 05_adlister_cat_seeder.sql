use adlister_db;

TRUNCATE categories; #Remove from production
INSERT INTO adlister_db.categories (description)
VALUES('Ads'),
  ('Appliences'),
  ('Arts and Crafts'),
  ('Parts'),
  ('Vehicles for Sale'),
  ('Barter'),
  ('Electronics'),
  ('Free'),
  ('Furniture'),
  ('Employment'),
  ('Wanted');

use adlister_db;

-- # TRUNCATE users; #Remove from production
INSERT INTO adlister_db.users (username,email,password)
VALUES('mari', 'mari@awesome.com', '$2a$12$7MhO50ZVA0nxYl1KryqPPuT8dag5x5q6CE01UbqYLl9RT/r.kZOBW'),
  ('tomas', 'tomas@awesome.com', '$2a$12$MfVlW5joDLi6YRfQKSzWk.I7wxprSObG0n4ta1loXZf5ntPdnsHu2'),
  ('art', 'art@awesome.com', '$2a$12$i4GlO1Fr5a87Mx9THIthXuefjla77V2S0wIjEc3pw4BApvvU5zEIS');
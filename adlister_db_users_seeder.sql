use adlister_db;

# TRUNCATE users; #Remove from production
INSERT INTO adlister_db.users (username,email,password)
VALUES ('TomasH', 'tomas@awesome.com', '$2a$12$DbtnQ6OsWU86yvwyCvezWOO4t22t0HmQwBi/EzozFBzXHSUefmRve'),
  ('ArtV', 'art@@awesome.com', '$2a$12$DbtnQ6OsWU86yvwyCvezWOO4t22t0HmQwBi/EzozFBzXHSUefmRve'),
  ('MariC', 'mari@awesome.com', '$2a$12$DbtnQ6OsWU86yvwyCvezWOO4t22t0HmQwBi/EzozFBzXHSUefmRve');
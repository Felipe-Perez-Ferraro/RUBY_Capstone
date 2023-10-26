CREATE TABLE Author (
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30)
);

CREATE TABLE Genre (
  id INTEGER PRIMARY KEY,
  name VARCHAR(30)
); 

CREATE TABLE Label (
  id INTEGER PRIMARY KEY,
  title VARCHAR(60),
  color VARCHAR(60)
);


CREATE TABLE Book (
  id INTEGER PRIMARY KEY,
  publish_date DATE,
  publisher VARCHAR(30),
  cover_state VARCHAR(30),
  author_id INTEGER REFERENCES Author(id),
  genre_id INTEGER REFERENCES Genre(id),
  label_id INTEGER REFERENCES Label(id)
);

CREATE TABLE Game (
  id INTEGER PRIMARY KEY,
  publish_date DATE,
  multiplayer VARCHAR(30),
  last_played_at DATE,
  author_id INTEGER REFERENCES Author(id),
  genre_id INTEGER REFERENCES Genre(id),
  label_id INTEGER REFERENCES Label(id)
);

CREATE TABLE MusicAlbum (
  id PRIMARY KEY,
  publish_date DATE,
  on_spotify VARCHAR(30),
  author_id INTEGER REFERENCES Author(id),
  genre_id INTEGER REFERENCES Genre(id),
  label_id INTEGER REFERENCES Label(id)
);

CREATE TABLE authentication.users
(
  id SERIAL PRIMARY KEY NOT NULL,
  username TEXT NOT NULL,
  password TEXT NOT NULL
);
CREATE UNIQUE INDEX users_username_uindex ON authentication.users (username);
CREATE UNIQUE INDEX users_id_uindex ON authentication.users (id);
-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
CREATE TABLE Players (
  player_id serial primary key,
  name text
);

CREATE TABLE Matches (
  match_id serial primary key,
  winner integer references Players(player_id),
  loser integer references Players(player_id)
);

-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament

CREATE TABLE Players (
  player_id serial primary key,
  name text
);

CREATE TABLE Matches (
  match_id serial primary key,
  winner integer references Players(player_id),
  loser integer references Players(player_id)
);

CREATE VIEW v_wins as
  select winner, count(winner) as wins
  from matches
  group by winner;

CREATE VIEW v_loses as
  select loser, count(loser) as loses
  from matches
  group by loser;

CREATE VIEW v_results as
  select player_id, name, coalesce(wins, 0) as wins,
  (coalesce(wins, 0) + coalesce(loses,0)) as matches
  from players left join v_wins as wsubq on players.player_id = wsubq.winner
  left join v_loses as lsubq on players.player_id = lsubq.loser

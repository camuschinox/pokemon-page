CREATE DATABASE IF NOT EXISTS pokemon_ico;


CREATE TABLE IF NOT EXISTS pokemon_ico.training_pokemon (
    id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(20),
    created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    updated_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    primary key (id)
);


CREATE TABLE IF NOT EXISTS pokemon_ico.pokemon_match (
    id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    first_pokemon_id bigint(20) unsigned NOT NULL,
    second_pokemon_id bigint(20) unsigned NOT NULL,
    who_won varchar(6) NOT NULL,
    created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    updated_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    primary key (id),
    foreign key (first_pokemon_id) references training_pokemon(id)
);

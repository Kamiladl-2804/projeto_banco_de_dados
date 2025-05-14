-- tabela principal dos pokémon
create table pokemon (
  id_pokemon serial primary key,
  nome_pokemon varchar(50) not null unique,
  genero_pokemon varchar(10) not null,
  tamanho_pokemon numeric(4,2) not null,
  peso_pokemon numeric(5,2) not null,
  hp_pokemon integer not null,
  atk_pokemon integer not null,
  def_pokemon integer not null,
  spa_pokemon integer not null,
  spe_pokemon integer not null,
  spd_pokemon integer not null
);

-- tabela de habilidades dos pokémon
create table habilidades (
  id_habilidade serial primary key,
  nome_habilidade varchar(50) not null unique,
  efeito_habilidade text not null
);

-- tabela de evoluções dos pokémon
create table evolucoes (
  id_evolucao serial primary key,
  id_pokemon_origem integer not null references pokemon(id_pokemon),
  id_pokemon_evoluido integer not null references pokemon(id_pokemon),
  numero_evolucao integer not null,
  metodo_evolucao varchar(100) not null,
  constraint chk_pokemons_diferentes check (id_pokemon_origem <> id_pokemon_evoluido)
);


-- tabela de tipos (elementos)
create table tipos (
  id_tipo serial primary key,
  nome_tipo varchar(50) not null unique
);

-- tabela de eficácia de tipos
create table eficacias (
  id_eficacia serial primary key,
  multiplicador_eficacia numeric(3,2) not null
);

-- tabela de movimentos dos pokémon
create table movimentos (
  id_movimento serial primary key,
  nome_movimento varchar(50) not null unique,
  poder_movimento integer not null,
  precisao_movimento integer not null check (precisao_movimento between 0 and 100),
  pp_movimento integer not null,
  id_tipo integer not null references tipos(id_tipo)
);

-- tabela de movimentos aprendidos por tm 
create table tm (
  id_tm serial primary key,
  numero_tm integer not null,
  id_movimento integer not null references movimentos(id_movimento)
);

-- tabelade movimentos aprendidos por hm
create table hm (
  id_hm serial primary key,
  numero_hm integer not null,
  id_movimento integer not null references movimentos(id_movimento)
);

-- tabela de movimentos aprendidos por nível
create table por_nivel (
  id_pornivel serial primary key,
  numero_pornivel integer not null,
  id_pokemon integer not null references pokemon(id_pokemon),
  id_movimento integer not null references movimentos(id_movimento)
);

-- relaciona pokémon com tipos
create table pokemon_tipo (
  id_pokemon integer not null references pokemon(id_pokemon),
  id_tipo integer not null references tipos(id_tipo),
  primary key (id_pokemon, id_tipo)
);

-- relaciona pokémon com movimentos
create table pokemon_movimento (
  id_pokemon integer not null references pokemon(id_pokemon),
  id_movimento integer not null references movimentos(id_movimento),
  primary key (id_pokemon, id_movimento)
);

-- relaciona pokémon com habilidades
create table pokemon_habilidade (
  id_pokemon integer not null references pokemon(id_pokemon),
  id_habilidade integer not null references habilidades(id_habilidade),
  primary key (id_pokemon, id_habilidade)
);

-- relaciona tipos com suas eficácias
create table eficacia_tipo (
  id_tipo_origem integer not null references tipos(id_tipo),
  id_tipo_alvo integer not null references tipos(id_tipo),
  id_eficacia integer not null references eficacias(id_eficacia),
  primary key (id_tipo_origem, id_tipo_alvo)
);

-- relaciona movimentos com habilidades
create table movimento_habilidade (
  id_movimento integer not null references movimentos(id_movimento),
  id_habilidade integer not null references habilidades(id_habilidade),
  primary key (id_movimento, id_habilidade)
);

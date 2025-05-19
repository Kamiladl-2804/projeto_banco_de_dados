# projeto_banco_de_dados

## Nomes dos Integrantes

- Gabriel Trindade Avelar  
- Kamila Dantas Luongo  
- Matheus Alves dos Santos Oliveira

## Contextualização

### Descrição do Problema
O nosso trabalho se baseia em organizar a terceira geração de Pokémon, de uma forma que os jogadores possam ter mais informações sobre tal geração. Isso inclui tópicos como: nomes, elementos, ataques, resistências/fraquezas, etc.

### Justificativa da Escolha
Nós escolhemos o tema Pokémon pois é um jogo que marcou a nossa infância, e a escolha da Geração 3 foi por uma questão de maior familiaridade e nostalgia.

### Objetivos do Sistema
Gerenciar informações sobre os Pokémon, seus tipos, habilidades, eficácia em batalhas e métodos de aprendizado de movimentos para ajudar os jogadores a se familiarizar com as habilidades dos Pokémon da terceira geração. Assim, eles terão uma melhor experiência ao usar esta geração.

## Ordenação de documentação

### Formatação das tabelas no formato do diagrama
### Formatação das tabelas no modelo relacional
Observação sobre a criação da tabela
### Inserts (os ids foram gerados automaticamente pelo supabase)
Observação sobre o insert caso necessário

# Entidades

## 1. Pokémon

### 1.1 Atributos

- **ID_pokemon (PK)** – Identificação única do Pokémon (número da Pokédex).
- **Nome_pokemon** – Nome da espécie do Pokémon.
- **Gênero** – Determina se o Pokémon é fêmea ou macho.
- **Tamanho** – Determina a altura do Pokémon.
- **Peso** – Determina quanto o Pokémon pesa.

### 1.2 Estatísticas

- **HP** – Pontos de vida do Pokémon.
- **ATK** – Ataque do Pokémon.
- **DEF** – Defesa do Pokémon.
- **SPE** – Velocidade do Pokémon.
- **SPA** – Ataque especial do Pokémon.
- **SPD** – Defesa especial do Pokémon.

### 1.3 Relacionamentos

- **Tipo (FK)** – É o elemento do Pokémon (relacionamento multivalorado).

## Tabela

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

- **A tabela Pokémon incorporou os atributos do campo composto Estatística, uma vez que não é possível criar uma tabela dentro de outra em um modelo relacional. Assim, a solução adotada foi adicionar diretamente os atributos de estatística (HP, ATK, DEF, SPE, SPA, SPD) à tabela Pokémon. o atributo tipo não é necessário**

## Inserts
insert into pokemon (nome_pokemon, genero_pokemon, tamanho_pokemon,peso_pokemon, hp_pokemon, atk_pokemon, def_pokemon, spa_pokemon, spe_pokemon,spd_pokemon) values
('Treecko','macho', 0.5, 5.0, 40 , 45, 35, 65, 70, 55),
('TreeckoF', 'femea', 0.5, 5.0, 40, 45, 35, 65, 70, 55),

- **Como os nomes de pokemon são iguais para os dois gêneros, foi necessário adicionar o "F" no final dos nomes de fêmeas**


## 2. Tipo

### 2.1 Atributos

- **ID_tipo (PK)** – Identificação única do tipo.  
- **Nome_tipo** – Nome do tipo.

## Tabela

create table tipos (
  id_tipo serial primary key,
  nome_tipo varchar(50) not null unique
);

- **Uma tabela curta para salvar apenas os tipos.**

## Inserts

insert into tipos (nome_tipo) values  
('Normal'),  
('Fogo');


## 3. Eficácia

### 3.1 Atributos

- **ID_Eficaz (PK)** – Número de identificação.  
- **Multiplicador** – Mostra o quanto os pontos de um movimento são multiplicados.  
- **Vantagem** – Mostra a vantagem que o elemento tem sobre o outro.  
- **Desvantagem** – Mostra a desvantagem que o elemento tem sobre o outro.

## Tabela

create table eficacias (  
  id_eficacia serial primary key,  
  multiplicador_eficacia numeric(3,2) not null  
);

- **Vantagem e desvantagem não agregaram em relacionamentos por se tratar da mesma coisa que o multiplicador, então para evitar repetição de dados esses atributos foram removidos.**

## Inserts

insert into eficacias (multiplicador_eficacia) values  
(0.50),  
(1.00);


## 4. Movimentos

### 4.1 Atributos

- **ID_Movimento (PK)** – Identificação do movimento.  
- **Nome** – Nome do movimento.  
- **Poder** – Força do movimento.  
- **Precisão** – Chance de acerto.  
- **PP** – Quantidade de vezes que o movimento pode ser usado por batalha.

## Tabela
  
create table movimentos (  
  id_movimento serial primary key,  
  nome_movimento varchar(50) not null unique,  
  poder_movimento integer not null,  
  precisao_movimento integer not null check (precisao_movimento between 0 and 100),  
  pp_movimento integer not null,  
  id_tipo integer not null references tipos(id_tipo)  
);

- **Essa tabela, além de contar com os atributos de movimento, elimina a necessidade de uma tabela para o relacionamento entre movimento e tipo.**

## Inserts

insert into movimentos (nome_movimento, poder_movimento, precisao_movimento, pp_movimento, id_tipo) values  
('Hydro pump', 110, 80, 8, 75);

- **O insert precisa ser depois do de tipo para poder coletar os ids.**


## 5. TM

### 5.1 Atributos

- **ID_TM (PK)** – Identificação do TM.  
- **Número_TM** – Número do TM.  
- **ID_Movimento (FK para Movimento)** – Movimento correspondente.

## Tabela

create table tm (  
  id_tm serial primary key,  
  numero_tm integer not null,  
  id_movimento integer not null references movimentos(id_movimento)  
);

- **Uma tabela simples apenas para filtrar como os movimentos são aprendidos.**

## Inserts

insert into tm (numero_tm, id_movimento) values  
(17, 7);

- **Insert deve ser feito depois do de movimento para poder usar os ids.**


## 6. HM

### 6.1 Atributos

- **ID_HM (PK)** – Identificação do HM.  
- **Número_HM** – Número do HM.  
- **ID_Movimento (FK para Movimento)** – Movimento correspondente.

## Tabela

create table hm (  
  id_hm serial primary key,  
  numero_hm integer not null,  
  id_movimento integer not null references movimentos(id_movimento)  
);

- **Segue a mesma estrutura do anterior.**

## Inserts

insert into hm (numero_hm, id_movimento) values  
(03, 13);

- **Insert deve ser feito depois do de movimento para poder usar os ids.**


## 7. Por Nível

### 7.1 Atributos

- **ID_POR_NÍVEL (PK)** – Identificação do POR_NÍVEL.  
- **Número_PORNIVEL** – Nível que o Pokémon aprende o movimento.  
- **Movimento_ID (FK para Movimento)** – Movimento correspondente.  
- **ID_Pokemon (FK para Pokémon)** – Identificação do Pokémon que aprende o movimento.

## Tabela

create table por_nivel (  
  id_por_nivel serial primary key,  
  numero_por_nivel integer not null,  
  id_pokemon integer not null references pokemon(id_pokemon),  
  id_movimento integer not null references movimentos(id_movimento)  
);

- **Segue a mesma estrutura dos anteriores, com o acréscimo da identificação de qual Pokémon aprende.**

## Inserts

insert into por_nivel (numero_pornivel, id_movimento, id_pokemon) values  
(61, 21, 15);

- **Insert deve ser feito depois dos de movimento e pokémon para poder usar os ids.**


## 8. Habilidade

### 8.1 Atributos

- **ID_Habilidade (PK)** – Identificação da habilidade  
- **Nome** – Nome da habilidade  
- **Efeito** – Descrição do efeito da habilidade

## Tabela

create table habilidades (  
  id_habilidade serial primary key,  
  nome_habilidade varchar(50) not null unique,  
  efeito_habilidade text not null  
);

- **Também é uma tabela simples e intuitiva. Apesar de habilidades de Pokémon e de movimentos serem diferentes, unificamos o termo para não precisar criar mais uma tabela que não fosse para relacionamentos.**

## Inserts

insert into habilidades (nome_habilidade, efeito_habilidade) values  
('Câmara de ar', 'Enquanto este Pokémon estiver ativo, todas as condições climáticas e seus efeitos serão desativados.');


## 9. Evolução

### 9.1 Atributos

- **Evolução** – Diz em qual grau da cadeia evolutiva o Pokémon está.

## Tabela

create table evolucoes (  
  id_evolucao serial primary key,  
  id_pokemon_origem integer not null references pokemon(id_pokemon),  
  id_pokemon_evoluido integer not null references pokemon(id_pokemon),  
  numero_evolucao integer not null,  
  metodo_evolucao varchar(100) not null,  
  constraint chk_pokemons_diferentes check (id_pokemon_origem <> id_pokemon_evoluido)  
);

- **O atributo evolução vira uma tabela para ser incorporado ao sistema. Ela também absorve o relacionamento entre evolução e Pokémon, eliminando a necessidade de uma tabela de relacionamento separada. Além disso, inclui uma validação para garantir que o Pokémon de origem e o evoluído sejam diferentes.**

## Insert

insert into evolucoes (id_pokemon_origem, id_pokemon_evoluido, numero_evolucao, metodo_evolucao) values  
(3, 5, 1, 'nível');

# Relacionamentos


## A. Pokémon tem Tipo

### A.1 Atributos

- **ID_Pokémon (FK)** – Identificador do Pokémon.  
- **ID_Tipo (FK)** – Identificador do Tipo.

---

## Tabela

create table pokemon_tipo (
  id_pokemon integer not null references pokemon(id_pokemon),
  id_tipo integer not null references tipos(id_tipo),
  primary key (id_pokemon, id_tipo)
);


- **Essa tabela estabelece a relação N:M entre Pokémon e Tipo**, onde:
  - Um Pokémon pode ter até **2 tipos**.
  - Um Tipo pode estar associado a **vários Pokémon**.
  - A **participação é total** do lado de Pokémon, ou seja, **todo Pokémon deve ter pelo menos um tipo**.

---

## Insert


insert into pokemon_tipo (id_pokemon, id_tipo) values
(3, 77);


- **O insert deve ser feito após a criação e inserção das tabelas `pokemon` e `tipos`**, para garantir que os IDs referenciados existam no momento da inserção.


## B. Pokémon Aprende Movimento

### B.1 Atributos

- **ID_Pokemon (FK)** – Identificador do Pokémon.  
- **ID_Movimento (FK)** – Identificador do Movimento.

---

## Tabela


create table pokemon_movimento (
  id_pokemon integer not null references pokemon(id_pokemon),
  id_movimento integer not null references movimentos(id_movimento),
  primary key (id_pokemon, id_movimento)
);

- **Essa tabela estabelece a relação N:M entre Pokémon e Movimento**, onde:
  - Um Pokémon pode aprender vários movimentos.
  - Um movimento pode ser aprendido por vários Pokémon.
  - A participação é **parcial** do lado do movimento, ou seja, nem todo Pokémon aprende todos os movimentos.

---

## Insert

insert into pokemon_movimento (id_pokemon, id_movimento) values
-- grama
(3, 14);

- **O insert deve ser feito após a criação e inserção das tabelas `pokemon` e `movimentos`**, para garantir que os IDs referenciados existam no momento da inserção.


## C. Pokémon Tem Habilidade

### C.1 Atributos

- **ID_Pokemon (FK)** – Identificador do Pokémon.  
- **ID_Habilidade (FK)** – Identificador da Habilidade.

---

## Tabela


-- relaciona pokémon com habilidades
create table pokemon_habilidade (
  id_pokemon integer not null references pokemon(id_pokemon),
  id_habilidade integer not null references habilidades(id_habilidade),
  primary key (id_pokemon, id_habilidade)
);


- **Essa tabela estabelece a relação 1:N entre Pokémon e Habilidades**, onde:
  - Um Pokémon pode ter múltiplas habilidades.
  - Porém, só pode ter uma habilidade ativa por vez.
  - Participação total do lado do Pokémon (todo Pokémon tem pelo menos uma habilidade).

---

## Insert

insert into pokemon_habilidade (id_pokemon, id_habilidade) values
(3, 316);

- **O insert deve ser feito após a criação e inserção das tabelas `pokemon` e `habilidades` para garantir integridade referencial.**

---

## D. Movimento Tem Tipo

### D.1 Atributos

- **ID_Movimento (FK)** – Identificador do Movimento.  
- **ID_Tipo (FK)** – Identificador do Tipo.

---

## Observação

- Este relacionamento é do tipo 1:N, onde:
  - Cada movimento pertence a um tipo.
  - Um tipo pode ter vários movimentos associados.
- **Este relacionamento foi absorvido diretamente na tabela `movimentos` através do atributo `id_tipo`.**


## E. Tipo Tem Eficácia

### E.1 Atributos

- **ID_Movimento (FK)** – Identificador do Movimento.  
- **ID_Tipo (FK)** – Identificador do Tipo.  

---

## Tabela

create table eficacia_tipo (
  id_tipo_origem integer not null references tipos(id_tipo),
  id_tipo_alvo integer not null references tipos(id_tipo),
  id_eficacia integer not null references eficacias(id_eficacia),
  primary key (id_tipo_origem, id_tipo_alvo)
);

- **Essa tabela estabelece a relação N:M entre Tipo e Movimento**, onde:
  - Um tipo sempre vai ver uma influêincia sobre outro.
 - **A tabela apenas busca os ids de tipo de eficácia para mostrar qual tipo é eficaz contra qual.**
   
## Insert
insert into eficacia_tipo (id_tipo_origem, id_tipo_alvo, id_eficacia) values
-- voador
(78, 77, 22),  -- Voador > Grama

- **insert depois do de tipo e eficacia para poder usar os ids**


## F. Movimento Tem Habilidade

### F.1 Atributos

- **ID_Movimento (FK)** – Identificador do Movimento.  
- **ID_Habilidade (FK)** – Identificador da Habilidade.

---

## Tabela

create table movimento_habilidade (
  id_movimento integer not null references movimentos(id_movimento),
  id_habilidade integer not null references habilidades(id_habilidade),
  primary key (id_movimento, id_habilidade)
);

- **Essa tabela estabelece a relação N:M entre Habilidade e Movimento**, onde:
  - Um movimento tem pelo menos uma habilidade.
 - **A tabela apenas busca os ids de Movimento e de Habilidade para mostrar qual é a habilidade de cada movimento.**
   
## Insert
insert into movimento_habilidade (id_movimento, id_habilidade) values
(21, 367),

- **insert depois do de movimento e habilidade para poder usar os ids**


## G. Movimento Tem Tipo

### G.1 Atributos

- **ID_Pokemon (FK)** – Identificador do Pokémon.  
- **ID_Pokemon (FK)** – Identificador do Pokémon.

---

## Observação

- Este relacionamento é do tipo 1:N, onde:
  - Um pokémon evolui e outro.
- **Este relacionamento foi absorvido diretamente na tabela `evolucoes` através dos atributos `id_pokemon_origem` e `id_pokemon_evoluido`.**

# Query  
## Query 1  
Lista os movimentos aprendidos pelos Pokémons com ataque maior que 80, ordenando os movimentos em ordem alfabética.

SELECT p.nome_pokemon AS nome_pokemon, 
  m.nome_movimento AS nome_movimento
FROM pokemon p
JOIN pokemon_movimento pm ON p.id_pokemon = pm.id_pokemon
JOIN movimentos m ON pm.id_movimento = m.id_movimento
WHERE p.atk_pokemon > 80
ORDER BY m.nome_movimento;


## Query 2
Conta quantos movimentos cada Pokémon aprende e mostra a lista ordenada do que tem mais para o que tem menos movimentos.

select 
  p.nome_pokemon as nome_pokemon, 
  COUNT(pm.id_movimento) as total_movimentos
from pokemon p
join pokemon_movimento pm on p.id_pokemon = pm.id_pokemon
join movimentos m on pm.id_movimento = m.id_movimento
group BY p.nome_pokemon
order BY total_movimentos desc;

## Query 3
 Mostra os Pokémons que aprendem mais de um movimento do tipo "Fogo" e que possuem pelo menos um movimento com poder acima de 50.
 
select 
  p.nome_pokemon as nome_pokemon, 
  COUNT(pm.id_movimento) as total_movimentos
from pokemon p
join pokemon_movimento pm on p.id_pokemon = pm.id_pokemon
join movimentos m on pm.id_movimento = m.id_movimento
join tipos t on m.id_tipo = t.id_tipo
where t.nome_tipo = 'Fogo'
group BY p.nome_pokemon, p.id_pokemon
having COUNT(pm.id_movimento) > 1
  and p.id_pokemon in (
    select distinct pm2.id_pokemon
    from pokemon_movimento pm2
    join movimentos m2 on pm2.id_movimento = m2.id_movimento
    where m2.poder_movimento > 50
  );

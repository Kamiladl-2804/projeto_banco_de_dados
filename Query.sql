-- Query 1
SELECT p.nome_pokemon AS nome_pokemon, 
  m.nome_movimento AS nome_movimento
FROM pokemon p
JOIN pokemon_movimento pm ON p.id_pokemon = pm.id_pokemon
JOIN movimentos m ON pm.id_movimento = m.id_movimento
WHERE p.atk_pokemon > 80
ORDER BY m.nome_movimento;

-- Query 2
select 
  p.nome_pokemon as nome_pokemon, 
  COUNT(pm.id_movimento) as total_movimentos
from pokemon p
join pokemon_movimento pm on p.id_pokemon = pm.id_pokemon
join movimentos m on pm.id_movimento = m.id_movimento
group BY p.nome_pokemon
order BY total_movimentos desc;

-- Query 3
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
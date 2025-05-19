-- tipos
insert into tipos (nome_tipo) values
('Normal'),
('Fogo'),
('Água'),
('Elétrico'),
('Grama'),
('Gelo'),
('Lutador'),
('Venenoso'),
('Terra'),
('Voador'),
('Psíquico'),
('Inseto'),
('pedra'),
('Fantasma'),
('Dragão'),
('Sombrio'),
('Metálico'),
('aço');


-- habilidades
insert into habilidades (nome_habilidade, efeito_habilidade) values
('Câmara de ar  ', 'Enquanto este Pokémon estiver ativo, todas as condições climáticas e seus efeitos serão desativados.  '),
('Armadilha de Arena  ', 'Esse Pokémon impede que os oponentes troquem de turno ou fugam, exceto se forem do tipo Voador, tiverem Levitate ou usarem Baton Pass. Na frente, dobra a taxa de encontros com Pokémon selvagens.'),
('Armadura de Batalha ', 'Acertos críticos não podem atingir este Pokémon.  '),
('Chama', 'Quando sua saúde atinge um terço ou menos de seu HP máximo, os ataques do tipo Fogo deste Pokémon recebem um aumento de 50% em poder.  '),
('Clorofila', 'Se este Pokémon estiver ativo enquanto Sunny Day estiver em vigor, sua velocidade será temporariamente dobrada.  '),
('Corpo limpo ', 'Essa habilidade impede que os oponentes reduzam os atributos do Pokémon, mas permite que eles aumentem com movimentos como Swagger e Flatter. A habilidade não impede reduções de atributos causadas pelo próprio Pokémon.  '),
('Nuvem Nove  ', 'A habilidade impede que os oponentes reduzam os atributos do Pokémon, mas permite que eles aumentem os atributos usando movimentos como Swagger e Flatter. No entanto, ela não bloqueia reduções de atributos causadas pelo próprio Pokémon.'),
('Mudança de cor', 'O tipo deste Pokémon muda de acordo com o tipo do último movimento que atingiu este Pokémon.'),
('Olhos compostos ', 'Essa habilidade aumenta a precisão dos movimentos do Pokémon em 30%. Por exemplo, um movimento com 75% de precisão passa a ter 97,5%. Além disso, se o Pokémon estiver na frente, ele aumenta a taxa de encontro com Pokémon selvagens que seguram um item.'),
('Amuleto fofo', 'Se um oponente do sexo oposto usar um ataque direto contra este Pokémon, há 33% de chance de ele ficar apaixonado. Quando está na frente da equipe, aumenta para 66,7% a chance de encontrar Pokémon selvagens do sexo oposto.'),
('Úmido', 'Enquanto este Pokémon estiver ativo, nenhum Pokémon no campo poderá usar Autodestruição ou Explosão. '),
('Chuvisco', 'Quando este Pokémon entra no campo, ele causa uma Dança da Chuva permanente que só pode ser interrompida por Air Lock, Cloud Nine ou outra condição climática.'),
('Seca', 'Quando este Pokémon entra no campo, ele causa um Dia Ensolarado permanente que só pode ser interrompido por Air Lock, Cloud Nine ou outra condição climática. '),
('Madrugador  ', 'Este Pokémon permanecerá adormecido pela metade do tempo que normalmente permaneceria; isso inclui tanto o sono induzido pelo oponente quanto o sono induzido pelo usuário via Descanso.  '),
('Efeito Esporo ', 'Se um oponente atacar diretamente este Pokémon, há 30% de chance de ele ser envenenado, paralisado ou adormecido. Há a mesma chance de infligir cada status.'),
('Corpo de Chama', 'Se um oponente atacar este Pokémon diretamente, há 33% de chance de ele ser queimado.
[Efeito de Campo] Os ovos de Pokémon eclodem na metade do tempo.'),
('Fogo rápido', 'Este Pokémon é imune a ataques do tipo Fogo e seus próprios ataques do tipo Fogo recebem bônus de 50% se atingido por um movimento de Fogo. Não há bônus adicional com múltiplos ataques.'),
('Previsão  ', 'O tipo deste Pokémon muda conforme o clima: Fogo no dia ensolarado, Água na dança da chuva, Gelo durante o granizo e Normal em outras condições.'),
('Estômago', 'Quando este Pokémon é envenenado, queimado, paralisado ou dorme, seu Ataque aumenta 50% e a queda de Ataque devido à queimadura é ignorada.'),
('Grande poder', 'O atributo de Ataque deste Pokémon é dobrado. Se o Ataque na tela de status for 200, ele efetivamente terá 400. Este atributo estará sujeito a aumentos e reduções de atributos.'),
('Labuta', 'O Ataque deste Pokémon recebe um aumento de 50%, mas seus ataques Físicos têm 20% de redução na Precisão. Movimentos com precisão fixa, como Aerial Ace, não são afetados. [Efeito de Campo] Se estiver no slot da frente, há 50% de chance de um encontro selvagem ser o nível máximo da sua gama.'),
('Hyper Cutter', 'Os oponentes não podem reduzir o atributo de Ataque deste Pokémon, mas podem aumentá-lo com Swagger. Não impede reduções de atributos autoinfligidas. [Efeito de Campo] HM01 - Cortar remove uma área maior de grama alta.'),
('Iluminar', 'Quando este Pokémon está no primeiro espaço do grupo do jogador, ele dobra a taxa de encontros selvagens. '),
('Imunidade', 'Este Pokémon não pode ser envenenado nem envenenado por Tóxico.  '),
('Foco Interno  ', 'Não é possível fazer esse Pokémon recuar. '),
('Insônia ', 'Este Pokémon não pode ser colocado para dormir; isso inclui tanto o sono induzido pelo oponente quanto o sono induzido pelo usuário via Descanso. '),
('Intimidar', 'Quando este Pokémon entra em campo, o atributo de Ataque de cada um dos seus oponentes diminui em um estágio. [Efeito de Campo] Se este Pokémon estiver no slot da frente, a taxa de batalhas com Pokémon selvagens 5 níveis abaixo é reduzida pela metade.'),
('Olho aguçado  ', 'A Precisão deste Pokémon não pode ser reduzida.
[Efeito de Campo] Se este Pokémon estiver no slot principal, a taxa de batalhas contra Pokémon selvagens de baixo nível diminui.'),
('Levitar', 'Este Pokémon é imune a ataques do tipo Terrestre, Spikes e à habilidade Arena Trap; ele perde essas imunidades após usar Ingrain.  '),
('Pára-raios', 'Durante batalhas duplas, este Pokémon atrai para si qualquer ataque do tipo Elétrico contra um único alvo. Se um oponente usar um ataque do tipo Elétrico que afete vários Pokémon, esses alvos serão atingidos. Esta habilidade não afeta o Poder Oculto Elétrico. [Efeito de Campo] Receba mais ligações.'),
('Flexível', 'Este Pokémon não pode ficar paralisado. '),
('Lodo líquido  ', 'Quando outro Pokémon usa Absorver, Giga Drain, Leech Life, Leech Seed ou Mega Drain contra este Pokémon, o Pokémon atacante perde a quantidade de saúde que teria ganhado.'),
('Armadura de Magma ', 'Este Pokémon não pode ficar congelado.
[Efeito de Campo] Os ovos de Pokémon eclodem na metade do tempo'),
('Atração magnética ', 'Quando este Pokémon entra em campo, oponentes do tipo Aço e aliados não podem trocar nem fugir da batalha, a menos que usem o ataque Baton Pass.
[Efeito de Campo] Se este Pokémon estiver no slot da frente, a taxa de encontro com um Pokémon do tipo Aço aumenta em 50%.'),
('Escala Marvel', 'Quando este Pokémon é queimado, envenenado (incluindo Tóxico), paralisado, congelado ou colocado para dormir (incluindo sono autoinduzido via Descanso), sua Defesa recebe um aumento de 50%.'),
('Menos', 'O Ataque Especial deste Pokémon recebe um aumento de 50% em batalhas duplas se seu parceiro tiver a habilidade Plus. '),
('Cura Natural', 'Quando este Pokémon sai da batalha, ele é curado de veneno (incluindo Tóxico), paralisia, queimadura, congelamento e sono (incluindo descanso autoinduzido).'),
('Alheio', 'Este Pokémon não pode se sentir atraído por outro Pokémon.'),
('Crescer demais', 'Quando sua saúde atinge um terço ou menos de seu HP máximo, os ataques do tipo Planta deste Pokémon recebem um aumento de 50% em poder. '),
('Tempo Próprio ', 'Este Pokémon não pode ficar confuso.'),
('Escolher', 'Se ainda não estiver segurando um item, este Pokémon pode encontrar e estar segurando uma variedade de itens após uma batalha: veja a Lista de Coleta completa para mais informações. '),
('Mais', 'O Ataque Especial deste Pokémon recebe um aumento de 50% em batalhas duplas se seu parceiro tiver a habilidade Menos. '),
('Ponto de Veneno ', 'Se um oponente atacar diretamente este Pokémon, há 33% de chance de ele ser envenenado. '),
('Pressão ', 'Movimentos usados contra este Pokémon consomem 1 PP extra. [Campo] Se estiver na frente, há 50% de chance de encontros com Pokémon selvagens no nível mais alto.'),
('Poder Puro', 'O atributo de Ataque deste Pokémon é dobrado e continua sujeito a modificações. Ex.: se o Ataque for 200, ele será tratado como 400.'),
('Prato de chuva', 'Se estiver ativo enquanto Rain Dance estiver em efeito, este Pokémon recupera um dezesseis avos do seu HP máximo após cada turno. '),
('Cabeça de rocha ', 'Este Pokémon não recebe dano de recuo a menos que use Struggle ou erre com Jump Kick ou Hi Jump Kick. '),
('Pele áspera ', 'Quando este Pokémon é atacado diretamente , o oponente recebe dano igual a 1/8 do seu HP máximo.  '),
('Fugir ', 'A menos que este Pokémon esteja sob os efeitos de um movimento ou habilidade de captura, como Mean Look ou Shadow Tag, ele escapará de batalhas selvagens de Pokémon sem falhas.  '),
('Riacho de areia ', 'Quando este Pokémon entra no campo, ele causa uma Tempestade de Areia permanente que só pode ser interrompida por Air Lock, Cloud Nine ou outra condição climática. '),
('Véu de Areia  ', 'Durante Tempestade de Areia, a Evasão aumenta em 20% e o Pokémon fica imune ao dano da tempestade.
[Efeito de Campo] Reduz pela metade os encontros selvagens durante a tempestade.'),
('Graça Serena  ', 'Os efeitos colaterais dos ataques deste Pokémon ocorrem duas vezes mais frequentemente. Por exemplo, se este Pokémon usar Raio de Gelo, ele terá 20% de chance de congelar seu alvo.  '),
('Marca de sombra ', 'Quando este Pokémon entra em campo, seus oponentes não podem trocar ou fugir da batalha, a menos que usem o movimento Baton Pass. '),
('Pele descamada  ', 'Após cada turno, este Pokémon tem 33% de chance de se curar de veneno (incluindo Tóxico), paralisia, queimadura, congelamento ou sono (incluindo Descanso autoinduzido).  '),
('Armadura de Concha  ', 'Acertos críticos não podem atingir este Pokémon.  '),
('Poeira de Escudo  ', 'Este Pokémon é imune aos efeitos secundários dos ataques do oponente (ex: Raio de Gelo não pode congelá-lo).'),
('À prova de som  ', 'Este Pokémon é imune aos efeitos dos movimentos relacionados a som Grasswhistle, Growl, Heal Bell, Hyper Voice, Metal Sound, Perish Song, Roar, Screech, Sing, Snore, Supersonic e Uproar.  '),
('Aumento de velocidade ', 'Enquanto este Pokémon estiver ativo, sua Velocidade aumentará em um estágio no final de cada turno; o máximo de seis estágios para aumentos de estatísticas ainda estará em vigor.  '),
('Estático  ', 'Ataques diretos contra este Pokémon têm 33% de chance de paralisar o oponente.[Efeito de Campo] Aumenta em 50% a chance de encontrar Pokémon do tipo Elétrico quando está na frente do time.'),
('Fedor', 'Quando este Pokémon está no primeiro espaço do grupo do jogador, ele reduz pela metade a taxa de encontros selvagens.  '),
('Fixação pegajosa  ', 'Os oponentes não podem remover itens deste Pokémon.
[Efeito de Campo] Pokémon são fisgados por uma vara de pescar com mais frequência.'),
('Resistente', 'Os movimentos KO de um golpe Fissure, Guillotine, Horn Drill e Sheer Cold não afetam este Pokémon.'),
('Ventosas', 'Rugido e Redemoinho não afetam este Pokémon.
[Efeito de Campo] Pokémon são fisgados por uma vara de pescar com mais frequência.'),
('Enxame', 'Quando sua saúde atinge um terço ou menos do HP máximo, seus ataques do tipo Inseto têm 50% mais poder.[Efeito de Campo] Gritos de Pokémon são ouvidos com mais frequência.'),
('Natação Rápida  ', 'Se este Pokémon estiver ativo enquanto Rain Dance estiver em efeito, sua velocidade será temporariamente dobrada. '),
('Sincronizar ', 'Quando um oponente queimar, envenenar ou paralisar este Pokémon, o mesmo status é aplicado ao oponente.[Efeito de Campo] Se estiver no slot principal, a taxa de encontro com um Pokémon de mesma natureza aumenta em 50%.'),
('Gordura espessa ', 'Este Pokémon recebe metade do dano de ataques do tipo Gelo e do tipo Fogo.  '),
('Torrente', 'Quando sua saúde atinge um terço ou menos de seu HP máximo, os ataques do tipo Água deste Pokémon recebem um aumento de 50% em poder. '),
('Rastro', 'Quando este Pokémon entra em campo, ele copia temporariamente a habilidade de um oponente. Esta habilidade permanece com este Pokémon até que ele saia do campo.  '),
('Evasivo ', 'Depois que esse Pokémon é trocado para a batalha, ele pula um turno sim, outro não.'),
('Espírito Vital', 'Este Pokémon não pode ser colocado para dormir, nem por ataques do oponente nem por seus próprios movimentos como Descanso. [Efeito de Campo] Se estiver no slot da frente, há 50% de chance de um encontro selvagem ser o nível mais alto de seu alcance de encontros.'),
('Absorção de voltagem  ', 'Quando um ataque do tipo Elétrico atinge este Pokémon, ele recupera uma quantidade de saúde equivalente ao dano que teria sofrido, podendo recuperar até 25% do seu HP máximo.'),
('Absorção de água  ', 'Quando um ataque do tipo Água atinge este Pokémon, ele recupera uma quantidade de saúde equivalente ao dano que teria sofrido; este Pokémon pode recuperar até 25% do seu HP máximo dessa forma.  '),
('Véu de Água ', 'Este Pokémon não pode ser queimado. '),
('Fumaça Branca ', 'Impede que oponentes reduzam os atributos deste Pokémon. Não evita reduções autoinfligidas. Fora da batalha, reduz encontros com Pokémon selvagens em 50%.'),
('Guarda Maravilha  ', 'Recebe dano apenas de ataques super eficazes. Não protege contra status, danos indiretos ou certos golpes. Pode ser copiada por Trace, mas não trocada.'),
insert into habilidades (nome_habilidade, efeito_habilidade) values
('Muddy Water', 'Causa dano e tem 30% de chance de reduzir a precisão do alvo em um estágio.'),


('Hydro Pump', 'Causa dano sem efeito adicional. Alto poder base com menor precisão.'),


('Protect', 'Previne todos os efeitos de movimentos direcionados ao usuário durante o turno em que é usado. Pode falhar se usado consecutivamente.'),


('Ice Beam', 'Causa dano e tem 10% de chance de congelar o alvo.'),


('Surf', 'nadar'),


('Flash', 'brilhar'),


('Cut', 'cortar'),


('Rock Smash', 'Quebrar as pedras'),


('Blaze Kick', 'Causa dano, tem alta taxa de acerto crítico e 10% de chance de queimar o alvo.'),


('Sky Uppercut', 'Causa dano e pode atingir alvos usando Voar ou Quicar.'),


('Double Kick', 'Atinge o alvo duas vezes. Cada acerto pode causar dano crítico de forma independente.'),


('Overheat', 'Causa dano e reduz o Ataque Especial do usuário em dois estágios após o uso.'),


('Absorb', 'Causa dano e cura o usuário em 50% do dano causado.'),


('Leaf Blade', 'Causa dano e tem uma alta taxa de acerto crítico.'),


('Earthquake', 'Causa dano e atinge todos os Pokémon adjacentes em Batalhas Duplas.'),


('Solar Beam', 'Investe no primeiro turno e ataca no segundo. Sob a luz do sol, ele pula o turno de investida.');


insert into eficacias (multiplicador_eficacia) values
(0.50),
(1.00),
(1.50),
(2.00),
(2.50),
(3.00);
 
insert into pokemon (nome_pokemon, genero_pokemon, tamanho_pokemon,peso_pokemon, hp_pokemon, atk_pokemon, def_pokemon, spa_pokemon, spe_pokemon,spd_pokemon) values
('Treecko','macho', 0.5, 5.0, 40 , 45, 35, 65, 70, 55),
('TreeckoF', 'femea', 0.5, 5.0, 40, 45, 35, 65, 70, 55),
('Grovyle', 'macho',0.9, 21.6, 50, 65, 45, 85, 95, 65),
('GrovyleF', 'femea',0.9, 21.6, 50, 65, 45, 85, 95, 65),
('Sceptile', 'macho', 1.7, 52.2, 70, 85, 65, 105, 120, 85),
('SceptileF', 'femea',1.7, 52.2, 70, 85, 65, 105, 120, 85),
('Torchic', 'macho',0.4,2.5,45,60,40,70,45,50),
('TorchicF', 'femea',0.4,2.5,45,60,40,70,45,50),
('Combusken', 'macho',0.9,19.5,60,85,60,85,55,60),
('CombuskenF', 'femea',0.9,19.5, 60, 85,60,85,55,60),
('Blaziken', 'Macho', 1.9, 52.0, 80, 120, 70, 110, 80, 70),
('BlazikenF', 'Fêmea', 1.9, 52.0, 80, 120, 70, 110, 80, 70),
('Mudkip', 'Macho', 0.4, 7.6, 50, 70, 50, 50, 40, 50),
('MudkipF', 'Fêmea', 0.4, 7.6, 50, 70, 50, 50, 40, 50),
('Marshtomp', 'Macho', 0.7, 28.0, 70, 85, 70, 60, 60, 70),
('MarshtompF', 'Fêmea', 0.7, 28.0, 70, 85, 70, 60, 60, 70),
('Swampert', 'Macho', 1.5, 81.9, 100, 110, 90, 85, 60, 90),
('SwampertF', 'Fêmea', 1.5, 81.9, 100, 110, 90, 85, 60, 90);


insert into evolucoes (id_pokemon_origem, id_pokemon_evoluido, numero_evolucao,metodo_evolucao) values
(3, 5, 1, 'nivel'),
(4, 6, 1, 'nivel'),
(5, 7, 2, 'nivel'),
(6, 8, 2, 'nivel'),
(15, 17, 1, 'nivel'),
(16, 18, 1, 'nivel'),
(17, 19, 2, 'nivel'),
(18, 20, 2, 'nivel'),
(9, 11, 1, 'nivel'),
(10, 12, 1, 'nivel'),
(11, 13, 2, 'nivel'),
(12, 14, 2, 'nivel');


insert into pokemon_tipo (id_pokemon, id_tipo) values
(3, 77),
(4, 77),
(5, 77),
(6, 77),
(7, 77),
(8, 77),
(9, 74),
(10, 74),
(11, 74),
(12, 74),
(13, 74),
(14, 74),
(15, 75),
(16, 75),
(17, 75),
(18, 75),
(19, 75),
(20, 75);


insert into eficacia_tipo (id_tipo_origem, id_tipo_alvo, id_eficacia) values
-- voador
(78, 77, 22),  -- Voador > Grama
(78, 84, 22),  -- Voador > Lutador
(78, 83, 19),  -- Voador < Pedra
(78, 78, 20),  -- Voador = Voador
(78, 79, 20),  -- Voador = Dragão
(78, 80, 20),  -- Voador = Sombrio
(78, 81, 20),  -- Voador = Gelo
(78, 75, 20),  -- Voador = Água
(78, 82, 20),  -- Voador = Normal


-- grama
(77, 75, 22),  -- Grama > Água
(77, 83, 22),  -- Grama > Pedra
(77, 78, 19),  -- Grama < Voador
(77, 77, 19),  -- Grama < Grama
(77, 79, 19),  -- Grama < Dragão
(77, 82, 20),  -- Grama = Normal
(77, 80, 20),  -- Grama = Sombrio
(77, 81, 20),  -- Grama = Gelo
(77, 84, 20),  -- Grama = Lutador


-- dragão
(79, 79, 22),  -- Dragão > Dragão
(79, 78, 20),  -- Dragão = Voador
(79, 77, 20),  -- Dragão = Grama
(79, 80, 20),  -- Dragão = Sombrio
(79, 81, 20),  -- Dragão = Gelo
(79, 75, 20),  -- Dragão = Água
(79, 82, 20),  -- Dragão = Normal
(79, 83, 20),  -- Dragão = Pedra
(79, 84, 20),  -- Dragão = Lutador


-- sombrio
(80, 80, 19),  -- Sombrio < Sombrio
(80, 84, 19),  -- Sombrio < Lutador
(80, 82, 20),  -- Sombrio = Normal
(80, 78, 20),  -- Sombrio = Voador
(80, 77, 20),  -- Sombrio = Grama
(80, 79, 20),  -- Sombrio = Dragão
(80, 81, 20),  -- Sombrio = Gelo
(80, 75, 20),  -- Sombrio = Água
(80, 83, 20),  -- Sombrio = Pedra


-- gelo
(81, 78, 22),  -- Gelo > Voador
(81, 79, 22),  -- Gelo > Dragão
(81, 77, 22),  -- Gelo > Grama
(81, 81, 19),  -- Gelo < Gelo
(81, 80, 20),  -- Gelo = Sombrio
(81, 75, 20),  -- Gelo = Água
(81, 82, 20),  -- Gelo = Normal
(81, 83, 20),  -- Gelo = Pedra
(81, 84, 20),  -- Gelo = Lutador


-- água
(75, 74, 22),  -- Água > Fogo
(75, 83, 22),  -- Água > Pedra
(75, 77, 19),  -- Água < Grama
(75, 75, 19),  -- Água < Água
(75, 78, 20),  -- Água = Voador
(75, 79, 20),  -- Água = Dragão
(75, 80, 20),  -- Água = Sombrio
(75, 81, 20),  -- Água = Gelo
(75, 82, 20),  -- Água = Normal
(75, 84, 20),  -- Água = Lutador


-- normal
(82, 84, 19),  -- Normal < Lutador
(82, 83, 19),  -- Normal < Pedra
(82, 82, 20),  -- Normal = Normal
(82, 78, 20),  -- Normal = Voador
(82, 77, 20),  -- Normal = Grama
(82, 79, 20),  -- Normal = Dragão
(82, 80, 20),  -- Normal = Sombrio
(82, 81, 20),  -- Normal = Gelo
(82, 75, 20),  -- Normal = Água


-- pedra
(83, 78, 22),  -- Pedra > Voador
(83, 81, 22),  -- Pedra > Gelo
(83, 84, 19),  -- Pedra < Lutador
(83, 83, 20),  -- Pedra = Pedra
(83, 82, 20),  -- Pedra = Normal
(83, 80, 20),  -- Pedra = Sombrio
(83, 79, 20),  -- Pedra = Dragão
(83, 77, 20),  -- Pedra = Grama
(83, 75, 20),  -- Pedra = Água


-- lutador
(84, 82, 22),  -- Lutador > Normal
(84, 83, 22),  -- Lutador > Pedra
(84, 78, 19),  -- Lutador < Voador
(84, 80, 19),  -- Lutador < Sombrio
(84, 84, 20),  -- Lutador = Lutador
(84, 81, 22),  -- Lutador > Gelo
(84, 79, 20),  -- Lutador = Dragão
(84, 77, 20),  -- Lutador = Grama
(84, 75, 20),  -- Lutador = Água


-- fogo
(74, 77, 22),  -- Fogo > Grama
(74, 81, 22),  -- Fogo > Gelo
(74, 75, 19),  -- Fogo < Água
(74, 74, 19),  -- Fogo < Fogo
(74, 79, 19),  -- Fogo < Dragão
(74, 83, 22),  -- Fogo > Pedra
(74, 78, 20),  -- Fogo = Voador
(74, 80, 20),  -- Fogo = Sombrio
(74, 82, 20),  -- Fogo = Normal
(74, 84, 20);  -- Fogo = Lutador


insert into pokemon_habilidade (id_pokemon, id_habilidade) values
(3, 316),
(3, 324),
(4, 316),
(4, 324),
(5, 316),
(5, 324),
(6, 316),
(6, 324),
(7, 316),
(7, 324),
(8, 316),
(8, 324),
(9, 289),
(9, 343),
(10, 289),
(10, 343),
(11, 289),
(11, 343),
(12, 289),
(12, 343),
(13, 289),
(13, 343),
(14, 289),
(14, 343),
(15, 296),
(15, 353),
(16, 296),
(16, 353),
(17, 296),
(17, 353),
(18, 296),
(18, 353),
(19, 296),
(19, 353),
(20, 296),
(20, 353);


insert into movimentos (nome_movimento, poder_movimento, precisao_movimento, pp_movimento, id_tipo) values
('Hydro pump', 110, 80, 8, 75),
('Protect', 0, 0, 16, 73),
('Surf', 90, 100, 24, 75),
('Flash', 0, 100, 20, 73),
('Cut', 50, 95, 30, 73),
('Rock smash', 40, 100, 15, 79),
('Absorb', 20, 100, 20, 77),
('Leaf Blade', 70, 100, 15, 77),
('Earthquake', 100, 100, 10, 81),
('Solar Beam', 120, 100, 10, 77),
('Muddy Water', 95, 85, 10, 75),
('Ice Beam', 95, 100, 10, 78),
('Blaze Kick', 85, 90, 10, 74),
('Sky Uppercut', 85, 90, 15, 82),
('Double kick', 30, 100, 30, 79),
('Overheat', 140, 90, 5, 74);




insert into hm (numero_hm, id_movimento) values
(03, 13),
(05, 14),
(01, 15),
(06, 16);


insert into tm (numero_tm, id_movimento) values
(17, 7),
(13, 22),
(50, 26),
(26, 19),
(22, 20);


insert into por_nivel (numero_por_nivel, id_movimento, id_pokemon) values
-- agua
(61, 21, 15),
(42, 6, 15),
(61, 21, 16),
(42, 6, 16),
(61, 21, 17),
(42, 6, 17),
(61, 21, 18),
(42, 6, 18),
(61, 21, 19),
(42, 6, 19),
(61, 21, 20),
(42, 6, 20),
--fogo
(36, 23,9),
(49, 24,9),
(16, 25,9),
(36, 23,10),
(49, 24,10),
(16, 25,10),
(36, 23,11),
(49, 24,11),
(16, 25,11),
(36, 23,12),
(49, 24,12),
(16, 25,12),
(36, 23,13),
(49, 24,13),
(16, 25,13),
(36, 23,14),
(49, 24,14),
(16, 25,14),
--grama
(6, 17, 3),
(25, 18, 3),
(6, 17, 4),
(25, 18, 4),
(6, 17, 5),
(25, 18, 5),
(6, 17, 6),
(25, 18, 6),
(6, 17, 7),
(25, 18, 7),
(6, 17, 8),
(25, 18, 8);


insert into pokemon_movimento (id_pokemon, id_movimento) values
--grama
(3,14),
(3,15),
(3,16),
(3,17),
(3,18),
(3,19),
(3,20),
(4,14),
(4,15),
(4,16),
(4,17),
(4,18),
(4,19),
(4,20),


(5,14),
(5,15),
(5,16),
(5,17),
(5,18),
(5,19),
(5,20),


(6,14),
(6,15),
(6,16),
(6,17),
(6,18),
(6,19),
(6,20),


(7,14),
(7,15),
(7,16),
(7,17),
(7,18),
(7,19),
(7,20),


(8,14),
(8,15),
(8,16),
(8,17),
(8,18),
(8,19),
(8,20),
--fogo
(9,14),
(9,15),
(9,16),
(9,23),
(9,24),
(9,25),
(9,26),


(10,14),
(10,15),
(10,16),
(10,23),
(10,24),
(10,25),
(10,26),


(11,14),
(11,15),
(11,16),
(11,23),
(11,24),
(11,25),
(11,26),


(12,14),
(12,15),
(12,16),
(12,23),
(12,24),
(12,25),
(12,26),


(13,14),
(13,15),
(13,16),
(13,23),
(13,24),
(13,25),
(13,26),


(14,14),
(14,15),
(14,16),
(14,23),
(14,24),
(14,25),
(14,26),


--agua
(15,6),
(15,7),
(15,13),
(15,14),
(15,15),
(15,16),
(15,21),
(15,22),


(16,6),
(16,7),
(16,13),
(16,14),
(16,15),
(16,16),
(16,21),
(16,22),


(17,6),
(17,7),
(17,13),
(17,14),
(17,15),
(17,16),
(17,21),
(17,22),


(18,6),
(18,7),
(18,13),
(18,14),
(18,15),
(18,16),
(18,21),
(18,22),


(19,6),
(19,7),
(19,13),
(19,14),
(19,15),
(19,16),
(19,21),
(19,22),


(20,6),
(20,7),
(20,13),
(20,14),
(20,15),
(20,16),
(20,21),
(20,22);


insert into movimento_habilidade (id_movimento, id_habilidade) values
(21, 367),
(6, 368),
(7, 369),
(22, 370),
(13, 371),
(14, 372),
(15, 373),
(16, 374),
(23, 375),
(24, 376),
(25, 377),
(26, 378),
(17, 379),
(18, 380),
(19, 381),
(20, 382);
hexchat.register('PCG Automation', '0.7', 'type pokecatch automatically')

function wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds
end

function PCG_Action(args)
    if args[1] == 'pokemoncommunitygame' then
        
        hexchat.print ("Channel Action")
        atr = 0
        btr = 0
        ctr = 0
        ice = 0
        nrm = 0
        pops = 0
        bg = 0
        if string.find(args[2], 'Catch it using !pokecatch ') then
            l = 0
            for i,line in ipairs(leg) do
                if string.find(args[2], line) then
                    hexchat.print ("LEGENDARY")
                    wait(1)
                    hexchat.command('say !pokecatch quickball')
                    l = 1
                end
            end
            for i,line in ipairs(water) do
                if string.find(args[2], line) then
                    hexchat.print ("Water")
                    wait(3)
                    hexchat.command('say !pokecatch netball')
                end
            end
            if l == 0 then
                for i,line in ipairs(atier) do
                    if string.find(args[2], line) then
                        hexchat.print ("A Tier")
                        atr = 1
                    end
                end
                for i,line in ipairs(btier) do
                    if string.find(args[2], line) then
                        hexchat.print ("B Tier")
                        btr = 1                        
                    end
                end
                for i,line in ipairs(frozen) do
                    if string.find(args[2], line) then
                        hexchat.print ("ICE Type")
                        ice = 1 
                    end
                end
                for i,line in ipairs(normal) do
                    if string.find(args[2], line) then
                        hexchat.print ("NORMAL Type")
                        nrm = 1 
                    end
                end
                for i,line in ipairs(Poison) do
                    if string.find(args[2], line) then
                        hexchat.print ("POISON Type")
                        pops = 1 
                    end
                end
                for i,line in ipairs(Psychic) do
                    if string.find(args[2], line) then
                        hexchat.print ("PSYCHIC Type")
                        pops = 1 
                    end
                end
                for i,line in ipairs(water) do
                    if string.find(args[2], line) then
                        hexchat.print ("Water Type")
                        wet = 1 
                    end
                end
                wait(math.random(7))
                hexchat.command('say !pokecheck')
                Working = 1
                channel = hexchat.get_info('channel')
                hexchat.print('Action in channel: ' .. channel)
                if channel == "#deemonrider" then
                    hexchat.print('It is just' .. channel)
                    -- wait(45)
                elseif channel == "#cpayne881" then
                    hexchat.print('CPAYNE!!')
                    cpaynelp = 0
                    for i,line in ipairs(dfn) do
                        if not string.find(args[2], line) then
                            -- hexchat.command('say !pokecatch greatball')
                            cpaynelp = cpaynelp + 1
                        end
                    end
                    if cpaynelp == 4 then
                        wait(6)
                        --hexchat.command('say !pokecatch greatball')
                    end
                end

                if string.find(args[2], 'deemon8EventSpawn A wild ') then 
                    hexchat.print ("Event Spawn")
                    wait(math.random(5))
                   hexchat.command('say !pokecatch')
                end
                if string.find(args[2], 'deemon8EventSpawn A wild ') then 
                    hexchat.print ("Event Spawn")
                    wait(7)
                   -- hexchat.command('say !pokecatch greatcherishball')
                end    
            end
        else
            hexchat.print ("PCG Saying Someting")
        end
    end
end

function PCG_Message(args)
    if args[1] == 'pokemoncommunitygame' then
        hexchat.print (args[1])
        if string.find(args[2], '@CryptoJWV') then
            if string.find(args[2], 'registered in Pokédex:') then
                hexchat.print ("Pokemon not in pokedex")
                wait(4)
                if atr == 1 then
                    hexchat.print ("Checking A Tier types")
                    if ice == 1 then
                        hexchat.print ("Use Frozen Ball")
                        hexchat.command('say !pokecatch frozenball')
                    elseif nrm == 1 then
                        hexchat.print ("Use Basic Ball")
                        hexchat.command('say !pokecatch basicball')
                    elseif pops == 1 then
                        hexchat.print ("Use Cipher Ball")
                        hexchat.command('say !pokecatch cipherball')
                    else
                        hexchat.print ("Fall Back - Use Ultra Ball")
                        hexchat.command('say !pokecatch ultraball')
                    end
                elseif btr == 1 then
                        hexchat.command('say !pokecatch ultraball')
                else
                    wait(15)
                        hexchat.command('say !pokecatch greatball')
                end
            end
        end
    end
end

leg = {"Articuno", "Zapdos", "Moltres", "Mewtwo", "Mew", "Raikou", "Entei", "Suicune", "Lugia", "Ho-Oh", "Celebi", "Regirock", "Regice", "Registeel", "Latias", "Latios", "Kyogre", "Groudon", "Rayquaza", "Jirachi", "Deoxys", "Uxie", "Mesprit", "Azelf", "Dialga", "Palkia", "Heatran", "Regigigas", "Giratina", "Cresselia", "Phione", "Manaphy", "Darkrai", "Shaymin", "Arceus", "Victini", "Cobalion", "Terrakion", "Virizion", "Tornadus", "Thundurus", "Reshiram", "Zekrom", "Landorus", "Kyurem", "Keldeo", "Meloetta", "Genesect", "Xerneas", "Yveltal", "Zygarde", "Diancie", "Hoopa", "Volcanion", "Silvally", "Tapu Koko", "Tapu Lele", "Tapu Bulu", "Tapu Fini", "Cosmog", "Cosmoem", "Solgaleo", "Lunala", "Nihilego", "Buzzwole", "Pheromosa", "Xurkitree", "Celesteela", "Kartana", "Guzzlord", "Necrozma", "Magearna", "Marshadow", "Poipole", "Naganadel", "Stakataka", "Blacephalon", "Zeraora", "Meltan", "Melmetal", "Zacian", "Zamazenta", "Eternatus", "Kubfu", "Urshifu", "Zarude", "Regieleki", "Regidrago", "Glastrier", "Spectrier", "Calyrex"}
atier = {"Raichu", "Nidoqueen", "Nidoking", "Vileplume", "Arcanine", "Poliwrath", "Alakazam", "Machamp", "Tentacruel", "Golem", "Cloyster", "Gengar", "Starmie", "Gyarados", "Lapras", "Vaporeon", "Jolteon", "Flareon", "Aerodactyl", "Snorlax", "Dragonite", "Crobat", "Politoed", "Espeon", "Umbreon", "Slowking", "Steelix", "Scizor", "Kingdra", "Blissey", "Tyranitar", "Ludicolo", "Shiftry", "Gardevoir", "Slaking", "Aggron", "Wailord", "Flygon", "Altaria", "Milotic", "Walrein", "Salamence", "Metagross", "Luxray", "Roserade", "Rampardos", "Bastiodon", "Vespiquen", "Drifblim", "Mismagius", "Honchkrow", "Spiritomb", "Garchomp", "Lucario", "Hippowdon", "Toxicroak", "Abomasnow", "Weavile", "Magnezone", "Lickilicky", "Rhyperior", "Electivire", "Magmortar", "Togekiss", "Yanmega", "Leafeon", "Glaceon", "Gliscor", "Mamoswine", "Porygon-Z", "Gallade", "Dusknoir", "Froslass", "Rotom", "Gigalith", "Excadrill", "Conkeldurr", "Seismitoad", "Leavanny", "Scolipede", "Krookodile", "Darmanitan", "Cofagrigus", "Archeops", "Zoroark", "Gothitelle", "Reuniclus", "Vanilluxe", "Escavalier", "Ferrothorn", "Klinklang", "Eelektross", "Chandelure", "Haxorus", "Druddigon", "Golurk", "Bisharp", "Mandibuzz", "Hydreigon", "Volcarona", "Talonflame", "Pyroar", "Florges", "Pangoro", "Aegislash (Shield)", "Dragalge", "Tyrantrum", "Sylveon", "Hawlucha", "Goodra", "Avalugg", "Noivern", "Toucannon", "Vikavolt", "Toxapex", "Salazzle", "Bewear", "Tsareena", "Golisopod", "Turtonator", "Mimikyu", "Kommo-o", "Corviknight", "Orbeetle", "Coalossal", "Flapple", "Appletun", "Barraskewda", "Toxtricity", "Centiskorch", "Polteageist", "Hatterene", "Grimmsnarl", "Obstagoon", "Cursola", "Mr. Rime", "Runerigus", "Alcremie", "Copperajah", "Duraludon", "Dragapult", "Pawmot", "Arboliva", "Garganacl", "Armarouge", "Ceruledge", "Kilowattrel", "Toedscruel", "Scovillain", "Tinkaton", "Revavroom", "Cyclizar", "Glimmora", "Cetitan", "Dondozo", "Tatsugiri (Curly)", "Annihilape", "Farigiraf", "Dudunsparce (Two-Segment)", "Kingambit", "Great Tusk", "Scream Tail", "Brute Bonnet", "Flutter Mane", "Slither Wing", "Sandy Shocks", "Iron Treads", "Iron Bundle", "Iron Hands", "Iron Jugulis", "Iron Moth", "Iron Thorns", "Baxcalibur", "Gholdengo", "Roaring Moon", "Iron Valiant"}
btier = {"Butterfree", "Beedrill", "Pidgeotto", "Pidgeot", "Raticate", "Fearow", "Arbok", "Pikachu", "Sandslash", "Nidorina", "Nidorino", "Clefable", "Ninetales", "Wigglytuff", "Gloom", "Parasect", "Venomoth", "Dugtrio", "Persian", "Golduck", "Primeape", "Poliwhirl", "Kadabra", "Machoke", "Weepinbell", "Victreebel", "Graveler", "Rapidash", "Slowbro", "Magneton", "Dodrio", "Dewgong", "Muk", "Haunter", "Hypno", "Kingler", "Electrode", "Exeggutor", "Marowak", "Hitmonlee", "Hitmonchan", "Weezing", "Rhydon", "Kangaskhan", "Seadra", "Seaking", "Mr. Mime", "Scyther", "Electabuzz", "Magmar", "Pinsir", "Tauros", "Eevee", "Porygon", "Omastar", "Kabutops", "Dragonair", "Furret", "Noctowl", "Ledian", "Ariados", "Lanturn", "Togetic", "Xatu", "Flaaffy", "Ampharos", "Bellossom", "Azumarill", "Jumpluff", "Sunflora", "Quagsire", "Wobbuffet", "Girafarig", "Forretress", "Gligar", "Granbull", "Shuckle", "Heracross", "Sneasel", "Ursaring", "Magcargo", "Piloswine", "Octillery", "Mantine", "Skarmory", "Houndoom", "Donphan", "Porygon2", "Stantler", "Hitmontop", "Miltank", "Pupitar", "Mightyena", "Linoone", "Beautifly", "Dustox", "Lombre", "Nuzleaf", "Swellow", "Pelipper", "Masquerain", "Breloom", "Vigoroth", "Ninjask", "Loudred", "Exploud", "Hariyama", "Delcatty", "Lairon", "Medicham", "Manectric", "Swalot", "Sharpedo", "Camerupt", "Torkoal", "Grumpig", "Vibrava", "Cacturne", "Zangoose", "Seviper", "Whiscash", "Crawdaunt", "Claydol", "Cradily", "Armaldo", "Castform", "Kecleon", "Banette", "Dusclops", "Tropius", "Chimecho", "Absol", "Glalie", "Sealeo", "Huntail", "Gorebyss", "Relicanth", "Shelgon", "Metang", "Staravia", "Staraptor", "Bibarel", "Kricketune", "Luxio", "Wormadam", "Mothim", "Floatzel", "Cherrim", "Gastrodon", "Ambipom", "Lopunny", "Purugly", "Skuntank", "Bronzong", "Gabite", "Drapion", "Carnivine", "Lumineon", "Tangrowth", "Probopass", "Watchog", "Herdier", "Stoutland", "Liepard", "Simisage", "Simisear", "Simipour", "Musharna", "Tranquill", "Unfezant", "Zebstrika", "Boldore", "Swoobat", "Audino", "Gurdurr", "Palpitoad", "Throh", "Sawk", "Swadloon", "Whirlipede", "Whimsicott", "Lilligant", "Basculin", "Krokorok", "Crustle", "Scrafty", "Sigilyph", "Carracosta", "Garbodor", "Zorua", "Cinccino", "Gothorita", "Duosion", "Swanna", "Vanillish", "Sawsbuck", "Emolga", "Amoonguss", "Jellicent", "Alomomola", "Galvantula", "Klang", "Eelektrik", "Beheeyem", "Lampent", "Fraxure", "Beartic", "Cryogonal", "Accelgor", "Stunfisk", "Mienshao", "Bouffalant", "Braviary", "Heatmor", "Durant", "Zweilous", "Larvesta", "Diggersby", "Fletchinder", "Vivillon", "Floette", "Gogoat", "Furfrou", "Meowstic", "Honedge", "Doublade", "Aromatisse", "Slurpuff", "Malamar", "Barbaracle", "Clawitzer", "Heliolisk", "Aurorus", "Dedenne", "Carbink", "Sliggoo", "Klefki", "Trevenant", "Gourgeist", "Trumbeak", "Gumshoos", "Charjabug", "Crabominable", "Oricorio", "Ribombee", "Lycanroc", "Mudsdale", "Araquanid", "Lurantis", "Shiinotic", "Steenee", "Comfey", "Oranguru", "Passimian", "Palossand", "Minior", "Komala", "Togedemaru", "Bruxish", "Drampa", "Dhelmise", "Hakamo-o", "Greedent", "Dottler", "Thievul", "Eldegoss", "Dubwool", "Drednaw", "Boltund", "Carkol", "Sandaconda", "Cramorant", "Grapploct", "Hattrem", "Morgrem", "Perrserker", "Sirfetch'd", "Falinks", "Frosmoth", "Stonjourner", "Eiscue", "Indeedee", "Morpeko", "Dracozolt", "Arctozolt", "Dracovish", "Arctovish", "Drakloak", "Oinkologne (M)", "Spidops", "Lokix", "Pawmo", "Maushold (Family-Of-Four)", "Dachsbun", "Squawkabilly (Green-Plumage)", "Naclstack", "Bellibolt", "Mabosstiff", "Grafaiai", "Brambleghast", "Klawf", "Rabsca", "Espathra", "Tinkatuff", "Wugtrio", "Bombirdier", "Palafin (Zero)", "Orthworm", "Houndstone", "Flamigo", "Veluza", "Clodsire", "Arctibax"}
nest = {"Metapod", "Weedle", "Kakuna", "Spearow", "Nidoran♀", "Nidoran♂", "Zubat", "Golbat", "Diglett", "Geodude", "Doduo", "Shellder", "Exeggcute", "Cubone", "Chansey", "Horsea", "Kabuto", "Dratini", "Spinarak", "Chinchou", "Pichu", "Cleffa", "Hoppip", "Aipom", "Sunkern", "Wooper", "Murkrow", "Misdreavus", "Pineco", "Dunsparce", "Teddiursa", "Slugma", "Houndour", "Tyrogue", "Elekid", "Magby", "Poochyena", "Silcoon", "Taillow", "Surskit", "Shroomish", "Skitty", "Sableye", "Aron", "Electrike", "Plusle", "Illumise", "Gulpin", "Wailmer", "Numel", "Spoink", "Barboach", "Anorith", "Shuppet", "Duskull", "Wynaut", "Bagon", "Beldum", "Starly", "Shinx", "Budew", "Shieldon", "Combee", "Buizel", "Cherubi", "Drifloon", "Chingling", "Mime Jr.", "Gible", "Munchlax", "Riolu", "Croagunk", "Patrat", "Pansage", "Pansear", "Woobat", "Drilbur", "Timburr", "Sewaddle", "Sandile", "Dwebble", "Yamask", "Archen", "Vanillite", "Foongus", "Frillish", "Tynamo", "Axew", "Cubchoo", "Pawniard", "Bunnelby", "Fletchling", "Scatterbug", "Spewpa", "Flabébé", "Swirlix", "Binacle", "Tyrunt", "Goomy", "Phantump", "Bergmite", "Pikipek", "Cutiefly", "Rockruff", "Mareanie", "Salandit", "Stufful", "Wimpod", "Pyukumuku", "Jangmo-o", "Skwovet", "Corvisquire", "Chewtle", "Rolycoly", "Silicobra", "Sizzlipede", "Clobbopus", "Sinistea", "Milcery", "Pincurchin", "Cufant", "Dreepy"}
nine = {"Lechonk", "Oinkologne (M)", "Tarountula", "Spidops", "Nymble", "Lokix", "Pawmi", "Pawmo", "Pawmot", "Tandemaus", "Maushold (Family-Of-Four)", "Fidough", "Dachsbun", "Smoliv", "Dolliv", "Arboliva", "Squawkabilly (Green-Plumage)", "Nacli", "Naclstack", "Garganacl", "Charcadet", "Armarouge", "Ceruledge", "Tadbulb", "Bellibolt", "Wattrel", "Kilowattrel", "Maschiff", "Mabosstiff", "Shroodle", "Grafaiai", "Bramblin", "Brambleghast", "Toedscool", "Toedscruel", "Klawf", "Capsakid", "Scovillain", "Rellor", "Rabsca", "Flittle", "Espathra", "Tinkatink", "Tinkatuff", "Tinkaton", "Wiglett", "Wugtrio", "Bombirdier", "Finizen", "Palafin (Zero)", "Varoom", "Revavroom", "Cyclizar", "Orthworm", "Glimmet", "Glimmora", "Greavard", "Houndstone", "Flamigo", "Cetoddle", "Cetitan", "Veluza", "Dondozo", "Tatsugiri (Curly)", "Annihilape", "Clodsire", "Farigiraf", "Dudunsparce (Two-Segment)", "Kingambit", "Great Tusk", "Scream Tail", "Brute Bonnet", "Flutter Mane", "Slither Wing", "Sandy Shocks", "Iron Treads", "Iron Bundle", "Iron Hands", "Iron Jugulis", "Iron Moth", "Iron Thorns", "Frigibax", "Arctibax", "Baxcalibur", "Gimmighoul", "Gholdengo", "Roaring Moon", "Iron Valiant"}
grass = {"Oddish", "Gloom", "Vileplume", "Paras", "Parasect", "Bellsprout", "Weepinbell", "Victreebel", "Exeggcute", "Exeggutor", "Tangela", "Bellossom", "Hoppip", "Skiploom", "Jumpluff", "Sunkern", "Sunflora", "Lotad", "Lombre", "Ludicolo", "Seedot", "Nuzleaf", "Shiftry", "Shroomish", "Breloom", "Roselia", "Cacnea", "Cacturne", "Lileep", "Cradily", "Tropius", "Budew", "Roserade", "Wormadam", "Cherubi", "Cherrim", "Carnivine", "Snover", "Abomasnow", "Tangrowth", "Leafeon", "Pansage", "Simisage", "Sewaddle", "Swadloon", "Leavanny", "Cottonee", "Whimsicott", "Petilil", "Lilligant", "Maractus", "Deerling", "Sawsbuck", "Foongus", "Amoonguss", "Ferroseed", "Ferrothorn", "Skiddo", "Gogoat", "Phantump", "Trevenant", "Pumpkaboo", "Gourgeist", "Fomantis", "Lurantis", "Morelull", "Shiinotic", "Bounsweet", "Steenee", "Tsareena", "Dhelmise", "Gossifleur", "Eldegoss", "Applin", "Flapple", "Appletun", "Smoliv", "Dolliv", "Arboliva", "Bramblin", "Brambleghast", "Toedscool", "Toedscruel", "Capsakid", "Scovillain", "Brute Bonnet"}
frozen = {"Dewgong", "Cloyster", "Jynx", "Lapras", "Sneasel", "Swinub", "Piloswine", "Delibird", "Smoochum", "Snorunt", "Glalie", "Spheal", "Sealeo", "Walrein", "Snover", "Abomasnow", "Weavile", "Glaceon", "Mamoswine", "Froslass", "Vanillite", "Vanillish", "Vanilluxe", "Cubchoo", "Beartic", "Cryogonal", "Amaura", "Aurorus", "Bergmite", "Avalugg", "Crabominable", "Mr. Rime", "Snom", "Frosmoth", "Eiscue", "Arctozolt", "Arctovish", "Cetoddle", "Cetitan", "Iron Bundle", "Frigibax", "Arctibax", "Baxcalibur"}
normal = {"Pidgey", "Pidgeotto", "Pidgeot", "Rattata", "Raticate", "Spearow", "Fearow", "Jigglypuff", "Wigglytuff", "Meowth", "Persian", "Doduo", "Dodrio", "Lickitung", "Chansey", "Kangaskhan", "Tauros", "Ditto", "Eevee", "Porygon", "Snorlax", "Sentret", "Furret", "Hoothoot", "Noctowl", "Igglybuff", "Aipom", "Girafarig", "Dunsparce", "Teddiursa", "Ursaring", "Porygon2", "Stantler", "Smeargle", "Miltank", "Blissey", "Zigzagoon", "Linoone", "Taillow", "Swellow", "Slakoth", "Vigoroth", "Slaking", "Whismur", "Loudred", "Exploud", "Azurill", "Skitty", "Delcatty", "Spinda", "Swablu", "Zangoose", "Castform", "Kecleon", "Starly", "Staravia", "Staraptor", "Bidoof", "Bibarel", "Ambipom", "Buneary", "Lopunny", "Glameow", "Purugly", "Happiny", "Chatot", "Munchlax", "Lickilicky", "Porygon-Z", "Patrat", "Watchog", "Lillipup", "Herdier", "Stoutland", "Pidove", "Tranquill", "Unfezant", "Audino", "Minccino", "Cinccino", "Deerling", "Sawsbuck", "Bouffalant", "Rufflet", "Braviary", "Bunnelby", "Diggersby", "Fletchling", "Litleo", "Pyroar", "Furfrou", "Helioptile", "Heliolisk", "Pikipek", "Trumbeak", "Toucannon", "Yungoos", "Gumshoos", "Stufful", "Bewear", "Oranguru", "Komala", "Drampa", "Skwovet", "Greedent", "Wooloo", "Dubwool", "Obstagoon", "Indeedee", "Lechonk", "Oinkologne (M)", "Tandemaus", "Maushold (Family-Of-Four)", "Smoliv", "Dolliv", "Arboliva", "Squawkabilly (Green-Plumage)", "Shroodle", "Grafaiai", "Cyclizar", "Farigiraf", "Dudunsparce (Two-Segment)"}
Poison = {"Weedle", "Kakuna", "Beedrill", "Ekans", "Arbok", "Nidoran♀", "Nidorina", "Nidoqueen", "Nidoran♂", "Nidorino", "Nidoking", "Zubat", "Golbat", "Oddish", "Gloom", "Vileplume", "Venonat", "Venomoth", "Bellsprout", "Weepinbell", "Victreebel", "Tentacool", "Tentacruel", "Grimer", "Muk", "Gastly", "Haunter", "Gengar", "Koffing", "Weezing", "Spinarak", "Ariados", "Crobat", "Qwilfish", "Dustox", "Roselia", "Gulpin", "Swalot", "Seviper", "Budew", "Roserade", "Stunky", "Skuntank", "Skorupi", "Drapion", "Croagunk", "Toxicroak", "Venipede", "Whirlipede", "Scolipede", "Trubbish", "Garbodor", "Foongus", "Amoonguss", "Skrelp", "Dragalge", "Mareanie", "Toxapex", "Salandit", "Salazzle", "Toxel", "Toxtricity", "Shroodle", "Grafaiai", "Varoom", "Revavroom", "Glimmet", "Glimmora", "Clodsire", "Iron Moth"}
Psychic = {"Abra", "Kadabra", "Alakazam", "Slowpoke", "Slowbro", "Drowzee", "Hypno", "Exeggcute", "Exeggutor", "Starmie", "Mr. Mime", "Jynx", "Natu", "Xatu", "Espeon", "Slowking", "Unown (A)", "Wobbuffet", "Girafarig", "Smoochum", "Ralts", "Kirlia", "Gardevoir", "Meditite", "Medicham", "Spoink", "Grumpig", "Lunatone", "Solrock", "Baltoy", "Claydol", "Chimecho", "Wynaut", "Beldum", "Metang", "Metagross", "Chingling", "Bronzor", "Bronzong", "Mime Jr.", "Gallade", "Munna", "Musharna", "Woobat", "Swoobat", "Sigilyph", "Gothita", "Gothorita", "Gothitelle", "Solosis", "Duosion", "Reuniclus", "Elgyem", "Beheeyem", "Espurr", "Meowstic", "Inkay", "Malamar", "Oranguru", "Bruxish", "Dottler", "Orbeetle", "Hatenna", "Hattrem", "Hatterene", "Mr. Rime", "Indeedee", "Armarouge", "Rabsca", "Flittle", "Espathra", "Veluza", "Farigiraf", "Scream Tail"}
bug = {"Caterpie", "Metapod", "Butterfree", "Weedle", "Kakuna", "Beedrill", "Paras", "Parasect", "Venonat", "Venomoth", "Scyther", "Pinsir", "Ledyba", "Ledian", "Spinarak", "Ariados", "Yanma", "Pineco", "Forretress", "Scizor", "Shuckle", "Heracross", "Wurmple", "Silcoon", "Beautifly", "Cascoon", "Dustox", "Surskit", "Masquerain", "Nincada", "Ninjask", "Shedinja", "Volbeat", "Illumise", "Anorith", "Armaldo", "Kricketot", "Kricketune", "Burmy", "Wormadam", "Mothim", "Combee", "Vespiquen", "Skorupi", "Yanmega", "Sewaddle", "Swadloon", "Leavanny", "Venipede", "Whirlipede", "Scolipede", "Dwebble", "Crustle", "Karrablast", "Escavalier", "Joltik", "Galvantula", "Shelmet", "Accelgor", "Durant", "Larvesta", "Volcarona", "Scatterbug", "Spewpa", "Vivillon", "Grubbin", "Charjabug", "Vikavolt", "Cutiefly", "Ribombee", "Dewpider", "Araquanid", "Wimpod", "Golisopod", "Blipbug", "Dottler", "Orbeetle", "Sizzlipede", "Centiskorch", "Snom", "Frosmoth", "Tarountula", "Spidops", "Nymble", "Lokix", "Rellor", "Rabsca", "Slither Wing"}
three = {"Poochyena", "Mightyena", "Zigzagoon", "Linoone", "Wurmple", "Silcoon", "Beautifly", "Cascoon", "Dustox", "Lotad", "Lombre", "Ludicolo", "Seedot", "Nuzleaf", "Shiftry", "Taillow", "Swellow", "Wingull", "Pelipper", "Ralts", "Kirlia", "Gardevoir", "Surskit", "Masquerain", "Shroomish", "Breloom", "Slakoth", "Vigoroth", "Slaking", "Nincada", "Ninjask", "Shedinja", "Whismur", "Loudred", "Exploud", "Makuhita", "Hariyama", "Azurill", "Nosepass", "Skitty", "Delcatty", "Sableye", "Mawile", "Aron", "Lairon", "Aggron", "Meditite", "Medicham", "Electrike", "Manectric", "Plusle", "Minun", "Volbeat", "Illumise", "Roselia", "Gulpin", "Swalot", "Carvanha", "Sharpedo", "Wailmer", "Wailord", "Numel", "Camerupt", "Torkoal", "Spoink", "Grumpig", "Spinda", "Trapinch", "Vibrava", "Flygon", "Cacnea", "Cacturne", "Swablu", "Altaria", "Zangoose", "Seviper", "Lunatone", "Solrock", "Barboach", "Whiscash", "Corphish", "Crawdaunt", "Baltoy", "Claydol", "Lileep", "Cradily", "Anorith", "Armaldo", "Feebas", "Milotic", "Castform", "Kecleon", "Shuppet", "Banette", "Duskull", "Dusclops", "Tropius", "Chimecho", "Absol", "Wynaut", "Snorunt", "Glalie", "Spheal", "Sealeo", "Walrein", "Clamperl", "Huntail", "Gorebyss", "Relicanth", "Luvdisc", "Bagon", "Shelgon", "Salamence", "Beldum", "Metang", "Metagross"}
ghost = {"Gastly", "Haunter", "Gengar", "Misdreavus", "Shedinja", "Sableye", "Shuppet", "Banette", "Duskull", "Dusclops", "Drifloon", "Drifblim", "Mismagius", "Spiritomb", "Dusknoir", "Froslass", "Rotom", "Yamask", "Cofagrigus", "Frillish", "Jellicent", "Litwick", "Lampent", "Chandelure", "Golett", "Golurk", "Honedge", "Doublade", "Aegislash (Shield)", "Phantump", "Trevenant", "Pumpkaboo", "Gourgeist", "Sandygast", "Palossand", "Mimikyu", "Dhelmise", "Sinistea", "Polteageist", "Cursola", "Runerigus", "Dreepy", "Drakloak", "Dragapult", "Ceruledge", "Bramblin", "Brambleghast", "Greavard", "Houndstone", "Annihilape", "Flutter Mane", "Gimmighoul", "Gholdengo"}
water = {"Psyduck", "Golduck", "Poliwag", "Poliwhirl", "Poliwrath", "Tentacool", "Tentacruel", "Slowpoke", "Slowbro", "Seel", "Dewgong", "Shellder", "Cloyster", "Krabby", "Kingler", "Horsea", "Seadra", "Goldeen", "Seaking", "Staryu", "Starmie", "Magikarp", "Gyarados", "Lapras", "Vaporeon", "Omanyte", "Omastar", "Kabuto", "Kabutops", "Chinchou", "Lanturn", "Marill", "Azumarill", "Politoed", "Wooper", "Quagsire", "Slowking", "Qwilfish", "Corsola", "Remoraid", "Octillery", "Mantine", "Kingdra", "Lotad", "Lombre", "Ludicolo", "Wingull", "Pelipper", "Surskit", "Carvanha", "Sharpedo", "Wailmer", "Wailord", "Barboach", "Whiscash", "Corphish", "Crawdaunt", "Feebas", "Milotic", "Spheal", "Sealeo", "Walrein", "Clamperl", "Huntail", "Gorebyss", "Relicanth", "Luvdisc", "Bibarel", "Buizel", "Floatzel", "Shellos", "Gastrodon", "Finneon", "Lumineon", "Mantyke", "Panpour", "Simipour", "Tympole", "Palpitoad", "Seismitoad", "Basculin", "Tirtouga", "Carracosta", "Ducklett", "Swanna", "Frillish", "Jellicent", "Alomomola", "Binacle", "Barbaracle", "Skrelp", "Clauncher", "Clawitzer", "Wishiwashi", "Mareanie", "Toxapex", "Dewpider", "Araquanid", "Wimpod", "Golisopod", "Pyukumuku", "Bruxish", "Chewtle", "Drednaw", "Cramorant", "Arrokuda", "Barraskewda", "Dracovish", "Arctovish", "Wiglett", "Wugtrio", "Finizen", "Palafin (Zero)", "Veluza", "Dondozo", "Tatsugiri (Curly)", "Iron Bundle"}
dfn = {"Conkeldurr", "Vikavolt", "Ceruledge", "Baxcalibur"}

Working = 1
hexchat.hook_print('Channel Action', PCG_Action)
hexchat.hook_print('Channel Action Hilight', PCG_Auto)
hexchat.hook_print('Channel Message', PCG_Message)
hexchat.hook_print('Channel Msg Hilight', PCG_Message)

--github version
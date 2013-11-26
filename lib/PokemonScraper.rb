require 'open-uri'
require 'nokogiri'

# HOMEWORK: pokemon scraper
# create a scraper file that scrapes a single pokemon name from bulbapedia.
 
# create a simple pokemon class that has one instance variable, 'name', 
# and one method 'say_name'. write tests first.
 
# create a file called app.rb. using your scraper and your pokemon class, 
# create a pokemon object that gets it's name from your bulbapedia scraper.

#sample formatting--> html.search('a[href="/wiki/Wartortle_(Pok%C3%A9mon)"]').text

class PokemonScraper
	attr_reader :html

	@@base_url = "http://bulbapedia.bulbagarden.net/wiki"

	def initialize(url)
		download = open(url)
		@html = Nokogiri::HTML(download)
	end

	#works for Generation 1 formatting

	def get_pokemon_url(name)
		@@base_url + "/"+(name.capitalize) + "_(Pok%C3%A9mon)"
	end

	def get_a_pokemon(name)
		html.search('a[href=s"/wiki/' +(name.capitalize) + '_(Pok%C3%A9mon)"]').text
	end

	def get_all_pokemon #works!
		html.search('a[href$="(Pok%C3%A9mon)"]').collect {|item| item.text}.compact
	end

end

my_scraper = PokemonScraper.new("http://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_National_Pok%C3%A9dex_number")

return_value = my_scraper.get_all_pokemon
puts return_value


# puts "get_a_pokemon(espurr) = #{my_scraper.get_a_pokemon("espurr")}"

# puts "get_pokemon_url(blastoise) = #{my_scraper.get_pokemon_url("blastoise")}"

# puts "get_a_pokemon(Blastoise) = #{my_scraper.get_a_pokemon("Blastoise")}" #works!

pokemon_array_1 = %w(Bulbasaur Ivysaur Venusaur Charmander Charmeleon Charizard Squirtle Wartortle Blastoise Caterpie Metapod)

pokemon_array_2 = %w(Chikorita Bayleef Meganium Cyndaquil Quilava Typhlosion Totodile)
 
pokemon_array_3 = %w(Treecko Grovyle Sceptile Torchic Combusken Blaziken Mudkip Marshtomp Swampert Poochyena 
						Mightyena Zigzagoon Linoone Wurmple Silcoon Beautifly Cascoon Dustox)

#  #generation 1 works
# pokemon_array_1.each do |item|
# 	puts "#{item}---> get_a_pokemon-->#{my_scraper.get_a_pokemon(item)}, url ---> #{my_scraper.get_pokemon_url(item)}"
# end 

# #generation 2 works
# pokemon_array_2.each do |item|
# 	puts "#{item}---> get_a_pokemon-->#{my_scraper.get_a_pokemon(item)}, url ---> #{my_scraper.get_pokemon_url(item)}"
# end

# #generation 3 works
# pokemon_array_3.each do |item|
# 	puts "#{item}---> get_a_pokemon-->#{my_scraper.get_a_pokemon(item)}, url ---> #{my_scraper.get_pokemon_url(item)}"
# end










# Charizard 

# Squirtle 
# Wartortle 
# Blastoise 
# Caterpie 
# Metapod 
# Butterfree 
# Weedle 
# Kakuna 
# Beedrill 
# Pidgey 
# Pidgeotto 
# Pidgeot 
# Rattata 
# Raticate 
# Spearow 
# Fearow 
# Ekans 
# Arbok 
# Pikachu 
# Raichu 
# Sandshrew 
# Sandslash 
# Nidoran♀ 
# Nidorina 
# Nidoqueen 
# Nidoran♂ 
# Nidorino 
# Nidoking 
# Clefairy 
# Clefable 
# Vulpix 
# Ninetales 
# Jigglypuff 
# Wigglytuff 
# Zubat 
# Golbat 
# Oddish 
# Gloom 
# Vileplume 
# Paras 
# Parasect 
# Venonat 
# Venomoth 
# Diglett 
# Dugtrio 
# Meowth 
# Persian 
# Psyduck 
# Golduck 
# Mankey 
# Primeape 
# Growlithe 
# Arcanine 
# Poliwag 
# Poliwhirl 
# Poliwrath 
# Abra 
# Kadabra 
# Alakazam 
# Machop 
# Machoke 
# Machamp 
# Bellsprout 
# Weepinbell 
# Victreebel 
# Tentacool 
# Tentacruel 
# Geodude 
# Graveler 
# Golem 
# Ponyta 
# Rapidash 
# Slowpoke 
# Slowbro 
# Magnemite 
# Magneton 
# Farfetch'd 
# Doduo 
# Dodrio 
# Seel 
# Dewgong 
# Grimer 
# Muk 
# Shellder 
# Cloyster 
# Gastly 
# Haunter 
# Gengar 
# Onix 
# Drowzee 
# Hypno 
# Krabby 
# Kingler 
# Voltorb 
# Electrode 
# Exeggcute 
# Exeggutor 
# Cubone 
# Marowak 
# Hitmonlee 
# Hitmonchan 
# Lickitung 
# Koffing 
# Weezing 
# Rhyhorn 
# Rhydon 
# Chansey 
# Tangela 
# Kangaskhan 
# Horsea 
# Seadra 
# Goldeen 
# Seaking 
# Staryu 
# Starmie 
# Mr. Mime 
# Scyther 
# Jynx 
# Electabuzz 
# Magmar 
# Pinsir 
# Tauros 
# Magikarp 
# Gyarados 
# Lapras 
# Ditto 
# Eevee 
# Vaporeon 
# Jolteon 
# Flareon 
# Porygon 
# Omanyte 
# Omastar 
# Kabuto 
# Kabutops 
# Aerodactyl 
# Snorlax 
# Articuno 
# Zapdos 
# Moltres 
# Dratini 
# Dragonair 
# Dragonite 
# Mewtwo 
# Mew

#Generation 2
# Chikorita 
# Bayleef 
# Meganium 
# Cyndaquil 
# Quilava 
# Typhlosion 
# Totodile 
# Croconaw 
# Feraligatr 
# Sentret 
# Furret 
# Hoothoot 
# Noctowl 
# Ledyba 
# Ledian 
# Spinarak 
# Ariados 
# Crobat 
# Chinchou 
# Lanturn 
# Pichu 
# Cleffa 
# Igglybuff 
# Togepi 
# Togetic 
# Natu 
# Xatu 
# Mareep 
# Flaaffy 
# Ampharos 
# Bellossom 
# Marill 
# Azumarill 
# Sudowoodo 
# Politoed 
# Hoppip 
# Skiploom 
# Jumpluff 
# Aipom 
# Sunkern 
# Sunflora 
# Yanma 
# Wooper 
# Quagsire 
# Espeon 
# Umbreon 
# Murkrow 
# Slowking 
# Misdreavus 
# Unown 
# Wobbuffet 
# Girafarig 
# Pineco 
# Forretress 
# Dunsparce 
# Gligar 
# Steelix 
# Snubbull 
# Granbull 
# Qwilfish 
# Scizor 
# Shuckle 
# Heracross 
# Sneasel 
# Teddiursa 
# Ursaring 
# Slugma 
# Magcargo 
# Swinub 
# Piloswine 
# Corsola 
# Remoraid 
# Octillery 
# Delibird 
# Mantine 
# Skarmory 
# Houndour 
# Houndoom 
# Kingdra 
# Phanpy 
# Donphan 
# Porygon2 
# Stantler 
# Smeargle 
# Tyrogue 
# Hitmontop 
# Smoochum 
# Elekid 
# Magby 
# Miltank 
# Blissey 
# Raikou 
# Entei 
# Suicune 
# Larvitar 
# Pupitar 
# Tyranitar 
# Lugia 
# Ho-Oh 
# Celebi 

#generation 3
# Treecko 
# Grovyle 
# Sceptile 
# Torchic 
# Combusken 
# Blaziken 
# Mudkip 
# Marshtomp 
# Swampert 
# Poochyena 
# Mightyena 
# Zigzagoon 
# Linoone 
# Wurmple 
# Silcoon 
# Beautifly 
# Cascoon 
# Dustox 
# Lotad 
# Lombre 
# Ludicolo 
# Seedot 
# Nuzleaf 
# Shiftry 
# Taillow 
# Swellow 
# Wingull 
# Pelipper 
# Ralts 
# Kirlia 
# Gardevoir 
# Surskit 
# Masquerain 
# Shroomish 
# Breloom 
# Slakoth 
# Vigoroth 
# Slaking 
# Nincada 
# Ninjask 
# Shedinja 
# Whismur 
# Loudred 
# Exploud 
# Makuhita 
# Hariyama 
# Azurill 
# Nosepass 
# Skitty 
# Delcatty 
# Sableye 
# Mawile 
# Aron 
# Lairon 
# Aggron 
# Meditite 
# Medicham 
# Electrike 
# Manectric 
# Plusle 
# Minun 
# Volbeat 
# Illumise 
# Roselia 
# Gulpin 
# Swalot 
# Carvanha 
# Sharpedo 
# Wailmer 
# Wailord 
# Numel 
# Camerupt 
# Torkoal 
# Spoink 
# Grumpig 
# Spinda 
# Trapinch 
# Vibrava 
# Flygon 
# Cacnea 
# Cacturne 
# Swablu 
# Altaria 
# Zangoose 
# Seviper 
# Lunatone 
# Solrock 
# Barboach 
# Whiscash 
# Corphish 
# Crawdaunt 
# Baltoy 
# Claydol 
# Lileep 
# Cradily 
# Anorith 
# Armaldo 
# Feebas 
# Milotic 
# Castform 
# Castform 
# Castform 
# Castform 
# Kecleon 
# Shuppet 
# Banette 
# Duskull 
# Dusclops 
# Tropius 
# Chimecho 
# Absol 
# Wynaut 
# Snorunt 
# Glalie 
# Spheal 
# Sealeo 
# Walrein 
# Clamperl 
# Huntail 
# Gorebyss 
# Relicanth 
# Luvdisc 
# Bagon 
# Shelgon 
# Salamence 
# Beldum 
# Metang 
# Metagross 
# Regirock 
# Regice 
# Registeel 
# Latias 
# Latios 
# Kyogre 
# Groudon 
# Rayquaza 
# Jirachi 
# Deoxys 
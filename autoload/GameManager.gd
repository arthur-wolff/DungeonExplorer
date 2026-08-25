extends Node

var player: Character = null

var current_world:String = ""
var current_dungeon:String = ""

var game_state:String = "menu"

func start_new_game()-> void:
	print('Iniciando Novo Jogo...')
	
	game_state = "world"
	
	current_world = "world_1"
	current_dungeon = ""
	
	player = Character.new()
	
	player.character_name = "Heroi"
	player.stats = CharacterStats.new()
	
	player.stats.strength = 12
	player.stats.dexterity = 14
	player.stats.constitution = 12
	player.stats.intelligence = 10
	player.stats.wisdom = 10
	player.stats.charisma = 10

	player.max_health = 20
	player.health = player.max_health

	print("Personagem criado:")
	print(player.character_name)
	print(player.stats.get_all_stats())
	
func enter_dungeon(dungeon_id: String) -> void:
	current_dungeon = dungeon_id
	game_state = "dungeon"
	
func exit_dungeon()-> void:
	current_dungeon=""
	game_state="world"
	
	print("Saindo da Dungeon")

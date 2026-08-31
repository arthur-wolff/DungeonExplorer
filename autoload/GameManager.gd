extends Node

var player: Character

var current_world: String = ""
var current_dungeon:String = ""
var current_state: GameState

enum GameState {MENU, WORLD, DUNGEON, COMBATE}

func start_new_game () -> void:
	print("New Game started")
	current_dungeon = ""
	current_world = "world_1"
	current_state = GameState.WORLD
	SceneManager.go_to_world()
	create_player()

func enter_dungeon (dungeon_id: String) -> void:
	current_dungeon = dungeon_id
	current_state = GameState.DUNGEON
	
	print("Entering in dungeon: ", dungeon_id)

func exit_dungeon () -> void:
	current_dungeon = ""
	current_state = GameState.WORLD
	SceneManager.go_to_world()
	print("Exiting Dungeon")

func create_player() -> void:
	player = Character.new()
	
	player.character_name = "Heroi"
	player.stats = CharacterStats.new()
	
	player.stats.str = 12
	player.stats.dex = 14
	player.stats.con = 16
	player.stats.intl= 12
	player.stats.wis = 10
	player.stats.car = 15
	
	
	
	player.max_hp = 100
	player.hp = 100
	
	player.max_mp = 20
	player.mp = 20
	
	print_player()

func print_player() -> void:
	print("")
	print("=================Personagem=============")
	
	print("Nome: ", player.character_name)
	print("Level: ", player.level)
	print("HP: ", player.hp, "/", player.max_hp)
	print("MP: ", player.mp, "/", player.max_mp)
	
	var mods:Array = player.gets_mods()
	
	print("")
	print("Atributos:")
	print("Str: ", player.stats.str," ", mods[0] )
	print("Dex: ", player.stats.dex, " ", mods[1])
	print("Con: ", player.stats.con, " ", mods[2])
	print("Int: ", player.stats.intl, " ", mods[3])
	print("Wis: ", player.stats.wis, " ", mods[4])
	print("Car: ", player.stats.car, " ", mods[5])
	
	
	

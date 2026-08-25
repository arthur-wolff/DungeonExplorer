extends Node

var player = null

var current_world: String = ""
var current_dungeon:String = ""

var game_state: String = "menu"

func start_new_game () -> void:
	print("New Game started")
	game_state = "world"
	current_dungeon = ""
	current_world = "world_1"

func enter_dungeon (dungeon_id: String) -> void:
	current_dungeon = dungeon_id
	game_state = "dungeon"
	
	print("Entering in dungeon: ", dungeon_id)

func exit_dungeon () -> void:
	current_dungeon = ""
	game_state = "world"
	
	print("Exiting Dungeon")

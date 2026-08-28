extends Node

func _ready() -> void:
	print("Dungeon Explorer")
	GameManager.start_new_game()
	SceneManager.go_to_world()

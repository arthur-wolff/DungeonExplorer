extends Node

func change_scene(scene_path: String) -> void:
	if not ResourceLoader.exists(scene_path):
		push_error("404: " + scene_path)
		return
	
	get_tree().change_scene_to_file(scene_path)

func go_to_world()->void:
	change_scene("res://scenes/world/World.tscn")

func go_to_dungeon()->void:
	change_scene("res://scenes/dungeon/")

func go_to_combat()->void:
	change_scene("res://scenes/combat/")

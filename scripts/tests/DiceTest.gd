extends Node

func _ready() -> void:
	var dice = preload("res://scripts/dice/DiceSystem.gd").new()
	
	
	
	print("Dado: ", dice.roll("1d6-2"))

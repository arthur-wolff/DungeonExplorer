extends Node

func _ready() -> void:
	var dice = preload("res://scripts/dice/DiceSystem.gd").new()
	
	print($VBoxContainer/LineEdit.text)
	
	print(dice.roll($VBoxContainer/LineEdit.text))

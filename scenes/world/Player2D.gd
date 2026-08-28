class_name Player2D
extends CharacterBody2D

@export var speed : float = 300

var character: Character

func _ready() -> void:
	
	character = GameManager.player
	
	if character == null:
		push_error("Player 2D nao encontrou o personagem")
		return
		
	print("Player 2D conectado a ", character.character_name)

func _physics_process(delta: float) -> void:
	
	var direction := Input.get_vector(
		"move_left",
		"move_rigth",
		"move_up",
		"move_down"
	)
	print(position)
	
	velocity = direction *  speed
	move_and_slide()
	
	print(position)

class_name Character

extends Resource

@export_category("Indentidade")

@export var character_name: String = "Personagem"

@export_category("Progressão")

@export var level: int = 1
@export var exp: int = 0

@export_category("Atributos")
@export var stats: CharacterStats

@export_category("Recursos")
@export var max_hp: int =10
@export var hp: int = 10
@export var max_mp : int =10
@export var mp: int = 10

func is_alive()->bool:
	return hp>0

func take_damage(amount: int) -> void:
	hp -= amount
	if hp <0 :
		hp = 0

func heal(amount: int)-> void:
	hp += amount
	if hp > max_hp:
		hp = max_hp

func gain_exp(amount: int) -> void: 
	exp += amount
	
func gets_mods() -> Array:
	return[stats.get_str_mod(), stats.get_dex_mod(), stats.get_con_mod(), 
	stats.get_intl_mod(), stats.get_wis_mod(), stats.get_car_mod()]
	
